.class public Lcom/samsung/soap/SOAP;
.super Ljava/lang/Object;
.source "SOAP.java"


# static fields
.field private static xmlParser:Lcom/samsung/xml/Parser;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createEnvelopeBodyNode()Lcom/samsung/xml/Node;
    .registers 4

    .prologue
    .line 60
    new-instance v1, Lcom/samsung/xml/Node;

    const-string v2, "s:Envelope"

    invoke-direct {v1, v2}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, envNode:Lcom/samsung/xml/Node;
    const-string v2, "xmlns:s"

    const-string v3, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v2, "s:encodingStyle"

    const-string v3, "http://schemas.xmlsoap.org/soap/encoding/"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/samsung/xml/Node;

    const-string v2, "s:Body"

    invoke-direct {v0, v2}, Lcom/samsung/xml/Node;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, bodyNode:Lcom/samsung/xml/Node;
    invoke-virtual {v1, v0}, Lcom/samsung/xml/Node;->addNode(Lcom/samsung/xml/Node;)V

    .line 68
    return-object v1
.end method

.method public static final getXMLParser()Lcom/samsung/xml/Parser;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/samsung/soap/SOAP;->xmlParser:Lcom/samsung/xml/Parser;

    return-object v0
.end method

.method public static final setXMLParser(Lcom/samsung/xml/Parser;)V
    .registers 1
    .parameter "parser"

    .prologue
    .line 79
    sput-object p0, Lcom/samsung/soap/SOAP;->xmlParser:Lcom/samsung/xml/Parser;

    .line 80
    return-void
.end method
