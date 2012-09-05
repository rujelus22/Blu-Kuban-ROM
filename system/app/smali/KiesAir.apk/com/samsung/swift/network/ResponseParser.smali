.class public Lcom/samsung/swift/network/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v1, Ljava/io/File;

    const-string v2, "/home/b.sanghera/upnp-sample-response.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/samsung/swift/network/ResponseParser;->parseResponse(Ljava/io/File;)Lcom/samsung/swift/network/DiscoveryResponse;

    move-result-object v0

    .line 29
    .local v0, dr:Lcom/samsung/swift/network/DiscoveryResponse;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public static parseResponse(Ljava/io/File;)Lcom/samsung/swift/network/DiscoveryResponse;
    .registers 3
    .parameter "file"

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 37
    .local v0, dr:Lcom/samsung/swift/network/DiscoveryResponse;
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lcom/samsung/swift/network/ResponseParser;->parseResponse(Ljava/io/InputStream;)Lcom/samsung/swift/network/DiscoveryResponse;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v0

    .line 43
    :goto_a
    return-object v0

    .line 39
    :catch_b
    move-exception v1

    goto :goto_a
.end method

.method public static parseResponse(Ljava/io/InputStream;)Lcom/samsung/swift/network/DiscoveryResponse;
    .registers 15
    .parameter "ins"

    .prologue
    const/4 v13, 0x1

    .line 48
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 49
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 50
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    const/4 v3, 0x0

    .line 51
    .local v3, doc:Lorg/w3c/dom/Document;
    const/4 v4, 0x0

    .line 54
    .local v4, dr:Lcom/samsung/swift/network/DiscoveryResponse;
    :try_start_8
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_57

    move-result-object v3

    .line 63
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Element;->normalize()V

    .line 64
    const-string v12, "device"

    invoke-interface {v3, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 65
    .local v11, nodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 66
    .local v9, l:I
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ne v12, v13, :cond_5d

    .line 68
    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 69
    .local v2, deviceNode:Lorg/w3c/dom/Node;
    new-instance v4, Lcom/samsung/swift/network/DiscoveryResponse;

    .end local v4           #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    invoke-direct {v4}, Lcom/samsung/swift/network/DiscoveryResponse;-><init>()V

    .line 70
    .restart local v4       #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    if-ne v12, v13, :cond_5d

    move-object v7, v2

    .line 72
    check-cast v7, Lorg/w3c/dom/Element;

    .line 73
    .local v7, elem:Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 74
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3f
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v8, v12, :cond_5d

    .line 76
    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    .line 77
    .local v10, n:Lorg/w3c/dom/Node;
    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Lcom/samsung/swift/network/DiscoveryResponse;->setField(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    .line 74
    add-int/lit8 v8, v8, 0x1

    goto :goto_3f

    .line 57
    .end local v2           #deviceNode:Lorg/w3c/dom/Node;
    .end local v7           #elem:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v9           #l:I
    .end local v10           #n:Lorg/w3c/dom/Node;
    .end local v11           #nodeList:Lorg/w3c/dom/NodeList;
    :catch_57
    move-exception v6

    .line 59
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    .line 82
    .end local v4           #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    .end local v6           #e:Ljava/lang/Exception;
    .local v5, dr:Lcom/samsung/swift/network/DiscoveryResponse;
    :goto_5c
    return-object v5

    .end local v5           #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    .restart local v4       #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    .restart local v9       #l:I
    .restart local v11       #nodeList:Lorg/w3c/dom/NodeList;
    :cond_5d
    move-object v5, v4

    .end local v4           #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    .restart local v5       #dr:Lcom/samsung/swift/network/DiscoveryResponse;
    goto :goto_5c
.end method
