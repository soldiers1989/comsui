define(function(require,exports,module){var e=require("component/pagination"),o=require("./voucher-model").VoucherModel,t=require("component/popupTip"),i=(require("baseView/baseFormView").FormDialogView,require("component/fileUpload"),Backbone.View.extend({el:".content",events:{"click .edit-note":"onClickEditNote","click .save-note":"onClickSaveNote","click .invalid":"onClickInvalid","click .writeoff":"onClickWriteOff","click .voucherResource":"onClickVoucherResource"},initialize:function(o){this.initModel(o),e.find(".voucher-query-list",this.el)},initModel:function(e){this.voucherModel=new o({detailId:e,voucherId:e}),this.listenTo(this.voucherModel,"model:activePaymentInvalid",function(e){0==e.code?location.reload():t.show(e.message)}),this.listenTo(this.voucherModel,"model:updateActiveVoucherComment",function(e){0==e.code?location.reload():t.show(e.message)})},onClickEditNote:function(e){e.preventDefault();var o=$(".note-content");$(".note-input").val("无"==o.text()?"":o.text()),$(".note-show").toggleClass("hide"),$(".note-edit").toggleClass("hide")},onClickSaveNote:function(e){e.preventDefault();var o=$(".note-input").val();this.voucherModel.updateActiveVoucherComment(o)},onClickInvalid:function(e){e.preventDefault(),this.voucherModel.activePaymentInvalid()},onClickWriteOff:function(e){e.preventDefault()},onClickVoucherResource:function(e){}}));module.exports=i});