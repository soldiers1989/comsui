define(function(require,exports,module){var t=global_config.root,e=Backbone.Model.extend({actions:{writeoff:function(e){return t+"/voucher/business/hexiao/"+e},singleWriteoff:function(e){return t+"/voucher/business/detail/hexiao/"+e},invalid:function(e){return t+"/voucher/business/invalid/"+e},activePaymentInvalid:function(e){return t+"/voucher/active/invalid/"+e},updateActiveVoucherComment:function(e){return t+"/voucher/active/detail/update-comment/"+e},matchCashFlow:function(e){return t+"/voucher/business/detail/match-cash-flow/"+e},connectionCashFlow:function(e){return t+"/voucher/business/detail/connection-cash-flow/"+e}},getUniqueId:function(){var t=this.get("detailId"),e=this.get("voucherId");return t?t:e},invalid:function(){var t=this,e=this.getUniqueId(),i={url:this.actions.invalid(e),dataType:"json"};i.success=function(e){t.trigger("model:invalid",e,t)},$.ajax(i)},writeoff:function(){var t=this,e=this.getUniqueId(),i={url:this.actions.writeoff(e),dataType:"json"};i.success=function(e){t.trigger("model:writeoff",e,t)},$.ajax(i)},singleWriteoff:function(t){var e=this,i={url:this.actions.singleWriteoff(t),dataType:"json"};i.success=function(t){e.trigger("model:singlewriteoff",t,e)},$.ajax(i)},activePaymentInvalid:function(){var t=this,e=this.getUniqueId(),i={url:this.actions.activePaymentInvalid(e),dataType:"json"};i.success=function(e){t.trigger("model:activePaymentInvalid",e,t)},$.ajax(i)},updateActiveVoucherComment:function(t){var e=this,i=this.getUniqueId(),n={url:this.actions.updateActiveVoucherComment(i),dataType:"json",data:{comment:t}};n.success=function(t){e.trigger("model:updateActiveVoucherComment",t,e)},$.ajax(n)},matchCashFlow:function(){var t=this,e=this.getUniqueId(),i={url:this.actions.matchCashFlow(e),dataType:"json"};i.success=function(e){t.trigger("model:matchCashFlow",e,t)},$.ajax(i)},connectionCashFlow:function(t){var e=this,i=this.getUniqueId(),n={url:this.actions.connectionCashFlow(i),dataType:"json",data:{cashFlowUuid:t}};n.success=function(t){e.trigger("model:connectionCashFlow",t,e)},$.ajax(n)}});exports.VoucherModel=e});