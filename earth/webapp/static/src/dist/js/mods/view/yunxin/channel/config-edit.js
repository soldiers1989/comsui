define(function(require,exports,module){var e=require("component/dialogView"),t=require("component/popupTip"),i=require("component/pagination"),a=require("component/tab").SegmentControlView,n=require("baseView/baseFormView"),o=require("component/fileUpload"),r=n.FormDialogView,l=n.BaseFormView,s=n.FieldsetView,c=Backbone.Model.extend({defaults:{creditChannelConfigure:{channelStatus:"NOTLINK",chargeExcutionMode:"",chargePerTranscation:"",chargeType:"",clearingInterval:"",side:"",trasncationLimitPerTransactionMin:"",trasncationLimitPerTransactionMax:"",chargeRateMode:"",chargeRatePerTranscation:"",upperChargeLimitPerTransaction:"",lowerestChargeLimitPerTransaction:"",bankLimitationFileKey:"",bankLimitationFileName:""},debitChannelConfigure:{channelStatus:"NOTLINK",chargeExcutionMode:"",chargePerTranscation:"",chargeType:"",clearingInterval:"",side:"",trasncationLimitPerTransaction:"",chargeRateMode:"",chargeRatePerTranscation:"",upperChargeLimitPerTransaction:"",lowerestChargeLimitPerTransaction:"",bankLimitationFileKey:"",bankLimitationFileName:""}},actions:{check:"./edit/check",save:function(){return"./"+this.get("paymentChannelUuid")+"/save"}},initialize:function(){this.actions.save=this.actions.save.bind(this)},setBaseInfo:function(e){this.set(e)},setDebit:function(e){this.set("debitChannelConfigure",e)},setCredit:function(e){this.set("creditChannelConfigure",e)},post:function(){var e=this,t={url:this.actions.save(),type:"post",dataType:"json",data:{}};t.data={paymentChannelUuid:this.get("paymentChannelUuid"),paymentChannelName:this.get("paymentChannelName"),data:JSON.stringify(this.toJSON())},t.success=function(t){e.trigger("sync",e,t)},$.ajax(t)},paymentChannelNameIsUnique:function(e){var t=!0,i={url:this.actions.check,data:{paymentChannelName:e,paymentChannelUuid:this.get("paymentChannelUuid")},async:!1,dataType:"json"};return i.success=function(e){t=0==e.code},$.ajax(i),t}}),h=s.extend({initialize:function(){this.defineValidator()},defineValidator:function(){var e=this;$.validator.addMethod("ajaxCheck",function(t,i){return this.optional(i)||e.model.paymentChannelNameIsUnique(t)}),this.validator=this.$("form").validate({onkeyup:!1,rules:{paymentChannelName:{required:!0,maxlength:50,ajaxCheck:!0},relatedFinancialContractName:"required",captitalAccountNameAndNo:"required"},messages:{paymentChannelName:{maxlength:"不能超过50个字符",ajaxCheck:"通道名称已存在"}}})},validate:function(){return this.validator.form()},save:function(){var e=this.extractDomData();this.model.setBaseInfo(e)}}),m=s.extend({events:{"change [name=chargeRateMode]":"onChangeChargeRateMode","change [name=channelStatus]":"render","click .quota-preview":"onClickQuotaPreview","click .upload-files .delete-files":"onClickDeleteFiles"},actions:{upload:function(){var e=["paymentInstitutionName="+this.paymentInstitutionOrdinal,"outlierChannelName="+this.outlierChannelName,"accountSide="+this.accountSide];return global_config.root+"/paymentchannel/file/upload?"+e.join("&")},deleteFile:global_config.root+"/paymentchannel/file/delete"},initialize:function(){this.paymentInstitutionOrdinal=$("[name=paymentInstitutionOrdinal]").val(),this.outlierChannelName=$("[name=outlierChannelName]").val(),this.defineValidator(),this.initFileUpload(),this.render()},onClickDeleteFiles:function(e){e.preventDefault();var i=$(e.target);if(!i.is(".disabled")){var a=this,n={type:"post",dataType:"json",url:a.actions.deleteFile,data:{paymentInstitutionName:a.paymentInstitutionOrdinal,outlierChannelName:a.outlierChannelName,accountSide:a.accountSide}};n.success=function(e){0==e.code?(i.parent().remove(),t.show("删除成功！")):t.show(e.message)},$.ajax(n)}},initFileUpload:function(){var e=this,t=function(t,i){var a=e.$(i.data("target"));a.html(t)};o.globalUploadFile(this.$(".file-input"),{action:this.actions.upload.call(this),fileFilter:[".xls",".xlsx"],onPlacement:t,createItemDom:function(e,t){var i='<li class="item" data-filename="'+e.fileName+'" data-filekey="'+e.fileKey+'"><span class="filename">'+e.fileName+'</span><a href="#" class="delete-files" style="margin-left:10px">删除</a></li>';return i}})},defineValidator:function(){this.validator=this.$("form").validate({groups:{chargeRateModeGroup:"chargeRateMode chargePerTranscation chargeRatePerTranscation lowerestChargeLimitPerTransaction upperChargeLimitPerTransaction"},rules:{channelStatus:"required",chargeRateMode:"required",chargePerTranscation:{nonNegativeNumber:!0},trasncationLimitPerTransaction:{positiveNumber:!0},trasncationLimitPerTransactionMin:{nonNegativeNumber:!0,minRelatedElement:$.proxy(function(){return this.$("[name=trasncationLimitPerTransactionMax]")},this)},trasncationLimitPerTransactionMax:{nonNegativeNumber:!0,maxRelatedElement:$.proxy(function(){return this.$("[name=trasncationLimitPerTransactionMin]")},this)},chargeExcutionMode:"required",clearingInterval:{required:!0,nonNegativeNumber:!0},chargeRatePerTranscation:{required:!0,positiveNumber:!0},lowerestChargeLimitPerTransaction:{positiveNumber:!0,minRelatedElement:$.proxy(function(){return this.$("[name=upperChargeLimitPerTransaction]")},this)},upperChargeLimitPerTransaction:{positiveNumber:!0,maxRelatedElement:$.proxy(function(){return this.$("[name=lowerestChargeLimitPerTransaction]")},this)}},messages:{lowerestChargeLimitPerTransaction:{minRelatedElement:"最高收取应大于最低收取"},upperChargeLimitPerTransaction:{maxRelatedElement:"最高收取应大于最低收取"},trasncationLimitPerTransactionMin:{minRelatedElement:"最高单笔限额应大于最低单笔限额"},trasncationLimitPerTransactionMax:{maxRelatedElement:"最高单笔限额应大于最低单笔限额"}},errorPlacement:function(e,t){var i=$(t).parent();i.is(".parcel-input")?i.parent().append(e):$(t).parent().append(e)}})},validate:function(){return this.validator.form()},extractDomData:function(){var e=this._extractDomData(this.$(".real-value"),!0),t=this.$(".upload-files .item");return e.bankLimitationFileKey=t.data("filekey"),e.bankLimitationFileName=t.data("filename"),e},onChangeChargeRateMode:function(e){if(e.target.value){var t=this.model.toJSON(),i=t[this.type+"ChannelConfigure"];i.chargeRateMode=e.target.value;var a=this.chargeRateModeTemplate(t);this.$(".charge-rate-mode").html(a)}},render:function(){var e=this.$("[name=channelStatus]").get(0),t=e.value;if("OFF"==t){this.$(".real-value").not(e).attr("disabled",!0),this.$(".upload-files .delete").hide();var i=this.$(".file-input").data("fileUploadPlugin");i&&i.setDisable(!0)}else{this.$(".real-value").not(e).attr("disabled",null),this.$(".upload-files .delete").show();var i=this.$(".file-input").data("fileUploadPlugin");i&&i.setDisable(!1)}},onClickQuotaPreview:function(e){e.preventDefault();var t=new Backbone.Model({paymentInstitutionOrdinal:this.paymentInstitutionOrdinal,outlierChannelName:this.outlierChannelName,accountSide:this.accountSide}),i=new p({model:t});i.show()}}),d=m.extend({type:"debit",chargeRateModeTemplate:_.template($(".fieldset-debit .charge-rate-mode").html()||""),accountSide:1,save:function(){var e=this.extractDomData();this.model.setDebit(e)}}),u=m.extend({type:"credit",chargeRateModeTemplate:_.template($(".fieldset-credit .charge-rate-mode").html()||""),accountSide:0,save:function(){var e=this.extractDomData();this.model.setCredit(e)}}),p=r.extend({el:$("#quotaPreview").get(0),limitSheetListTemplate:_.template($("#limitSheetListTmpl").html()),versionLogListTemplate:null,initialize:function(){p.__super__.initialize.apply(this,arguments),this.segmentControl=new a({el:this.$(".segment-control").get(0)});var e=this,t=i.extend({template:this.limitSheetListTemplate,collectParams:function(){return e.model.toJSON()}}),n=i.extend({template:this.versionLogListTemplate,collectParams:function(){return e.model.toJSON()}}),o=this.$(".segment-content-item");new t({el:o.get(0)}),new n({el:o.get(1)})},onClickLookup:function(){var e=this.segmentControl.getActive(),t=e.$content.data("pagination");t.query()}}),f=l.extend({el:".form-wrapper",template:_.template($(".form-wrapper .form").html()||""),initialize:function(e){f.__super__.initialize.apply(this,arguments),this.initModel(e),this.render(),this.initSubView()},render:function(){var e=this.model.toJSON(),t=this.template(e);this.$(".form").html(t).show()},initModel:function(e){var i=JSON.parse(this.$("[name=model]").val()||"{}");this.model=new c(i),"string"==typeof e&&this.model.set("paymentChannelUuid",e),this.listenTo(this.model,"sync",function(e,i){0!=i.code?t.show(i.message):this.confirm.show("提交成功是否前去切换通道？")})},initSubView:function(){this.baseinfoView=new h({model:this.model,el:this.$(".fieldset-baseinfo").get(0)}),this.deibtView=new d({model:this.model,el:this.$(".fieldset-debit").get(0)}),this.creditView=new u({model:this.model,el:this.$(".fieldset-credit").get(0)}),this.confirm=new e({cancelBtnTxt:"否",goaheadBtnTxt:"是"}),this.listenTo(this.confirm,"goahead",function(){location.href=global_config.root+"/v#/financial/channel/switch/detail/"+this.model.get("relatedFinancialContractUuid")}).listenTo(this.confirm,"closedialog",function(){location.href=global_config.root+"/v#/financial/channel/configure/list"})},validate:function(){var e=this.baseinfoView.validate(),t=this.deibtView.validate(),i=this.creditView.validate();return!!(e&&t&&i)||(this.trigger("invalid"),!1)},submitHandler:function(){this.validate()&&this.save()},save:function(){this.baseinfoView.save(),this.deibtView.save(),this.creditView.save(),this.model.post()}});module.exports=f});