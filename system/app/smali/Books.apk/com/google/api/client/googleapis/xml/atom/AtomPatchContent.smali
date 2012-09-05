.class public final Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;
.super Lcom/google/api/client/http/xml/atom/AtomContent;
.source "AtomPatchContent.java"


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/api/client/http/xml/atom/AtomContent;-><init>()V

    .line 57
    const-string v0, "application/xml"

    iput-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/AtomPatchContent;->contentType:Ljava/lang/String;

    .line 58
    return-void
.end method
