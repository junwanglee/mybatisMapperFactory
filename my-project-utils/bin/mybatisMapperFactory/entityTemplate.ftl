/**
 * Copyright (c) predamo 2017 All Rights Reserved.
 */
package ${entityPackage};

import java.io.Serializable;

/**
 * 
 * <p>Table: <strong>${tableName}</strong>
 * <#if tableComment??>${tableComment}</#if>
 * <p><table class="er-mapping" cellspacing=0 cellpadding=0 style="border:solid 1 #666;padding:3px;">
 *   <tr style="background-color:#ddd;Text-align:Left;">
 *     <th nowrap>属性名</th><th nowrap>属性类型</th><th nowrap>字段名</th><th nowrap>字段类型</th><th nowrap>说明</th>
 *   </tr>
 <#list columns as column>
 *   <tr><td>${column.beanField}</td><td>{@link ${column.colJavaType}}</td><td>${column.dbColumn}</td><td>${column.colDbType}</td><td><#if column.colComment?? && column.colComment?length gt 0>${column.colComment!}<#else>${column.beanField}</#if></td></tr>
 </#list>
 * </table>
 * <br />
 * 类功能描述。
 * 
 * <p>历史变更：
 * <li>Author: ${author}/Date: ${.now?date}/Version:1.0/Content: create</li>
 * </p>
 *
 */
public class ${entityName} implements Serializable {
 
 	/**
     *Comment for <code>serialVersionUID</code>
     */
 	private static final long serialVersionUID                    = 1L;
 	
 	<#list columns as column>
 	private ${column.colJavaType} ${column.beanField};
 	</#list>
 	
 	<#list columns as column>
 		
	/**
     * 获取<#if column.colComment?? && column.colComment?length gt 0>${column.colComment!}<#else>${column.beanField}</#if>
     */
	public ${column.colJavaType} get${column.beanField?cap_first}(){
		return this.${column.beanField};
	}
	
	/**
     * 设置<#if column.colComment?? && column.colComment?length gt 0>${column.colComment!}<#else>${column.beanField}</#if>
     */
	public void set${column.beanField?cap_first}(${column.colJavaType} ${column.beanField}){
		this.${column.beanField} = ${column.beanField};
	}
 	</#list>
 }