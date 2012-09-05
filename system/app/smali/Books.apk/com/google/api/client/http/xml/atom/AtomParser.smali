.class public final Lcom/google/api/client/http/xml/atom/AtomParser;
.super Lcom/google/api/client/http/xml/XmlHttpParser;
.source "AtomParser.java"


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/api/client/http/xml/XmlHttpParser;-><init>()V

    .line 55
    const-string v0, "application/atom+xml"

    iput-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomParser;->contentType:Ljava/lang/String;

    .line 56
    return-void
.end method
