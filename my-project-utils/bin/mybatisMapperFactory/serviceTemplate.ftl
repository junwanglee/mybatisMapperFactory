/**
 * Copyright (c) predamo 2017 All Rights Reserved.
 */
package ${servicePackage};

import ${entityPackage}.${entityName};

/**
 * 服务接口。
 * <p>历史变更：
 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
 *
 */
 
public interface ${serviceName} {

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
    ServiceResult<${entityName}> get${entityName}ById(${keyJavaType} ${keyField});
    
    
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
    ServiceResult<Integer> create${entityName}(${entityName} ${entityName?uncap_first});
     
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
    ServiceResult<Integer> update${entityName}(${entityName} ${entityName?uncap_first});
}