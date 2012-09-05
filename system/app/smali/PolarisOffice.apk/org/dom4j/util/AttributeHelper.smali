.class public Lorg/dom4j/util/AttributeHelper;
.super Ljava/lang/Object;
.source "AttributeHelper.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected static booleanValue(Lorg/dom4j/Attribute;)Z
    .registers 5
    .parameter "attribute"

    .prologue
    const/4 v2, 0x0

    .line 36
    if-nez p0, :cond_4

    .line 49
    :cond_3
    :goto_3
    return v2

    .line 40
    :cond_4
    invoke-interface {p0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 44
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_16

    move-object v0, v1

    .line 45
    check-cast v0, Ljava/lang/Boolean;

    .line 47
    .local v0, b:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_3

    .line 49
    .end local v0           #b:Ljava/lang/Boolean;
    :cond_16
    const-string v2, "true"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3
.end method

.method public static booleanValue(Lorg/dom4j/Element;Ljava/lang/String;)Z
    .registers 3
    .parameter "element"
    .parameter "attributeName"

    .prologue
    .line 28
    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method

.method public static booleanValue(Lorg/dom4j/Element;Lorg/dom4j/QName;)Z
    .registers 3
    .parameter "element"
    .parameter "attributeQName"

    .prologue
    .line 32
    invoke-interface {p0, p1}, Lorg/dom4j/Element;->attribute(Lorg/dom4j/QName;)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-static {v0}, Lorg/dom4j/util/AttributeHelper;->booleanValue(Lorg/dom4j/Attribute;)Z

    move-result v0

    return v0
.end method
