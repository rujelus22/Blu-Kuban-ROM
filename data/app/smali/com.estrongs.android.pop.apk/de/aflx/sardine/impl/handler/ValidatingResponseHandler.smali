.class public abstract Lde/aflx/sardine/impl/handler/ValidatingResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected validateResponse(Lorg/apache/http/HttpResponse;)V
    .registers 6

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_11

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_11

    return-void

    :cond_11
    new-instance v1, Lde/aflx/sardine/impl/SardineException;

    const-string v2, "Unexpected response"

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lde/aflx/sardine/impl/SardineException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v1
.end method
