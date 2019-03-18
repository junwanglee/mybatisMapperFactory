package mybatisMapperFactory;

import java.util.List;

public class Table {

    private String       namespaceReadPackage;
    private String       namespaceWritePackage;
    private String       entityPackage;
    private String       daoReadName;
    private String       daoWriteName;
    private String       entityName;
    private String       resultMapId;
    private String       keyColumn;
    private String       tableName;
    private List<Column> columns;
    private String       tableComment;
    private String       sessionFactoryReadBeanName;
    private String       sessionFactoryWriteBeanName;
    private String       modelName;
    private String       modelPackage;
    private String       serviceName;
    private String       servicePackage;
    private String       author;
    private String       email;

    public String getNamespaceReadPackage() {
        return namespaceReadPackage;
    }

    public void setNamespaceReadPackage(String namespaceReadPackage) {
        this.namespaceReadPackage = namespaceReadPackage;
    }

    public String getNamespaceWritePackage() {
        return namespaceWritePackage;
    }

    public void setNamespaceWritePackage(String namespaceWritePackage) {
        this.namespaceWritePackage = namespaceWritePackage;
    }

    public String getDaoReadName() {
        return daoReadName;
    }

    public void setDaoReadName(String daoReadName) {
        this.daoReadName = daoReadName;
    }

    public String getDaoWriteName() {
        return daoWriteName;
    }

    public void setDaoWriteName(String daoWriteName) {
        this.daoWriteName = daoWriteName;
    }

    public List<Column> getColumns() {
        return columns;
    }

    public void setColumns(List<Column> columns) {
        this.columns = columns;
    }

    public String getResultMapId() {
        return resultMapId;
    }

    public void setResultMapId(String resultMapId) {
        this.resultMapId = resultMapId;
    }

    public String getKeyColumn() {
        return keyColumn;
    }

    public void setKeyColumn(String keyColumn) {
        this.keyColumn = keyColumn;
    }

    public String getTableName() {
        return tableName;
    }

    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    public String getEntityPackage() {
        return entityPackage;
    }

    public void setEntityPackage(String entityPackage) {
        this.entityPackage = entityPackage;
    }

    public String getEntityName() {
        return entityName;
    }

    public void setEntityName(String entityName) {
        this.entityName = entityName;
    }

    public String getTableComment() {
        return tableComment;
    }

    public void setTableComment(String tableComment) {
        this.tableComment = tableComment;
    }

    public String getSessionFactoryReadBeanName() {
        return sessionFactoryReadBeanName;
    }

    public void setSessionFactoryReadBeanName(String sessionFactoryReadBeanName) {
        this.sessionFactoryReadBeanName = sessionFactoryReadBeanName;
    }

    public String getSessionFactoryWriteBeanName() {
        return sessionFactoryWriteBeanName;
    }

    public void setSessionFactoryWriteBeanName(String sessionFactoryWriteBeanName) {
        this.sessionFactoryWriteBeanName = sessionFactoryWriteBeanName;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getModelPackage() {
        return modelPackage;
    }

    public void setModelPackage(String modelPackage) {
        this.modelPackage = modelPackage;
    }

    public String getServicePackage() {
        return servicePackage;
    }

    public void setServicePackage(String servicePackage) {
        this.servicePackage = servicePackage;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
