<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<#macro mapperEl value>${r"#{"}${value}}</#macro>
<#if keyColumn??>
	<#list columns as column>
		<#if column.dbColumn == keyColumn><#assign beanKeyField = column.beanField></#if>
	</#list>
</#if>
<mapper namespace="${namespaceReadPackage}.${daoReadName}">
	<select id="get${entityName}" parameterType="Integer" resultType="${entityPackage}.${entityName}">
		select
		<#list columns as column>`${column.dbColumn}`<#if column_index != (columns?size - 1)>,</#if></#list>
		from `${tableName}`
		<#if keyColumn??>
		where `${keyColumn}` = <@mapperEl beanKeyField/>
		</#if>
	</select>
	
	<#-- 
	<select id="list" parameterType="${entityPackage}.${entityName}" resultMap="${resultMapId}">
		select
		<#list columns as column>
			`${column.dbColumn}`<#if column_index != (columns?size - 1)>,</#if>
		</#list>
		from `${tableName}`
		<where>
			<#list columns as column>
				<if test="${column.beanField} != null">and `${column.dbColumn}`= <@mapperEl column.beanField/></if>
			</#list>
		</where>
	</select>
	-->
</mapper>