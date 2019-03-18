/**
 * Copyright (c) predamo 2017 All Rights Reserved.
 */
package ${namespaceReadPackage};

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
public interface ${daoReadName} {
 
 	<#list columns as column>
 		<#if keyColumn?? && column.dbColumn == keyColumn><#assign keyJavaType=column.colJavaType keyField=column.beanField></#if>
 	</#list>
 	<#if keyColumn??>
 	/**
     * 查询数据。
     * @param ${keyField}
     * @return ${entityName}
     */
	${entityName} get${entityName}(${keyJavaType} ${keyField});
 	</#if>
}