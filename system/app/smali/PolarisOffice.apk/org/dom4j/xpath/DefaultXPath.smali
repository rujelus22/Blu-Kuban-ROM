.class public Lorg/dom4j/xpath/DefaultXPath;
.super Ljava/lang/Object;
.source "DefaultXPath.java"

# interfaces
.implements Lorg/dom4j/XPath;
.implements Lorg/dom4j/NodeFilter;
.implements Ljava/io/Serializable;


# instance fields
.field private namespaceContext:Lorg/jaxen/NamespaceContext;

.field private text:Ljava/lang/String;

.field private xpath:Lorg/jaxen/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/InvalidXPathException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    .line 59
    invoke-static {p1}, Lorg/dom4j/xpath/DefaultXPath;->parse(Ljava/lang/String;)Lorg/jaxen/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    .line 60
    return-void
.end method

.method protected static parse(Ljava/lang/String;)Lorg/jaxen/XPath;
    .registers 5
    .parameter "text"

    .prologue
    .line 358
    :try_start_0
    new-instance v2, Lorg/jaxen/dom4j/Dom4jXPath;

    invoke-direct {v2, p0}, Lorg/jaxen/dom4j/Dom4jXPath;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_11

    return-object v2

    .line 359
    :catch_6
    move-exception v0

    .line 360
    .local v0, e:Lorg/jaxen/JaxenException;
    new-instance v2, Lorg/dom4j/InvalidXPathException;

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 361
    .end local v0           #e:Lorg/jaxen/JaxenException;
    :catch_11
    move-exception v1

    .line 362
    .local v1, t:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/InvalidXPathException;

    invoke-direct {v2, p0, v1}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public booleanValueOf(Ljava/lang/Object;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 205
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->booleanValueOf(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v1

    .line 211
    :goto_9
    return v1

    .line 208
    :catch_a
    move-exception v0

    .line 209
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 211
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .parameter "context"

    .prologue
    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v2, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, answer:Ljava/util/List;
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    .line 113
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_16
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v0

    .line 120
    .end local v0           #answer:Ljava/util/List;
    :cond_17
    :goto_17
    return-object v0

    .line 117
    :catch_18
    move-exception v1

    .line 118
    .local v1, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 120
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;
    .registers 3
    .parameter "node"

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionContext()Lorg/jaxen/FunctionContext;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lorg/jaxen/NamespaceContext;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableContext()Lorg/jaxen/VariableContext;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    return-object v0
.end method

.method protected handleJaxenException(Lorg/jaxen/JaxenException;)V
    .registers 4
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/XPathException;
        }
    .end annotation

    .prologue
    .line 374
    new-instance v0, Lorg/dom4j/XPathException;

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .registers 7
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 265
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 267
    iget-object v4, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v4, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 269
    .local v0, answer:Ljava/util/List;
    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_21

    .line 270
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 272
    .local v2, item:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/Boolean;

    if-eqz v4, :cond_22

    .line 273
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 283
    .end local v0           #answer:Ljava/util/List;
    :cond_21
    :goto_21
    return v3

    .line 276
    .restart local v0       #answer:Ljava/util/List;
    .restart local v2       #item:Ljava/lang/Object;
    :cond_22
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_25
    .catch Lorg/jaxen/JaxenException; {:try_start_1 .. :try_end_25} :catch_27

    move-result v3

    goto :goto_21

    .line 280
    .end local v0           #answer:Ljava/util/List;
    .end local v2           #item:Ljava/lang/Object;
    :catch_27
    move-exception v1

    .line 281
    .local v1, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    goto :goto_21
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 4
    .parameter "context"

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 199
    :goto_9
    return-object v1

    .line 196
    :catch_a
    move-exception v0

    .line 197
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 199
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected removeDuplicates(Ljava/util/List;Ljava/util/Map;)V
    .registers 8
    .parameter "list"
    .parameter "sortValues"

    .prologue
    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 332
    .local v0, distinctValues:Ljava/util/HashSet;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 342
    return-void

    .line 333
    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, node:Ljava/lang/Object;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 336
    .local v3, value:Ljava/lang/Object;
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 337
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 339
    :cond_22
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .parameter "context"

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 136
    :goto_9
    return-object v1

    .line 133
    :catch_a
    move-exception v0

    .line 134
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 136
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_9
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;)Ljava/util/List;
    .registers 4
    .parameter "context"
    .parameter "sortXPath"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, answer:Ljava/util/List;
    invoke-interface {p2, v0}, Lorg/dom4j/XPath;->sort(Ljava/util/List;)V

    .line 144
    return-object v0
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;Z)Ljava/util/List;
    .registers 5
    .parameter "context"
    .parameter "sortXPath"
    .parameter "distinct"

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 150
    .local v0, answer:Ljava/util/List;
    invoke-interface {p2, v0, p3}, Lorg/dom4j/XPath;->sort(Ljava/util/List;Z)V

    .line 152
    return-object v0
.end method

.method public selectObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "context"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 157
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 159
    iget-object v3, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v3, p1}, Lorg/jaxen/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, answer:Ljava/lang/Object;
    instance-of v3, v0, Lorg/dom4j/Node;

    if-eqz v3, :cond_11

    .line 162
    check-cast v0, Lorg/dom4j/Node;

    .line 175
    .end local v0           #answer:Ljava/lang/Object;
    :goto_10
    return-object v0

    .line 165
    .restart local v0       #answer:Ljava/lang/Object;
    :cond_11
    if-nez v0, :cond_15

    move-object v0, v2

    .line 166
    goto :goto_10

    .line 169
    :cond_15
    new-instance v3, Lorg/dom4j/XPathException;

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "The result of the XPath expression is not a Node. It was: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 169
    invoke-direct {v3, v4}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3c
    .catch Lorg/jaxen/JaxenException; {:try_start_1 .. :try_end_3c} :catch_3c

    .line 172
    .end local v0           #answer:Ljava/lang/Object;
    :catch_3c
    move-exception v1

    .line 173
    .local v1, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v1}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    move-object v0, v2

    .line 175
    goto :goto_10
.end method

.method public setFunctionContext(Lorg/jaxen/FunctionContext;)V
    .registers 3
    .parameter "functionContext"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 83
    return-void
.end method

.method protected setNSContext(Ljava/lang/Object;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 367
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    if-nez v0, :cond_d

    .line 368
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-static {p1}, Lorg/dom4j/xpath/DefaultNamespaceContext;->create(Ljava/lang/Object;)Lorg/dom4j/xpath/DefaultNamespaceContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 370
    :cond_d
    return-void
.end method

.method public setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    .registers 3
    .parameter "namespaceContext"

    .prologue
    .line 94
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    .line 95
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 96
    return-void
.end method

.method public setNamespaceURIs(Ljava/util/Map;)V
    .registers 3
    .parameter "map"

    .prologue
    .line 90
    new-instance v0, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v0, p1}, Lorg/jaxen/SimpleNamespaceContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 91
    return-void
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .registers 3
    .parameter "variableContext"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 104
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .registers 3
    .parameter "list"

    .prologue
    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Z)V

    .line 226
    return-void
.end method

.method protected sort(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .parameter "list"
    .parameter "sortValues"

    .prologue
    .line 296
    new-instance v0, Lorg/dom4j/xpath/DefaultXPath$1;

    invoke-direct {v0, p0, p2}, Lorg/dom4j/xpath/DefaultXPath$1;-><init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    return-void
.end method

.method public sort(Ljava/util/List;Z)V
    .registers 10
    .parameter "list"
    .parameter "distinct"

    .prologue
    .line 241
    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 242
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 243
    .local v4, size:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 245
    .local v5, sortValues:Ljava/util/HashMap;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    if-lt v1, v4, :cond_1d

    .line 255
    invoke-virtual {p0, p1, v5}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Ljava/util/Map;)V

    .line 257
    if-eqz p2, :cond_1c

    .line 258
    invoke-virtual {p0, p1, v5}, Lorg/dom4j/xpath/DefaultXPath;->removeDuplicates(Ljava/util/List;Ljava/util/Map;)V

    .line 261
    .end local v1           #i:I
    .end local v4           #size:I
    .end local v5           #sortValues:Ljava/util/HashMap;
    :cond_1c
    return-void

    .line 246
    .restart local v1       #i:I
    .restart local v4       #size:I
    .restart local v5       #sortValues:Ljava/util/HashMap;
    :cond_1d
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 248
    .local v3, object:Ljava/lang/Object;
    instance-of v6, v3, Lorg/dom4j/Node;

    if-eqz v6, :cond_2f

    move-object v2, v3

    .line 249
    check-cast v2, Lorg/dom4j/Node;

    .line 250
    .local v2, node:Lorg/dom4j/Node;
    invoke-virtual {p0, v2}, Lorg/dom4j/xpath/DefaultXPath;->getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, expression:Ljava/lang/Object;
    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v0           #expression:Ljava/lang/Object;
    .end local v2           #node:Lorg/dom4j/Node;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[XPath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 181
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 183
    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v1, p1}, Lorg/jaxen/XPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    .line 187
    :goto_9
    return-object v1

    .line 184
    :catch_a
    move-exception v0

    .line 185
    .local v0, e:Lorg/jaxen/JaxenException;
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 187
    const-string v1, ""

    goto :goto_9
.end method
