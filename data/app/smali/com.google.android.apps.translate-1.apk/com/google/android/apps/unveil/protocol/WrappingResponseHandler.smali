.class public Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "WrappingResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Lcom/google/protobuf/GeneratedMessageLite;",
        ">",
        "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
        "<TResponseType;>;"
    }
.end annotation


# instance fields
.field protected final inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;"
        }
    .end annotation
.end field

.field protected final outer:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, this:Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;,"Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler<TResponseType;>;"
    .local p1, inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    .local p2, outer:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    .line 23
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->outer:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    .line 24
    return-void
.end method


# virtual methods
.method public onNetworkError()V
    .registers 2

    .prologue
    .line 28
    .local p0, this:Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;,"Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->outer:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onNetworkError()V

    .line 29
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onNetworkError()V

    .line 30
    return-void
.end method

.method public onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, this:Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;,"Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler<TResponseType;>;"
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->outer:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V

    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V

    .line 36
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 3
    .parameter "statusCode"

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;,"Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->outer:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onServerErrorCode(I)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onServerErrorCode(I)V

    .line 42
    return-void
.end method
