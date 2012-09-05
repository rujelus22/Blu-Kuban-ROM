.class public abstract Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.super Lcom/google/api/client/http/AbstractHttpContent;
.source "AbstractXmlHttpContent.java"


# instance fields
.field public contentType:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/api/client/http/AbstractHttpContent;-><init>()V

    .line 61
    const-string v0, "application/xml"

    iput-object v0, p0, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->contentType:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public final getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .registers 2
    .parameter "type"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->contentType:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public final writeTo(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    .line 78
    .local v0, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 80
    return-void
.end method

.method protected abstract writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
