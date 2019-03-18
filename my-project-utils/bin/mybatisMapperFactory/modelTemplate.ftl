/**
 * Copyright (c) predamo 2017 All Rights Reserved.
 */
package ${modelPackage};

import ${namespaceReadPackage}.${daoReadName};
import ${namespaceWritePackage}.${daoWriteName};
import ${entityPackage}.${entityName};
import com.pdm.common.util.StringUtil;

/**
 * 业务逻辑。
 * <p>历史变更：
 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
 * </p>
 */
 
@Component
public class ${modelName} {

	@Resource
    private ${daoReadName} ${daoReadName?uncap_first};
	@Resource
    private ${daoWriteName} ${daoWriteName?uncap_first};
    
    <#list columns as column>
 		<#if keyColumn?? && column.dbColumn == keyColumn><#assign keyJavaType=column.colJavaType keyField=column.beanField></#if>
 	</#list>
 	
    /**
     * 根据id取得<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>
	 * <p>历史变更：
	 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
	 * </p>
     * @author ${author}
     * @param  ${keyField}
     * @return ${entityName}
     * 
     */
    public ${entityName} get${entityName}ById(${keyJavaType} ${keyField}) {
    	return ${daoReadName?uncap_first}.get${entityName}(${keyField});
    }
    
    /**
     * 保存<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>
	 * <p>历史变更：
	 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
	 * </p>
     * @author ${author}
     * @param  ${entityName?uncap_first}
     * @return Integer
     */
     public Integer create${entityName}(${entityName} ${entityName?uncap_first}) {
     	this.dbConstrains(${entityName?uncap_first},false);
     	return ${daoWriteName?uncap_first}.create${entityName}(${entityName?uncap_first});
     }
     
     /**
     * 更新<#if tableComment?? && tableComment?length &gt; 0>${tableComment}<#else>${tableName}对象</#if>
	 * <p>历史变更：
	 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
	 * </p> 
     * @author ${author}
     * @param  ${entityName?uncap_first}
     * @return Integer 
     */
     public Integer update${entityName}(${entityName} ${entityName?uncap_first}) {
     	this.dbConstrains(${entityName?uncap_first},true);
     	return ${daoWriteName?uncap_first}.update${entityName}(${entityName?uncap_first});
     }
     
     private void dbConstrains(${entityName} ${entityName?uncap_first},boolean flag) {
     	<#list columns as column>
 		<#if column.colJavaType == 'java.lang.String'>
		${entityName?uncap_first}.set${column.beanField?cap_first}(StringUtil.dbSafeString(${entityName?uncap_first}.get${column.beanField?cap_first}(),flag, ${column.characterMaximumLength?c}));
 		</#if>
		<#if column.colJavaType == 'java.lang.Integer'>
		${entityName?uncap_first}.set${column.beanField?cap_first}(StringUtil.dbSafeInteger(${entityName?uncap_first}.get${column.beanField?cap_first}(),flag, 0));
 		</#if>
		<#if column.colJavaType == 'java.lang.Long'>
		${entityName?uncap_first}.set${column.beanField?cap_first}((Long)StringUtil.dbSafeObject(${entityName?uncap_first}.get${column.beanField?cap_first}(),flag,0l));
 		</#if>
     	</#list>
     }
}