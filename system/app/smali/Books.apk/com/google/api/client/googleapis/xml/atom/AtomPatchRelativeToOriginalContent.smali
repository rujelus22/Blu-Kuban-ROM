.class public final Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "AtomPatchRelativeToOriginalContent.java"


# instance fields
.field public originalEntry:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public patchedEntry:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method protected writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v1, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->patchedEntry:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->originalEntry:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 88
    .local v0, patch:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/xml/atom/AtomPatchRelativeToOriginalContent;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v1

    const-string v2, "http://www.w3.org/2005/Atom"

    const-string v3, "entry"

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    return-void
.end method
