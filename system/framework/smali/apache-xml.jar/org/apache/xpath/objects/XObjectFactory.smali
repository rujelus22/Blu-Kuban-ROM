.class public Lorg/apache/xpath/objects/XObjectFactory;
.super Ljava/lang/Object;
.source "XObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/apache/xpath/objects/XObject;
    .registers 3
    .parameter "val"

    .prologue
    .line 48
    instance-of v1, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v1, :cond_8

    move-object v0, p0

    .line 50
    check-cast v0, Lorg/apache/xpath/objects/XObject;

    .line 69
    .end local p0
    .local v0, result:Lorg/apache/xpath/objects/XObject;
    :goto_7
    return-object v0

    .line 52
    .end local v0           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_8
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 54
    new-instance v0, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .restart local v0       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 56
    .end local v0           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_14
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_20

    .line 58
    new-instance v0, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    .restart local v0       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 60
    .end local v0           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_20
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2c

    .line 62
    new-instance v0, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Double;

    .end local p0
    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    .restart local v0       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 66
    .end local v0           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_2c
    new-instance v0, Lorg/apache/xpath/objects/XObject;

    invoke-direct {v0, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .restart local v0       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7
.end method

.method public static create(Ljava/lang/Object;Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 9
    .parameter "val"
    .parameter "xctxt"

    .prologue
    .line 87
    instance-of v6, p0, Lorg/apache/xpath/objects/XObject;

    if-eqz v6, :cond_8

    move-object v5, p0

    .line 89
    check-cast v5, Lorg/apache/xpath/objects/XObject;

    .line 159
    .end local p0
    .local v5, result:Lorg/apache/xpath/objects/XObject;
    :goto_7
    return-object v5

    .line 91
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_8
    instance-of v6, p0, Ljava/lang/String;

    if-eqz v6, :cond_14

    .line 93
    new-instance v5, Lorg/apache/xpath/objects/XString;

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 95
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_14
    instance-of v6, p0, Ljava/lang/Boolean;

    if-eqz v6, :cond_20

    .line 97
    new-instance v5, Lorg/apache/xpath/objects/XBoolean;

    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XBoolean;-><init>(Ljava/lang/Boolean;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 99
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_20
    instance-of v6, p0, Ljava/lang/Number;

    if-eqz v6, :cond_2c

    .line 101
    new-instance v5, Lorg/apache/xpath/objects/XNumber;

    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XNumber;-><init>(Ljava/lang/Number;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 103
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_2c
    instance-of v6, p0, Lorg/apache/xml/dtm/DTM;

    if-eqz v6, :cond_57

    move-object v0, p0

    .line 105
    check-cast v0, Lorg/apache/xml/dtm/DTM;

    .line 108
    .local v0, dtm:Lorg/apache/xml/dtm/DTM;
    :try_start_33
    invoke-interface {v0}, Lorg/apache/xml/dtm/DTM;->getDocument()I

    move-result v1

    .line 109
    .local v1, dtmRoot:I
    const/16 v6, 0xd

    invoke-interface {v0, v6}, Lorg/apache/xml/dtm/DTM;->getAxisIterator(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    move-result-object v3

    .line 110
    .local v3, iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    invoke-interface {v3, v1}, Lorg/apache/xml/dtm/DTMAxisIterator;->setStartNode(I)Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 111
    new-instance v4, Lorg/apache/xpath/axes/OneStepIterator;

    const/16 v6, 0xd

    invoke-direct {v4, v3, v6}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    .line 112
    .local v4, iterator:Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v4, v1, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 113
    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v5, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4f} :catch_50

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 115
    .end local v1           #dtmRoot:I
    .end local v3           #iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    .end local v4           #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    :catch_50
    move-exception v2

    .line 117
    .local v2, ex:Ljava/lang/Exception;
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 120
    .end local v0           #dtm:Lorg/apache/xml/dtm/DTM;
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_57
    instance-of v6, p0, Lorg/apache/xml/dtm/DTMAxisIterator;

    if-eqz v6, :cond_79

    move-object v3, p0

    .line 122
    check-cast v3, Lorg/apache/xml/dtm/DTMAxisIterator;

    .line 125
    .restart local v3       #iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    :try_start_5e
    new-instance v4, Lorg/apache/xpath/axes/OneStepIterator;

    const/16 v6, 0xd

    invoke-direct {v4, v3, v6}, Lorg/apache/xpath/axes/OneStepIterator;-><init>(Lorg/apache/xml/dtm/DTMAxisIterator;I)V

    .line 126
    .restart local v4       #iterator:Lorg/apache/xml/dtm/DTMIterator;
    invoke-interface {v3}, Lorg/apache/xml/dtm/DTMAxisIterator;->getStartNode()I

    move-result v6

    invoke-interface {v4, v6, p1}, Lorg/apache/xml/dtm/DTMIterator;->setRoot(ILjava/lang/Object;)V

    .line 127
    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    invoke-direct {v5, v4}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_71} :catch_72

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 129
    .end local v4           #iterator:Lorg/apache/xml/dtm/DTMIterator;
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    :catch_72
    move-exception v2

    .line 131
    .restart local v2       #ex:Ljava/lang/Exception;
    new-instance v6, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v6, v2}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 134
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #iter:Lorg/apache/xml/dtm/DTMAxisIterator;
    :cond_79
    instance-of v6, p0, Lorg/apache/xml/dtm/DTMIterator;

    if-eqz v6, :cond_85

    .line 136
    new-instance v5, Lorg/apache/xpath/objects/XNodeSet;

    check-cast p0, Lorg/apache/xml/dtm/DTMIterator;

    .end local p0
    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XNodeSet;-><init>(Lorg/apache/xml/dtm/DTMIterator;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto :goto_7

    .line 140
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_85
    instance-of v6, p0, Lorg/w3c/dom/Node;

    if-eqz v6, :cond_92

    .line 142
    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/Node;

    .end local p0
    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/Node;Lorg/apache/xml/dtm/DTMManager;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_7

    .line 146
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_92
    instance-of v6, p0, Lorg/w3c/dom/NodeList;

    if-eqz v6, :cond_9f

    .line 148
    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/NodeList;

    .end local p0
    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/NodeList;Lorg/apache/xpath/XPathContext;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_7

    .line 150
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_9f
    instance-of v6, p0, Lorg/w3c/dom/traversal/NodeIterator;

    if-eqz v6, :cond_ac

    .line 152
    new-instance v5, Lorg/apache/xpath/objects/XNodeSetForDOM;

    check-cast p0, Lorg/w3c/dom/traversal/NodeIterator;

    .end local p0
    invoke-direct {v5, p0, p1}, Lorg/apache/xpath/objects/XNodeSetForDOM;-><init>(Lorg/w3c/dom/traversal/NodeIterator;Lorg/apache/xpath/XPathContext;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_7

    .line 156
    .end local v5           #result:Lorg/apache/xpath/objects/XObject;
    .restart local p0
    :cond_ac
    new-instance v5, Lorg/apache/xpath/objects/XObject;

    invoke-direct {v5, p0}, Lorg/apache/xpath/objects/XObject;-><init>(Ljava/lang/Object;)V

    .restart local v5       #result:Lorg/apache/xpath/objects/XObject;
    goto/16 :goto_7
.end method
