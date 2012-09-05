.class Lorg/dom4j/io/SAXModifyElementHandler;
.super Ljava/lang/Object;
.source "SAXModifyElementHandler.java"

# interfaces
.implements Lorg/dom4j/ElementHandler;


# instance fields
.field private elemModifier:Lorg/dom4j/io/ElementModifier;

.field private modifiedElement:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Lorg/dom4j/io/ElementModifier;)V
    .registers 2
    .parameter "elemModifier"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/dom4j/io/SAXModifyElementHandler;->elemModifier:Lorg/dom4j/io/ElementModifier;

    .line 35
    return-void
.end method


# virtual methods
.method protected getModifiedElement()Lorg/dom4j/Element;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    return-object v0
.end method

.method public onEnd(Lorg/dom4j/ElementPath;)V
    .registers 12
    .parameter "elementPath"

    .prologue
    .line 43
    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v7

    .line 44
    .local v7, origElement:Lorg/dom4j/Element;
    invoke-interface {v7}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v3

    .line 46
    .local v3, currentParent:Lorg/dom4j/Element;
    if-eqz v3, :cond_4f

    .line 48
    invoke-interface {v7}, Lorg/dom4j/Element;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 51
    .local v1, clonedElem:Lorg/dom4j/Element;
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->elemModifier:Lorg/dom4j/io/ElementModifier;

    invoke-interface {v8, v1}, Lorg/dom4j/io/ElementModifier;->modifyElement(Lorg/dom4j/Element;)Lorg/dom4j/Element;

    move-result-object v8

    iput-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    .line 53
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    if-eqz v8, :cond_3b

    .line 55
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v7}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/dom4j/Element;->setParent(Lorg/dom4j/Element;)V

    .line 56
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v7}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    .line 59
    invoke-interface {v3, v7}, Lorg/dom4j/Element;->indexOf(Lorg/dom4j/Node;)I

    move-result v2

    .line 60
    .local v2, contentIndex:I
    invoke-interface {v3}, Lorg/dom4j/Element;->content()Ljava/util/List;

    move-result-object v8

    iget-object v9, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v8, v2, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v2           #contentIndex:I
    :cond_3b
    invoke-interface {v7}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;

    .line 89
    .end local v1           #clonedElem:Lorg/dom4j/Element;
    :cond_3e
    :goto_3e
    instance-of v8, p1, Lorg/dom4j/io/ElementStack;

    if-eqz v8, :cond_4e

    .line 90
    move-object v0, p1

    check-cast v0, Lorg/dom4j/io/ElementStack;

    move-object v5, v0

    .line 91
    .local v5, elementStack:Lorg/dom4j/io/ElementStack;
    invoke-virtual {v5}, Lorg/dom4j/io/ElementStack;->popElement()Lorg/dom4j/Element;

    .line 92
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-virtual {v5, v8}, Lorg/dom4j/io/ElementStack;->pushElement(Lorg/dom4j/Element;)V

    .line 97
    .end local v5           #elementStack:Lorg/dom4j/io/ElementStack;
    :cond_4e
    return-void

    .line 66
    :cond_4f
    invoke-interface {v7}, Lorg/dom4j/Element;->isRootElement()Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 68
    invoke-interface {v7}, Lorg/dom4j/Element;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    .line 71
    .restart local v1       #clonedElem:Lorg/dom4j/Element;
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->elemModifier:Lorg/dom4j/io/ElementModifier;

    invoke-interface {v8, v1}, Lorg/dom4j/io/ElementModifier;->modifyElement(Lorg/dom4j/Element;)Lorg/dom4j/Element;

    move-result-object v8

    iput-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    .line 73
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    if-eqz v8, :cond_79

    .line 75
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v7}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/dom4j/Element;->setDocument(Lorg/dom4j/Document;)V

    .line 78
    invoke-interface {v7}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v4

    .line 79
    .local v4, doc:Lorg/dom4j/Document;
    iget-object v8, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    invoke-interface {v4, v8}, Lorg/dom4j/Document;->setRootElement(Lorg/dom4j/Element;)V

    .line 83
    .end local v4           #doc:Lorg/dom4j/Document;
    :cond_79
    invoke-interface {v7}, Lorg/dom4j/Element;->detach()Lorg/dom4j/Node;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7c} :catch_7d

    goto :goto_3e

    .line 94
    .end local v1           #clonedElem:Lorg/dom4j/Element;
    .end local v3           #currentParent:Lorg/dom4j/Element;
    .end local v7           #origElement:Lorg/dom4j/Element;
    :catch_7d
    move-exception v6

    .line 95
    .local v6, ex:Ljava/lang/Exception;
    new-instance v8, Lorg/dom4j/io/SAXModifyException;

    invoke-direct {v8, v6}, Lorg/dom4j/io/SAXModifyException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .registers 3
    .parameter "elementPath"

    .prologue
    .line 38
    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXModifyElementHandler;->modifiedElement:Lorg/dom4j/Element;

    .line 39
    return-void
.end method
