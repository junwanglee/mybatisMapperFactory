<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE mapper PUBLIC "-//mybatis.org//DTD Mapper 3.0//EN" "http://mybatis.org/dtd/mybatis-3-mapper.dtd">
<#macro mapperEl value>${r"#{"}${value}}</#macro>
<#if keyColumn??>
	<#list columns as column>
		<#if column.dbColumn == keyColumn>
			<#assign beanKeyField = column.beanField>
			<#assign beanKeyFieldType = column.colJavaType>
			<#assign beanKeyFieldAutoIncrement = column.isAutoIncrement>
		</#if>
	</#list>
</#if>
<mapper namespace="${namespaceWritePackage}.${daoWriteName}">
	
	
	<#if keyColumn??>
	
    <#--
	<update id="update${entityName}" parameterType="${entityPackage}.${entityName}">
		update `${tableName}` set 
		<#list columns as column>`${column.dbColumn}`= <@mapperEl column.beanField/><#if column_index != (columns?size - 1)>,</#if></#list>
		where `${keyColumn}` = <@mapperEl beanKeyField/>
	</update>
	

	<update id="updateNotNull" parameterType="${entityPackage}.${entityName}">
        update `${tableName}` 
    	<set>
    		<#list columns as column>
				<if test="${column.beanField} != null">`${column.dbColumn}`= <@mapperEl column.beanField/><#if column_index != (columns?size - 1)>,</#if></if>
			</#list>
	    </set>
        where `${keyColumn}` = <@mapperEl beanKeyField/>
	</update>
	-->
	<update id="update${entityName}" parameterType="${entityPackage}.${entityName}">
        update `${tableName}` 
    	<set>
    		<#list columns as column>
				<if test="${column.beanField} != null">`${column.dbColumn}`= <@mapperEl column.beanField/><#if column_index != (columns?size - 1)>,</#if></if>
			</#list>
	    </set>
        where `${keyColumn}` = <@mapperEl beanKeyField/>
	</update>

	<insert id="create${entityName}" parameterType="${entityPackage}.${entityName}">
		insert into `${tableName}`(<#list columns as column><#if column.dbColumn != keyColumn>`${column.dbColumn}`<#if column_index != (columns?size - 1)>,</#if></#if></#list>)
		values(<#list columns as column><#if column.dbColumn != keyColumn><@mapperEl column.beanField/><#if column_index != (columns?size - 1)>,</#if></#if></#list>)
		<#if beanKeyFieldAutoIncrement>
		<selectKey keyProperty="${beanKeyField}" resultType="${beanKeyFieldType}" order="AFTER">
			select last_insert_id()
		</selectKey>
		</#if>
	</insert>
	</#if>
	
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