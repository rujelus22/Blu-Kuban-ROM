.class public Lcom/google/api/client/http/xml/XmlHttpContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "XmlHttpContent.java"


# instance fields
.field public data:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public elementName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .registers 3
    .parameter "x0"

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/XmlHttpContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/XmlHttpContent;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/XmlHttpContent;
    .registers 3
    .parameter "type"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/xml/XmlHttpContent;

    return-object v0
.end method

.method public final writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/XmlHttpContent;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->elementName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/api/client/http/xml/XmlHttpContent;->data:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    return-void
.end method
