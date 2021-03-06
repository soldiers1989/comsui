<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

<fmt:setBundle basename="ApplicationMessage" />
<fmt:setLocale value="zh_CN" />

<%@ include file="/WEB-INF/include/meta.jsp"%>
<%@ include file="/WEB-INF/include/css-newlayout.jsp"%>
<title>线上代付单列表 - 五维金融金融管理平台</title>

</head>
<body>
	<%@ include file="/WEB-INF/include/header.jsp"%>
	<div class="web-g-main">
		<%@ include file="/WEB-INF/include/aside.jsp"%>
		<div class="content">
			<div class="scroller">
				<div class="lookup-params">
					<div class="inner clearfix">
						<span class="item">
							<select name="financialContractUuids" class="form-control real-value selectpicker" multiple data-actions-box="true" selectedTextFormat="static" data-title="信托合作项目">
								<c:forEach var="item" items="${financialContracts}">
									<option value="${item.financialContractUuid}">${item.contractName}(${item.contractNo})</option>
								</c:forEach>
							</select>
						</span>
						<span class="item">
							<select name="remittanceChannel" class="form-control real-value">
								<option value="-1">放款通道</option>
								<c:forEach var="item" items="${remittanceChannel}">
									<option value="${item.ordinal()}"><fmt:message key="${item.key}"/></option>
								</c:forEach>
							</select>
						</span>
						<span class="item beginend-datepicker">
							<jsp:include page="/WEB-INF/include/plugins/datetimepicker.jsp">
								<jsp:param value="group" name="type" />
								<jsp:param value="true" name="pickTime"/>
								<jsp:param value="statusModifyTimeStart" name="paramName1" />
								<jsp:param value="statusModifyTimeEnd" name="paramName2" />
								<jsp:param value="状态变更时间起始" name="placeHolder1" />
								<jsp:param value="状态变更时间终止" name="placeHolder2" />
								<jsp:param value="true" name="formatToMinimum" />
								<jsp:param value="true" name="formatToMaximum" />
							</jsp:include>
						</span>
						<span class="item">
							<select name="executionStatusAndTransactionRecipients" class="form-control real-value selectpicker"  multiple data-actions-box="true" title="代付状态">
								<c:forEach var='item' items='${executionStatus}' >
										<option value="${item.key}" selected>${item.value}</option>
								</c:forEach>
							</select>
						</span>
						<span class="item">
							<select name="reverseStatusOrdinals" class="form-control real-value selectpicker" multiple data-actions-box="true" selectedTextFormat="static" title="冲账状态">
								<c:forEach var="item" items="${reverseStatus}">
									<option value="${item.ordinal()}" selected ><fmt:message key='${item.key}'/></option>
								</c:forEach>
							</select>
						</span>
						<span class="item vertical-line"></span>
						<span class="item">
							<select class="form-control real-value select-key-word" name="selectKeyWord" autoquery="false">
								<option value="execLogUuid">代付单号</option>
								<option value="planUuid">放款编号</option>
								<option value="payerAccountHolder">付款方账户名</option>
								<option value="cpBankAccountHolder">收款方账户名</option>
							</select>
							<input type="text" name="keyWords" class="form-control real-value input-key-words" placeholder="请输入关键字..." >
						</span>
						<span class="item">
							<button id="lookup" class="btn btn-primary">
								查询
							</button>
						</span>
					</div>
				</div>	
				<div class="table-area">
					<table class="data-list" data-action="${ctx}/capital/plan/execlog/query" data-autoload="true">
						<thead>
							<tr>
								<th width="15%">代付单号</th>
								<th width="15%">放款编号</th>
								<th>付款方账户名</th>
								<th>收款方账户名</th>
								<th>
									<a data-paramname="plannedAmount" class="sort none">
										放款金额<i class="icon"></i>
									</a>
								</th>
								<th>放款通道</th>
								<th>
									<a data-paramname="lastModifiedTime" class="sort none">
										状态变更时间<i class="icon"></i>
									</a>
								</th>
								<th>
									<!-- <a data-paramname="executedTimeOff" class="sort none">
										执行时差<i class="icon"></i>
									</a> -->
									执行时差
								</th>
								<th>代付状态</th>
								<th>冲账状态</th>
								<th>备注</th>
							</tr>
						</thead>
						<tbody>
							<script type="script/template" id="tableFieldTmpl">
								{% _.each(list,function(item,index){  %}
									<tr>
										<td><a href="${ctx}/capital/plan/execlog/details/{%= item.execReqNo%}">{%= item.execReqNo%}</a></td>
										<td>
											<a href="${ctx}/v#/data/remittance/plan/{%= item.remittancePlanUuid %}/detail">{%= item.remittancePlanUuid %}</a>
										</td>
										<td>
											<span 	class="showPopover"
													data-container="body"
													data-placement="top"
													data-html="true"
													data-trigger="focus" 
													data-toggle="popover">
													{%= item.pgAccountInfo.accountName%}
											</span>
											{% if(!_.isEmpty(item.pgAccountInfo.accountName)){ %}
												<i class="icon icon-bankcard"
													data-container="body"
													data-placement="top"
													data-html="true"
													data-trigger="focus" 
													data-toggle="popover"
													>
												</i>
												<div class="hide account">
													<div>
														<span class='text-muted'>账户名:</span>{%= item.pgAccountInfo.accountName%}
														<br/>
														<span class='text-muted'>账户号:</span>{%= item.pgAccountInfo.accountNo%}
														<br/>
														<span class='text-muted'>开户行:</span>{%= item.pgAccountInfo.bankName%}
														<br/>
														<span class='text-muted'>所在地:</span>{%= item.pgAccountInfo.province%}&nbsp;{%= item.pgAccountInfo.city%}
														<br/>
														<span class='text-muted'>证件号:</span>{%= item.pgAccountInfo.idNumber%}
														<br/>
													</div>
												</div>
											{% } %}
										</td>
										<td>
											<span 	class="showPopover"
													data-container="body"
													data-placement="top"
													data-html="true"
													data-trigger="focus" 
													data-toggle="popover">
													{%= item.cpAccountInfo.accountName%}
											</span>
											{% if(!_.isEmpty(item.cpAccountInfo.accountName)){ %}
												<i class="icon icon-bankcard"
													data-container="body"
													data-placement="top"
													data-html="true"
													data-trigger="focus" 
													data-toggle="popover"
													>
												</i>
												<div class="hide account">
													<div>
														<span class='text-muted'>账户名:</span>{%= item.cpAccountInfo.accountName%}
														<br/>
														<span class='text-muted'>账户号:</span>{%= item.cpAccountInfo.accountNo%}
														<br/>
														<span class='text-muted'>开户行:</span>{%= item.cpAccountInfo.bankName%}
														<br/>
														<span class='text-muted'>所在地:</span>{%= item.cpAccountInfo.province%}&nbsp;{%= item.cpAccountInfo.city%}
														<br/>
														<span class='text-muted'>证件号:</span>{%= item.cpAccountInfo.idNumber%}
														<br/>
													</div>
												</div>
											{% } %}
										</td>
										<td>{%= (+item.plannedAmount).formatMoney(2,'')%}</td>
										<td>{%= item.remittanceChannel%}</td>
										<td>{%= new Date(item.lastModifiedTime).format('yyyy-MM-dd HH:mm:ss')%}</td>
										<td>{%= item.executedTimeOff%}</td>
										<td>
											{% if(item.executionStatus =='异常'){ %}
												<span class="color-warning">{%= item.executionStatus%}</span>
											{%	}else if(item.executionStatus == '失败'){ %}
												<span class="color-danger">{%= item.executionStatus%}</span>
											{%  }else{  %}		
												{%= item.executionStatus%}
											{%  }  %}
										</td>
										<td>
											{% if(item.reverseStatus =='未冲账'){ %}
													<span class="color-danger">未冲账</span>
											{%	} else { %}
													{%= item.reverseStatus%}
											{%  } %}
										</td>
										<td>{%= item.executionRemark%}</td>
									</tr>
								{% }); %}
							</script>
						</tbody>
					</table>
				</div>				
			</div>

			<div class="operations">
				<div class="lookup-params pull-left" style="background-image: none; border: none; padding: 0;">
					<form id="myForm">
						<span class="item"> 对账单导出： </span>
						<span class="item beginend-datepicker">
							<jsp:include page="/WEB-INF/include/plugins/datetimepicker.jsp">
								<jsp:param value="group" name="type" />
								<jsp:param value="startDate" name="paramName1" />
								<jsp:param value="endDate" name="paramName2" />
								<jsp:param value="起始时间" name="placeHolder1" />
								<jsp:param value="终止时间" name="placeHolder2" />
								<jsp:param value="true" name="pickTime"/>
								<jsp:param value="true" name="formatToMinimum" />
								<jsp:param value="true" name="formatToMaximum" />
							</jsp:include>
						</span>
						<i class="icon icon-help" data-title="包含起始时间点及终止时间点,时间跨度最长为7*24小时整."></i>
						<span class="item">
							<label>信托合同：</label>
							<select name="financialContractUuid" class="form-control">
								<c:forEach var="item" items="${financialContracts}">
									<option value="${item.financialContractUuid }"
										${item.financialContractUuid eq financialContracts[0].financialContractUuid ? 'selected' : ''}>${item.contractName}</option>
								</c:forEach>
							</select>
						</span>
						<span class="item">
							<button id="exportData" class="btn btn-primary">导出对账单</button>
						</span>
					</form>
				</div>

                <div class="rt pull-right page-control advanced" data-page_record_num="${param.pageRecordNum}">
            		<div class="inner">
            			<a class="statistical-amount" 
	                      href="javascript: void 0;" 
	                      style="margin-right: 10px;color:#436ba7"
	                      data-container="body"
	                      data-placement="top"
	                      data-html="true"
	                      data-trigger="click"
	                      data-toggle="popover"
	                      >统计金额</a>
            			共
            			<a 
            				href="javascript: void 0;" 
            				class="total pagecontrol-show-popover"
            				data-container="body"
            				data-placement="top"
            				data-html="true"
            				data-trigger="click"
	                      	data-toggle="popover"></a>
            			条
	                    <span class="nav">
	                    	<a href="javascript: void 0;" class="first-page">首页</a>
	                    	<a href="javascript: void 0;" class="prev">&lt; 上一页</a>
	                    	<span class="tip">1/页</span>
	                    	<a href="javascript: void 0;" class="next">下一页 &gt;</a>
	                    	<a href="javascript: void 0;" class="last-page">尾页</a>
	                    </span>
	                    <span class="popup-redirect-form">跳转</span>
	                </div>
		            <div class="redirect-form hide">
		                跳转至<input type="text" class="form-control page-index" name="" id="">页
		                <button class="btn btn-defalut redirect">确定</button>
		            </div>
                </div>
			</div>	
		</div>
	</div>
	<%@ include file="/WEB-INF/include/script-newlayout.jsp"%>
</body>
</html>
