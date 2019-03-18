package mybatisMapperFactory;

public class Column {

    private String  dbColumn;
    private String  beanField;
    private String  colJavaType;
    private String  colDbType;
    private String  colComment;
    private String  isNullable;
    private Integer characterMaximumLength;
    private Boolean isAutoIncrement = false;

    public String getColJavaType() {
        return colJavaType;
    }

    public void setColJavaType(String colJavaType) {
        this.colJavaType = colJavaType;
    }

    public String getDbColumn() {
        return dbColumn;
    }

    public void setDbColumn(String dbColumn) {
        this.dbColumn = dbColumn;
    }

    public String getBeanField() {
        return beanField;
    }

    public void setBeanField(String beanField) {
        this.beanField = beanField;
    }

    public String getColDbType() {
        return colDbType;
    }

    public void setColDbType(String colDbType) {
        this.colDbType = colDbType;
    }

    public String getColComment() {
        return colComment;
    }

    public void setColComment(String colComment) {
        this.colComment = colComment;
    }

    public String getIsNullable() {
        return isNullable;
    }

    public void setIsNullable(String isNullable) {
        this.isNullable = isNullable;
    }

    public Integer getCharacterMaximumLength() {
        return characterMaximumLength;
    }

    public void setCharacterMaximumLength(Integer characterMaximumLength) {
        this.characterMaximumLength = characterMaximumLength;
    }

    public Boolean getIsAutoIncrement() {
        return isAutoIncrement;
    }

    public void setIsAutoIncrement(Boolean isAutoIncrement) {
        this.isAutoIncrement = isAutoIncrement;
    }

}
