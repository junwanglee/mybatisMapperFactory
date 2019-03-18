/**
 * Copyright (c) predamo 2017 All Rights Reserved.
 */
package ${namespaceWritePackage};

import ${entityPackage}.${entityName};

/**
 * 数据访问接口。
 * 
 * <p>历史变更：
 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
 * </p>
 *
 */

@Repository
public interface ${daoWriteName} {
 
 	<#list columns as column>
 		<#if keyColumn?? && column.dbColumn == keyColumn><#assign keyJavaType=column.colJavaType keyField=column.beanField></#if>
 	</#list>
 	<#if keyColumn??>
 	
	
	/**
     * 新增数据。
     * @param ${entityName?uncap_first}
     * @return Integer
     */
	Integer create${entityName}(${entityName} ${entityName?uncap_first});
	
	/**
     * 修改数据。
     * @param ${entityName?uncap_first}
     * @return Integer
     */
	Integer update${entityName}(${entityName} ${entityName?uncap_first});
 	</#if>
}