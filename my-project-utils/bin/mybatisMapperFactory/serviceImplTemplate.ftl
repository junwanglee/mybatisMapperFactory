/**
 * Copyright (c) predamo 2017 All Rights Reserved.
 */
package ${servicePackage}.impl;

import org.slf4j.Logger;
import com.lzyl.common.ApplicationConstants;
import ${modelPackage}.${modelName};
import ${servicePackage}.${serviceName};
import ${entityPackage}.${entityName};

/**
 * 服务实现。
 * <p>历史变更：
 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
 *
 */

@Service(value = "${serviceName?uncap_first}")
public class ${serviceName}Impl implements ${serviceName} {
	private static Logger log = LoggerFactory.getLogger(${serviceName}Impl.class);
	
	@Resource
	private ${modelName} ${modelName?uncap_first};
    
    <#list columns as column>
 		<#if keyColumn?? && column.dbColumn == keyColumn><#assign keyJavaType=column.colJavaType keyField=column.beanField></#if>
 	</#list>
 	
    /**
     * 根据id取得<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>
	 * <p>历史变更：
	 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
	 * </p>
     * @param  ${keyField}
     * @return ServiceResult<${entityName}>
     * @author ${author}
     * @see ${servicePackage}.${serviceName}#get${entityName}ById(${keyJavaType})
     */
    @Override
    public ServiceResult<${entityName}> get${entityName}ById(${keyJavaType} ${keyField}) {
        ServiceResult<${entityName}> serviceResult = new ServiceResult<${entityName}>();
        try {
        	Assert.notNull(${modelName?uncap_first}, "Property '${modelName?uncap_first}' is required.");
        	Assert.hasText(${keyField}, "Parameter '${keyField}' must not be null");
            serviceResult.setResult(${modelName?uncap_first}.get${entityName}ById(${keyField}));
        } catch (BusinessException e) {
            serviceResult.setError(e.getCode(),e.getMessage());
        } catch (Exception e) {
        	serviceResult.setError(ApplicationConstants.SERVICE_RESULT_CODE_SYSERROR, ApplicationConstants.SERVICE_RESULT_EXCEPTION_SYSERROR);
            log.error("[][${serviceName}Impl][get${entityName}ById]根据id获取<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>时出现未知异常。"
            		 + "参数信息如下：［${keyField}："+${keyField} + "］" + e);
        }
        return serviceResult;
    }
    
    /**
     * 保存<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>
	 * <p>历史变更：
	 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
	 * </p>
     * @param  ${entityName?uncap_first}
     * @return ServiceResult<Integer>
     * @author ${author}
     * @see ${servicePackage}.${serviceName}#create${entityName}(${entityName})
     */
    @Override
    public ServiceResult<Integer> create${entityName}(${entityName} ${entityName?uncap_first}) {
     	ServiceResult<Integer> serviceResult = new ServiceResult<Integer>();
        try {
        	Assert.notNull(${modelName?uncap_first}, "Property '${modelName?uncap_first}' is required.");
            serviceResult.setResult(${modelName?uncap_first}.create${entityName}(${entityName?uncap_first}));
        } catch (ArgumentException ae) {
            serviceResult.setSuccess(false);
            serviceResult.setMessage(ae.getMessage());
        } catch (BusinessException e) {
            serviceResult.setError(e.getCode(),e.getMessage());
        } catch (Exception e) {
        	serviceResult.setError(ApplicationConstants.SERVICE_RESULT_CODE_SYSERROR, ApplicationConstants.SERVICE_RESULT_EXCEPTION_SYSERROR);
        	log.error("[][${serviceName}Impl][create${entityName}]保存<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>时出现未知异常。"
            		 + "参数信息如下：［${entityName?uncap_first}："+JsonUtil.toJson(${entityName?uncap_first}) + "］" + e);
        }
        return serviceResult;
    }
     
    /**
     * 更新<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>
     * <p>历史变更：
	 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
	 * </p>
     * @param  ${entityName?uncap_first}
     * @return ServiceResult<Integer>
     * @author ${author}
     * @see ${servicePackage}.${serviceName}#update${entityName}(${entityName})
     */
    @Override
    public ServiceResult<Integer> update${entityName}(${entityName} ${entityName?uncap_first}) {
     	ServiceResult<Integer> serviceResult = new ServiceResult<Integer>();
        try {
        	Assert.notNull(${modelName?uncap_first}, "Property '${modelName?uncap_first}' is required.");
            serviceResult.setResult(${modelName?uncap_first}.update${entityName}(${entityName?uncap_first}));
        } catch (ArgumentException ae) {
            serviceResult.setSuccess(false);
            serviceResult.setMessage(ae.getMessage());
        } catch (BusinessException e) {
            serviceResult.setError(e.getCode(),e.getMessage());
        } catch (Exception e) {
        	serviceResult.setError(ApplicationConstants.SERVICE_RESULT_CODE_SYSERROR, ApplicationConstants.SERVICE_RESULT_EXCEPTION_SYSERROR);
            log.error("[][${serviceName}Impl][update${entityName}]更新<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>时出现未知异常。"
            		 + "参数信息如下：［${entityName?uncap_first}："+JsonUtil.toJson(${entityName?uncap_first}) + "］" + e);
        }
        return serviceResult;
     }
}