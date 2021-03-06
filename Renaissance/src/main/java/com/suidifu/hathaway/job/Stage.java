/**
 * 
 */
package com.suidifu.hathaway.job;

import java.util.Date;

import com.demo2do.core.utils.DateUtils;

/**
 * @author wukai
 *
 */
public class Stage {
	
	private String uuid;
	
	private String jobUuid;
	
	private int chunkSize;
	
	private String beanName;
	
	private String methodName;
	
	private Step level;
	
	private int retryTimes;
	
	private ExecutingStatus executingStatus;
	
	private ExecutingResult executingResult;
	
	private Date createTime;
	
	private Date lastModifiedTime;
	
	private Date currentTaskExpiredTime;
	
	private int priority;
	
	public Stage() {
		super();
	}

	public Stage(String uuid, String jobUuid, Step level, int retryTimes,
			ExecutingStatus executingStatus, ExecutingResult executingResult,
			Date createTime, Date lastModifiedTime, Date currentTaskExpiredTime, String beanName, String methodName, int chunkSize, int priority) {
		super();
		this.uuid = uuid;
		this.jobUuid = jobUuid;
		this.level = level;
		this.retryTimes = retryTimes;
		this.executingStatus = executingStatus;
		this.executingResult = executingResult;
		this.createTime = createTime;
		this.lastModifiedTime = lastModifiedTime;
		this.currentTaskExpiredTime = currentTaskExpiredTime;
		
		this.beanName = beanName;
		this.methodName = methodName;
		this.chunkSize = chunkSize;
		this.priority = priority;
				
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getJobUuid() {
		return jobUuid;
	}

	public void setJobUuid(String jobUuid) {
		this.jobUuid = jobUuid;
	}

	public Step getLevel() {
		return level;
	}

	public void setLevel(Step level) {
		this.level = level;
	}

	public int getLeftRetryTimes() {
		return retryTimes;
	}

	public void setRetryTimes(int retryTimes) {
		this.retryTimes = retryTimes;
	}

	public ExecutingStatus getExecutingStatus() {
		return executingStatus;
	}

	public void setExecutingStatus(ExecutingStatus executingStatus) {
		this.executingStatus = executingStatus;
	}

	public ExecutingResult getExecutingResult() {
		return executingResult;
	}

	public void setExecutingResult(ExecutingResult executingResult) {
		this.executingResult = executingResult;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastModifiedTime() {
		return lastModifiedTime;
	}

	public void setLastModifiedTime(Date lastModifiedTime) {
		this.lastModifiedTime = lastModifiedTime;
	}

	public Date getCurrentTaskExpiredTime() {
		return currentTaskExpiredTime;
	}

	public void setCurrentTaskExpiredTime(Date currentTaskExpiredTime) {
		this.currentTaskExpiredTime = currentTaskExpiredTime;
	}

	public int getChunkSize() {
		return chunkSize;
	}

	public void setChunkSize(int chunkSize) {
		this.chunkSize = chunkSize;
	}

	public String getBeanName() {
		return beanName;
	}

	public void setBeanName(String beanName) {
		this.beanName = beanName;
	}

	public String getMethodName() {
		return methodName;
	}

	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}
	public boolean hasTaskTimeout(boolean isAllTaskDone){
		
		if(isAllTaskDone){
			return false;
		}
		return DateUtils.compareTwoDatesOnDay(new Date(), this.getCurrentTaskExpiredTime()) > 0;
	}

	public int getPriority() {
		return priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}
}