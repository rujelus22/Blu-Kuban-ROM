.class public Lcom/samsung/xml/parser/kXML2Parser;
.super Lcom/samsung/xml/Parser;
.source "kXML2Parser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/samsung/xml/Parser;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;
    .registers 16
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v10, 0x0

    .line 46
    .local v10, rootNode:Lcom/samsung/xml/Node;
    const/4 v3, 0x0

    .line 49
    .local v3, currNode:Lcom/samsung/xml/Node;
    :try_start_2
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 50
    .local v6, inReader:Ljava/io/InputStreamReader;
    new-instance v12, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v12}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 51
    .local v12, xpp:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 52
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 53
    .local v5, eventType:I
    :goto_13
    const/4 v13, 0x1

    if-ne v5, v13, :cond_17

    .line 95
    return-object v10

    .line 54
    :cond_17
    packed-switch v5, :pswitch_data_62

    .line 88
    :cond_1a
    :goto_1a
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_13

    .line 57
    :pswitch_1f
    new-instance v8, Lcom/samsung/xml/Node;

    invoke-direct {v8}, Lcom/samsung/xml/Node;-><init>()V

    .line 58
    .local v8, node:Lcom/samsung/xml/Node;
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, nodeName:Ljava/lang/String;
    invoke-virtual {v8, v9}, Lcom/samsung/xml/Node;->setName(Ljava/lang/String;)V

    .line 60
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 61
    .local v2, attrsLen:I
    const/4 v7, 0x0

    .local v7, n:I
    :goto_30
    if-lt v7, v2, :cond_3c

    .line 67
    if-eqz v3, :cond_37

    .line 68
    invoke-virtual {v3, v8}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 69
    :cond_37
    move-object v3, v8

    .line 70
    if-nez v10, :cond_1a

    .line 71
    move-object v10, v8

    .line 73
    goto :goto_1a

    .line 62
    :cond_3c
    invoke-interface {v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {v12, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, attrValue:Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    .line 76
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrValue:Ljava/lang/String;
    .end local v2           #attrsLen:I
    .end local v7           #n:I
    .end local v8           #node:Lcom/samsung/xml/Node;
    .end local v9           #nodeName:Ljava/lang/String;
    :pswitch_4a
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    .line 77
    .local v11, value:Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 78
    invoke-virtual {v3, v11}, Lcom/samsung/xml/Node;->setValue(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_53} :catch_54

    goto :goto_1a

    .line 91
    .end local v5           #eventType:I
    .end local v6           #inReader:Ljava/io/InputStreamReader;
    .end local v11           #value:Ljava/lang/String;
    .end local v12           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_54
    move-exception v4

    .line 92
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Lcom/samsung/xml/ParserException;

    invoke-direct {v13, v4}, Lcom/samsung/xml/ParserException;-><init>(Ljava/lang/Exception;)V

    throw v13

    .line 83
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v5       #eventType:I
    .restart local v6       #inReader:Ljava/io/InputStreamReader;
    .restart local v12       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_5b
    if-eqz v3, :cond_1a

    .line 84
    :try_start_5d
    invoke-virtual {v3}, Lcom/samsung/xml/Node;->getParentNode()Lcom/samsung/xml/Node;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_54

    move-result-object v3

    goto :goto_1a

    .line 54
    :pswitch_data_62
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_5b
        :pswitch_4a
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;)Lcom/samsung/xml/Node;
    .registers 4
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/xml/ParserException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 101
    .local v0, is:Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0}, Lcom/samsung/xml/parser/kXML2Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v1

    return-object v1
.end method
