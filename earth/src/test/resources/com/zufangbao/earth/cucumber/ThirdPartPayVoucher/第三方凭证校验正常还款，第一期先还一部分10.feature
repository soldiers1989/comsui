
@Prepayment10
Feature: 校验第三方凭证中有一期先还一部分钱是否能执行

Scenario Outline: 校验第三方凭证中有一期先还一部分钱是否能执行
Given 有一个放款计划，对应有三期还款计划ten
  And 有一期已经部分还钱,还款人去第三方机构还款，并且产生一个第三方凭证ten
  When 获取第三方交易机构的交易记录,第三方凭证和交易记录进行校验ten
Then 校验应该自动进行，检验是否能执行ten

Examples:
         |activeStatus              |executingStatus|
         |AssetSetActiveStatus.OPEN |ExecutingStatus.PROCESSING|