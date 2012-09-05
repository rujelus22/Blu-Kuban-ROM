.class public Lcom/google/api/client/http/xml/atom/AtomContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "AtomContent.java"


# instance fields
.field public entry:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final isEntry:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>()V

    .line 78
    const-string v0, "application/atom+xml"

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/xml/atom/AtomContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/atom/AtomContent;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    .line 80
    return-void
.end method


# virtual methods
.method public bridge synthetic setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/atom/AtomContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/atom/AtomContent;

    move-result-object v0

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .registers 3
    .parameter "type"

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setType(Ljava/lang/String;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/xml/atom/AtomContent;

    return-object v0
.end method

.method public final writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/atom/AtomContent;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v1

    const-string v2, "http://www.w3.org/2005/Atom"

    iget-boolean v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    if-eqz v0, :cond_12

    const-string v0, "entry"

    :goto_c
    iget-object v3, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void

    .line 124
    :cond_12
    const-string v0, "feed"

    goto :goto_c
.end method
