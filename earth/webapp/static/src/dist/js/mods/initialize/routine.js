define(function(require,exports,module){var t=window,e=document;require("scaffold/jquery.validate"),require("component/dragmove"),require("component/dashboard"),t.Gallery=require("component/gallery");var n=t.Pagination=require("component/pagination"),o=require("scaffold/util").validateUtil;n.find(".sys-log",this.el),$(e).on("mouseenter",".upload-imgs .item",function(t){var e=$(t.currentTarget);e.append('<span class="delete"></span>')}).on("mouseleave",".upload-imgs .item",function(t){var e=$(t.currentTarget);e.find(".delete").remove()}).on("click",".upload-imgs .delete, .upload-files .delete",function(t){t.preventDefault();var n=$(t.currentTarget);n.is(".disabled")||(n.parent().remove(),$(e).trigger("delete.fileitem",n))}),$(e).on("mouseover",".create-leasing",function(t){$(".extend-btns").show()}).on("mouseleave",".dropbtns",function(t){$(".extend-btns").hide()}),$(document).ajaxStart(function(t){var e=t.target.activeElement;$(e).is("[data-loading-text]")&&(document.__loadingBtn__=e,$(e).button("loading"))}).ajaxComplete(function(){var t=document.__loadingBtn__;$(t).button("reset")}),function(t,e){var n=o.regExps;t.addMethod("mobile",function(t,e){return this.optional(e)||n.mobile.test(t)},"请输入合法手机号"),t.addMethod("phoneExt",function(t,e){return this.optional(e)||n.phoneExt.test(t)},"请输入合法固话或分机号"),t.addMethod("mPhoneExt",function(t,e){return this.optional(e)||n.phoneExt.test(t)||n.mobile.test(t)},"请输入正确的联系方式"),t.addMethod("positiveInteger",function(t,e){return this.optional(e)||n.positiveInteger.test(t)},"请输入正整数"),t.addMethod("positiveNumber",function(t,e){return this.optional(e)||+t>0},"请输入正数"),t.addMethod("chineseCharactor",function(t,e){return this.optional(e)||n.chineseCharactor.test(t)},"请输入汉字字符"),t.addMethod("excludeChineseCharactor",function(t,e){return this.optional(e)||!n.chineseCharactor.test(t)},"不能包含汉字字符"),t.addMethod("numberAndAlphabet",function(t,e){return this.optional(e)||n.numberAndAlphabet.test(t)},"只支持英文字母和数字"),t.addMethod("IDCard",function(t,e){return this.optional(e)||o.isIDCardValid(t)},"请输入正确的身份证号"),t.addMethod("nonNegativeNumber",function(t,e){return this.optional(e)||+t>=0},"请输入非负数"),t.addMethod("nonNegativeInteger",function(t,e){return this.optional(e)||n.nonNegativeInteger.test(t)>0},"请输入非负正数"),t.addMethod("money",function(t,e){return this.optional(e)||n.money.test(t)>0},"请输入合法的金额"),t.addMethod("maxDate",function(t,e,n){var o=new Date(t),a=new Date(n);return this.optional(e)||o<=a},jQuery.validator.format("不能大于 {0}")),t.addMethod("minDate",function(t,e,n){var o=new Date(t),a=new Date(n);return this.optional(e)||o<=a},jQuery.validator.format("不能小于 {0}")),t.addMethod("minRelatedElement",function(t,n,o){if(this.optional(n))return!0;var a="string"==typeof o?e(o):o,i=a.val();return!t||!i||+t<=+i},"不得大于关联元素的值"),t.addMethod("maxRelatedElement",function(t,n,o){if(this.optional(n))return!0;var a="string"==typeof o?e(o):o,i=a.val();return!t||!i||+t>=+i},"不得小于关联元素的值")}(jQuery.validator,jQuery),function(t){t.AuditStatus={CREATE:"待对账",ISSUING:"异常",ISSUED:"成功",CLOSE:"已取消"},t.VoucherStatus={CREATED:"已建",ISSUED:"已制证",LAPSE:"凭证作废"},t.SettleStatus={UNPAID:"未支付",OUTSTANDING:"未付清",PAID:"已付清",EXCESS:"已超额"},t.SettlementModesStatus={LETTER_OF_CREDIT:"信用",LETTER_OF_GUARANTEE:"保函",COLLECTION:"托收",REMITTANCE:"汇付",POINT_OF_SALE:"POS",ELECTRONIC_PAYMENT:"电子支付",ACCEPTANCE:"承兑汇票",CHEQUE:"支票",PROMISSORY_NOTE:"本票",OFF_SHEET:"表外",DEPOSITE_RECEIVED:"预收款"}}(t.DebitCashFlowConst={}),function(t){t.PropertyStatus={0:"下游待租",1:"下游已租",2:"施工维护",3:"上游清退"},t.Orientation={0:"朝东",1:"朝南",2:"朝西",3:"朝北",4:"南北通透"},t.CredentialsType={0:"身份证",1:"护照",2:"港澳通行证",3:"警官证",4:"台胞证"}}(t.PropertyConst={}),function(t){t.RepaymentAuditStatus={CREATE:"待对账",ISSUING:"部分对账",ISSUED:"对账成功",CLOSE:"对账失败"},t.RepaymentStatus={CREATE:"待回款",APPLYING:"申请回款",ISSUING:"回款中",SUCCESS:"回款成功",FAILED:"回款失败"},t.ContractPaymentType={NOT_PAY:"0",NEED_PAY:"1"}}(t.BillConst={}),function(t){t.PaymentStatus={NOTDUE:"待收",OVERDUE:"欠收",CLEAR:"已收"}}(t.LeasingConst={})});