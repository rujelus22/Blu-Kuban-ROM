.class public Lcom/samsung/soap/SOAPRequest;
.super Lcom/samsung/http/HTTPRequest;
.source "SOAPRequest.java"


# instance fields
.field private rootNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/http/HTTPRequest;-><init>()V

    .line 53
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPRequest;->setContentType(Ljava/lang/String;)V

    .line 54
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPRequest;->setMethod(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private declared-synchronized getRootNode()Lcom/samsung/xml/Node;
    .registers 6

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/soap/SOAPRequest;->rootNode:Lcom/samsung/xml/Node;

    if-eqz v3, :cond_9

    .line 131
    iget-object v3, p0, Lcom/samsung/soap/SOAPRequest;->rootNode:Lcom/samsung/xml/Node;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_32

    .line 154
    :goto_7
    monitor-exit p0

    return-object v3

    .line 133
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/samsung/soap/SOAPRequest;->getContent()Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_32

    move-result-object v1

    .line 138
    .local v1, is:Ljava/io/InputStream;
    :try_start_d
    invoke-static {}, Lcom/samsung/soap/SOAP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v2

    .line 139
    .local v2, parser:Lcom/samsung/xml/Parser;
    invoke-virtual {v2, v1}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/soap/SOAPRequest;->rootNode:Lcom/samsung/xml/Node;
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_2b
    .catch Lcom/samsung/xml/ParserException; {:try_start_d .. :try_end_17} :catch_1f

    .line 146
    if-eqz v1, :cond_1c

    .line 147
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_32
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_37

    .line 154
    .end local v2           #parser:Lcom/samsung/xml/Parser;
    :cond_1c
    :goto_1c
    :try_start_1c
    iget-object v3, p0, Lcom/samsung/soap/SOAPRequest;->rootNode:Lcom/samsung/xml/Node;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_32

    goto :goto_7

    .line 141
    :catch_1f
    move-exception v0

    .line 142
    .local v0, e:Lcom/samsung/xml/ParserException;
    :try_start_20
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2b

    .line 146
    if-eqz v1, :cond_1c

    .line 147
    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_32
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_1c

    .line 148
    :catch_29
    move-exception v3

    goto :goto_1c

    .line 144
    .end local v0           #e:Lcom/samsung/xml/ParserException;
    :catchall_2b
    move-exception v3

    .line 146
    if-eqz v1, :cond_31

    .line 147
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_35

    .line 150
    :cond_31
    :goto_31
    :try_start_31
    throw v3
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_32

    .line 130
    .end local v1           #is:Ljava/io/InputStream;
    :catchall_32
    move-exception v3

    monitor-exit p0

    throw v3

    .line 148
    .restart local v1       #is:Ljava/io/InputStream;
    :catch_35
    move-exception v4

    goto :goto_31

    .restart local v2       #parser:Lcom/samsung/xml/Parser;
    :catch_37
    move-exception v3

    goto :goto_1c
.end method

.method private setRootNode(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/soap/SOAPRequest;->rootNode:Lcom/samsung/xml/Node;

    .line 126
    return-void
.end method


# virtual methods
.method public getBodyNode()Lcom/samsung/xml/Node;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/samsung/soap/SOAPRequest;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 174
    .local v0, envNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 178
    :cond_7
    :goto_7
    return-object v1

    .line 176
    :cond_8
    invoke-virtual {v0}, Lcom/samsung/xml/Node;->hasNodes()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 178
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNode(I)Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_7
.end method

.method public getEnvelopeNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/samsung/soap/SOAPRequest;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public getSOAPAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPRequest;->getStringHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSOAPAction(Ljava/lang/String;)Z
    .registers 6
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 78
    const-string v3, "SOAPACTION"

    invoke-virtual {p0, v3}, Lcom/samsung/soap/SOAPRequest;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, headerValue:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 86
    :cond_9
    :goto_9
    return v2

    .line 81
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 82
    const/4 v2, 0x1

    goto :goto_9

    .line 83
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/soap/SOAPRequest;->getSOAPAction()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, soapAction:Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_9
.end method

.method public postMessage(Ljava/lang/String;I)Lcom/samsung/soap/SOAPResponse;
    .registers 9
    .parameter "host"
    .parameter "port"

    .prologue
    .line 95
    const-string v2, "SOAPRequest postMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "post keepAlive"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/samsung/soap/SOAPRequest;->post(Ljava/lang/String;I)Lcom/samsung/http/HTTPResponse;

    move-result-object v0

    .line 98
    .local v0, httpRes:Lcom/samsung/http/HTTPResponse;
    new-instance v1, Lcom/samsung/soap/SOAPResponse;

    invoke-direct {v1, v0}, Lcom/samsung/soap/SOAPResponse;-><init>(Lcom/samsung/http/HTTPResponse;)V

    .line 114
    .local v1, soapRes:Lcom/samsung/soap/SOAPResponse;
    return-object v1
.end method

.method public print()V
    .registers 4

    .prologue
    .line 202
    const-string v1, "SOAPRequest"

    invoke-virtual {p0}, Lcom/samsung/soap/SOAPRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/soap/SOAPRequest;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 209
    :cond_f
    :goto_f
    return-void

    .line 205
    :cond_10
    invoke-direct {p0}, Lcom/samsung/soap/SOAPRequest;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 206
    .local v0, rootElem:Lcom/samsung/xml/Node;
    if-eqz v0, :cond_f

    .line 208
    const-string v1, "SOAPRequest Root"

    invoke-virtual {v0}, Lcom/samsung/xml/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/api/Debugs;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public setContent(Lcom/samsung/xml/Node;)V
    .registers 5
    .parameter "node"

    .prologue
    .line 188
    const-string v0, ""

    .line 189
    .local v0, conStr:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    if-eqz p1, :cond_3f

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/xml/Node;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    :cond_3f
    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPRequest;->setContent(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setEnvelopeNode(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/samsung/soap/SOAPRequest;->setRootNode(Lcom/samsung/xml/Node;)V

    .line 164
    return-void
.end method

.method public setSOAPAction(Ljava/lang/String;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 68
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/soap/SOAPRequest;->setStringHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method
