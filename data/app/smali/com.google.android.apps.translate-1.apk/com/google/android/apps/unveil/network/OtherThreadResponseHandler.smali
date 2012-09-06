.class public final Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;
.super Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
.source "OtherThreadResponseHandler.java"


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
.field private final inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;"
        }
    .end annotation
.end field

.field private final otherThreadHandler:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 3
    .parameter "otherThreadHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler<TResponseType;>;"
    .local p2, inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->otherThreadHandler:Ljava/util/concurrent/Executor;

    .line 24
    iput-object p2, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;)Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->inner:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    return-object v0
.end method


# virtual methods
.method public onNetworkError()V
    .registers 3

    .prologue
    .line 29
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->otherThreadHandler:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$1;-><init>(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 35
    return-void
.end method

.method public onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler<TResponseType;>;"
    .local p1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->otherThreadHandler:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$2;-><init>(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;Lcom/google/android/apps/unveil/network/UnveilResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method

.method public onServerErrorCode(I)V
    .registers 4
    .parameter "statusCode"

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;,"Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler<TResponseType;>;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;->otherThreadHandler:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler$3;-><init>(Lcom/google/android/apps/unveil/network/OtherThreadResponseHandler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method
