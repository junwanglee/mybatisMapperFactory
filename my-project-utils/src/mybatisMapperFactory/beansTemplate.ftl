<?xml version="1.0" encoding="utf-8"?>
<beans>
    
    <bean id="${daoName?uncap_first}" class="org.mybatis.spring.mapper.MapperFactoryBean">
		<property name="mapperInterface" value="${namespacePackage}.${daoName}" />
		<property name="sqlSessionFactory" ref="${sessionFactoryBeanName}" />
	</bean>
	
	<bean id="${modelName?uncap_first}" class="${modelPackage}.${modelName}">
		<property name="${daoName?uncap_first}" ref="${daoName?uncap_first}"/>
	</bean>
	
	<bean id="${serviceName?uncap_first}" class="${servicePackage}.impl.${serviceName}Impl">
		<property name="${modelName?uncap_first}" ref="${modelName?uncap_first}"></property>
	</bean>
	
	<dubbo:service ref="${serviceName?uncap_first}" interface="${servicePackage}.${serviceName}"  delay="-1" cluster="failfast" />
	<dubbo:reference id="${serviceName?uncap_first}" interface="${servicePackage}.${serviceName}" lazy="true" retries="0" timeout="30000" />

</beans>