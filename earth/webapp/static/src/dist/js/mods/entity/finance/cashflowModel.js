define(function(require,exports,module){var t=global_config.root,i=Backbone.Model.extend({idAttribute:"cashFlowUid",urlRoot:"./list-billMatchResult",actions:{cancel:"./close-cashflow-audit",search:"./query-billingPlan",submit:"./voucher-change",mark:t+"/cashflow/journal/",log:"./show-cash-detail"},defaults:{cashFlowUid:"",app:{},log:{},markInfo:{},records:[]},initialize:function(){this.isShow=!1},parse:function(t){if(0==t.code){var i={records:t.data.billMatchResultList};return i}popupTip.show(t.message)},getAppId:function(){return this.get("app").appId},setMode:function(t){this.set("mode",t,{silent:!0})},toggle:function(t){this.isShow?this.foldIn(t):(this.setMode("CREATE"===this.get("auditStatus")?"seem":"match"),this.foldOut(t))},foldOut:function(t){t||(t={}),this.isShow=!0,t.silent||this.trigger("foldout"),this.fetch({data:{accountSide:this.get("accountSide")}},t)},foldIn:function(t){t||(t={}),this.isShow=!1,t.silent||this.trigger("foldin")},regulate:function(){this.setMode("seem"),this.foldOut()},cancel:function(){var t=this,i={url:this.actions.cancel,type:"post",dataType:"json",data:{cashFlowUuid:this.get("cashFlowUid"),accountSide:this.get("accountSide")}};i.success=function(i){0==i.code&&t.set("auditStatus","CLOSE"),t.trigger("cancel",i)},$.ajax(i)},searchBill:function(t){var i=this,a={url:this.actions.search,type:"get",dataType:"json"};a.data=$.extend({},{appId:this.getAppId(),accountSide:this.get("accountSide")},t),a.success=function(t){var a=null;0==t.code&&(a=t.data.billMatchResultList[0]),i.trigger("bill:search",a,t)},$.ajax(a)},existBill:function(t){var i=_.findWhere(this.get("records"),{billingPlanUuid:t});return!!i},addBill:function(t){var i=this.get("records");i.push(t),this.set("records",i),this.trigger("bill:add",$.extend({},t))},validateBill:function(t){var i=t.reduce(function(t,i){var a,e;return a="object"==typeof t?t.bookingAmount:t,e="object"==typeof i?i.bookingAmount:i,+a+ +e},0),a=this.get("amount"),e=i-a;return!(e>0)||(this.trigger("totalbookingAmount:invalid","对账金额不能大于流水金额",t),!1)},submitBill:function(t){for(var i=this,a=this.get("records"),e=[],s=0,o=t.length;s<o;s++){var n=_.findWhere(a,{billingPlanUuid:t[s].billingPlanUuid});n.bookingAmount=t[s].bookingAmount,e.push(n)}var l={url:this.actions.submit,type:"post",dataType:"json",data:{appId:this.getAppId(),billMatchResultList:JSON.stringify(e),cashFlowUuid:this.get("cashFlowUid"),accountSide:this.get("accountSide")}};l.success=function(t){0==t.code&&i.set("auditStatus",t.data.auditStatus),i.trigger("bill:submit",t)},$.ajax(l)},getMarkTypes:function(){var t=$("#chartOfAccount").val(),i=JSON.parse(t);return i},fetchMarkInfo:function(t){var i=this,a={url:this.actions.mark,type:"get",dataType:"json",data:{cashFlowUuid:this.get("cashFlowUid")}};a.success=function(a){0==a.code&&i.set("markInfo",a.data.cashFlowJournal,{silent:!0}),t&&t(a,i)},$.ajax(a)},saveMarkInfo:function(t,i){var a=this,e={url:this.actions.mark,type:"post",dataType:"json",data:{cashFlowUuid:this.get("cashFlowUid"),cashFlowJournal:t.journal,financialAccountName:t.financialAccountName,lapse:t.lapse}};e.success=function(e){0==e.code&&a.set("markInfo",t),i&&i(e,a)},$.ajax(e)},getLog:function(){var t=this.get("log"),i={CREATE:"待对账",ISSUING:"异常",ISSUED:"成功",CLOSE:"失败"};return"CREATE"===t.cashFlowDetail.auditStatus?t.cashFlowDetail.billTypeDesc="疑似":t.cashFlowDetail.billTypeDesc="匹配",t.cashFlowDetail.auditStatusDesc=i[t.cashFlowDetail.auditStatus],t},fetchLog:function(t){var i=this,a={url:this.actions.log,type:"get",dataType:"json",data:{cashFlowUuid:this.get("cashFlowUid"),accountSide:this.get("accountSide")}};a.success=function(a){0==a.code&&i.set("log",a.data,{silent:!0}),t&&t(a,i)},$.ajax(a)}}),a=Backbone.Collection.extend({model:i,initialize:function(){this.isAllShow=!1},toggle:function(t){this.isAllShow?this.foldIn(t):this.foldOut(t)},foldOut:function(t){t||(t={}),this.isAllShow=!0,this.forEach(function(i){i.setMode("CREATE"===i.get("auditStatus")?"seem":"match"),i.foldOut(t)}),t.silent||this.trigger("foldout:all")},foldIn:function(t){t||(t={}),this.isAllShow=!1,this.forEach(function(i){i.foldIn(t)}),t.silent||this.trigger("foldin:all")},reset:function(){this.isAllShow=!1,a.__super__.reset.apply(this,arguments)},getMarkTypes:function(){var t=new i;return t.getMarkTypes()}});exports.CashflowModel=i,exports.CashflowCollection=a});