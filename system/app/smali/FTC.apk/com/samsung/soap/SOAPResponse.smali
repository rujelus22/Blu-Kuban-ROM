.class public Lcom/samsung/soap/SOAPResponse;
.super Lcom/samsung/http/HTTPResponse;
.source "SOAPResponse.java"


# instance fields
.field private rootNode:Lcom/samsung/xml/Node;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/http/HTTPResponse;-><init>()V

    .line 48
    invoke-static {}, Lcom/samsung/soap/SOAP;->createEnvelopeBodyNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/soap/SOAPResponse;->setRootNode(Lcom/samsung/xml/Node;)V

    .line 49
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/samsung/http/HTTPResponse;)V
    .registers 5
    .parameter "httpRes"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/http/HTTPResponse;-><init>(Lcom/samsung/http/HTTPResponse;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/soap/SOAPResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 57
    .local v1, is:Ljava/io/InputStream;
    invoke-direct {p0, v1}, Lcom/samsung/soap/SOAPResponse;->setEnvelopeNode(Ljava/io/InputStream;)V

    .line 58
    const-string v2, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v2}, Lcom/samsung/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 59
    if-eqz v1, :cond_14

    .line 61
    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15

    .line 66
    :cond_14
    :goto_14
    return-void

    .line 62
    :catch_15
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14
.end method

.method public constructor <init>(Lcom/samsung/soap/SOAPResponse;)V
    .registers 3
    .parameter "soapRes"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/http/HTTPResponse;-><init>(Lcom/samsung/http/HTTPResponse;)V

    .line 73
    invoke-virtual {p1}, Lcom/samsung/soap/SOAPResponse;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPResponse;->setEnvelopeNode(Lcom/samsung/xml/Node;)V

    .line 74
    const-string v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPResponse;->setContentType(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private getRootNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/soap/SOAPResponse;->rootNode:Lcom/samsung/xml/Node;

    return-object v0
.end method

.method private setEnvelopeNode(Ljava/io/InputStream;)V
    .registers 6
    .parameter "is"

    .prologue
    .line 97
    if-nez p1, :cond_a

    .line 98
    invoke-static {}, Lcom/samsung/soap/SOAP;->createEnvelopeBodyNode()Lcom/samsung/xml/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/soap/SOAPResponse;->setRootNode(Lcom/samsung/xml/Node;)V

    .line 112
    :goto_9
    return-void

    .line 103
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/samsung/soap/SOAP;->getXMLParser()Lcom/samsung/xml/Parser;

    move-result-object v2

    .line 104
    .local v2, xmlParser:Lcom/samsung/xml/Parser;
    invoke-virtual {v2, p1}, Lcom/samsung/xml/Parser;->parse(Ljava/io/InputStream;)Lcom/samsung/xml/Node;

    move-result-object v1

    .line 105
    .local v1, rootNode:Lcom/samsung/xml/Node;
    invoke-virtual {p0, v1}, Lcom/samsung/soap/SOAPResponse;->setEnvelopeNode(Lcom/samsung/xml/Node;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_9

    .line 107
    .end local v1           #rootNode:Lcom/samsung/xml/Node;
    .end local v2           #xmlParser:Lcom/samsung/xml/Parser;
    :catch_16
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 109
    invoke-static {}, Lcom/samsung/soap/SOAP;->createEnvelopeBodyNode()Lcom/samsung/xml/Node;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/soap/SOAPResponse;->setRootNode(Lcom/samsung/xml/Node;)V

    goto :goto_9
.end method

.method private setRootNode(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/samsung/soap/SOAPResponse;->rootNode:Lcom/samsung/xml/Node;

    .line 86
    return-void
.end method


# virtual methods
.method public getBodyNode()Lcom/samsung/xml/Node;
    .registers 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/soap/SOAPResponse;->getEnvelopeNode()Lcom/samsung/xml/Node;

    move-result-object v0

    .line 128
    .local v0, envNode:Lcom/samsung/xml/Node;
    if-nez v0, :cond_8

    .line 129
    const/4 v1, 0x0

    .line 130
    :goto_7
    return-object v1

    :cond_8
    const-string v1, "Body"

    invoke-virtual {v0, v1}, Lcom/samsung/xml/Node;->getNodeEndsWith(Ljava/lang/String;)Lcom/samsung/xml/Node;

    move-result-object v1

    goto :goto_7
.end method

.method public getEnvelopeNode()Lcom/samsung/xml/Node;
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/samsung/soap/SOAPResponse;->getRootNode()Lcom/samsung/xml/Node;

    move-result-object v0

    return-object v0
.end method

.method public print()V
    .registers 1

    .prologue
    .line 233
    return-void
.end method

.method public setContent(Lcom/samsung/xml/Node;)V
    .registers 5
    .parameter "node"

    .prologue
    .line 213
    const-string v0, ""

    .line 214
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

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
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

    .line 217
    invoke-virtual {p0, v0}, Lcom/samsung/soap/SOAPResponse;->setContent(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public setEnvelopeNode(Lcom/samsung/xml/Node;)V
    .registers 2
    .parameter "node"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/soap/SOAPResponse;->setRootNode(Lcom/samsung/xml/Node;)V

    .line 118
    return-void
.end method
