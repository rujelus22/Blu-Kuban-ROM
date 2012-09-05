.class public Lorg/dom4j/xpath/DefaultNamespaceContext;
.super Ljava/lang/Object;
.source "DefaultNamespaceContext.java"

# interfaces
.implements Lorg/jaxen/NamespaceContext;
.implements Ljava/io/Serializable;


# instance fields
.field private final element:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Lorg/dom4j/Element;)V
    .registers 2
    .parameter "element"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultNamespaceContext;->element:Lorg/dom4j/Element;

    .line 33
    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/dom4j/xpath/DefaultNamespaceContext;
    .registers 4
    .parameter "node"

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, element:Lorg/dom4j/Element;
    instance-of v2, p0, Lorg/dom4j/Element;

    if-eqz v2, :cond_10

    move-object v1, p0

    .line 39
    check-cast v1, Lorg/dom4j/Element;

    .line 47
    .end local p0
    :cond_8
    :goto_8
    if-eqz v1, :cond_27

    .line 48
    new-instance v2, Lorg/dom4j/xpath/DefaultNamespaceContext;

    invoke-direct {v2, v1}, Lorg/dom4j/xpath/DefaultNamespaceContext;-><init>(Lorg/dom4j/Element;)V

    .line 51
    :goto_f
    return-object v2

    .line 40
    .restart local p0
    :cond_10
    instance-of v2, p0, Lorg/dom4j/Document;

    if-eqz v2, :cond_1c

    move-object v0, p0

    .line 41
    check-cast v0, Lorg/dom4j/Document;

    .line 42
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    goto :goto_8

    .line 43
    .end local v0           #doc:Lorg/dom4j/Document;
    :cond_1c
    instance-of v2, p0, Lorg/dom4j/Node;

    if-eqz v2, :cond_8

    .line 44
    check-cast p0, Lorg/dom4j/Node;

    .end local p0
    invoke-interface {p0}, Lorg/dom4j/Node;->getParent()Lorg/dom4j/Element;

    move-result-object v1

    goto :goto_8

    .line 51
    :cond_27
    const/4 v2, 0x0

    goto :goto_f
.end method


# virtual methods
.method public translateNamespacePrefixToUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "prefix"

    .prologue
    .line 55
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 56
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultNamespaceContext;->element:Lorg/dom4j/Element;

    invoke-interface {v1, p1}, Lorg/dom4j/Element;->getNamespaceForPrefix(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    .line 58
    .local v0, ns:Lorg/dom4j/Namespace;
    if-eqz v0, :cond_15

    .line 59
    invoke-virtual {v0}, Lorg/dom4j/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 63
    .end local v0           #ns:Lorg/dom4j/Namespace;
    :goto_14
    return-object v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method
