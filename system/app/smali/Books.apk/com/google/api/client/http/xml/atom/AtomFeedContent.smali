.class public Lcom/google/api/client/http/xml/atom/AtomFeedContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "AtomFeedContent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public feed:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>()V

    .line 54
    const-string v0, "application/atom+xml"

    iput-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomFeedContent;->contentType:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public final writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomFeedContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    const-string v1, "http://www.w3.org/2005/Atom"

    const-string v2, "feed"

    iget-object v3, p0, Lcom/google/api/client/http/xml/atom/AtomFeedContent;->feed:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
