.class Landroid/support/place/connector/Endpoint$PushEventErrorHandler;
.super Ljava/lang/Object;
.source "Endpoint.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/connector/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushEventErrorHandler"
.end annotation


# instance fields
.field mEvent:Ljava/lang/String;

.field mListener:Landroid/support/place/rpc/EndpointInfo;

.field final synthetic this$0:Landroid/support/place/connector/Endpoint;


# direct methods
.method constructor <init>(Landroid/support/place/connector/Endpoint;Ljava/lang/String;Landroid/support/place/rpc/EndpointInfo;)V
    .registers 4
    .parameter
    .parameter "event"
    .parameter "listener"

    .prologue
    .line 263
    iput-object p1, p0, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;->this$0:Landroid/support/place/connector/Endpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;->mEvent:Ljava/lang/String;

    .line 265
    iput-object p3, p0, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;->mListener:Landroid/support/place/rpc/EndpointInfo;

    .line 266
    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 6
    .parameter "err"

    .prologue
    .line 275
    iget v0, p1, Landroid/support/place/rpc/RpcError;->status:I

    .line 276
    .local v0, status:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3f

    .line 278
    :cond_8
    iget-object v1, p0, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;->this$0:Landroid/support/place/connector/Endpoint;

    iget-object v2, p0, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;->mListener:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v2}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/support/place/connector/Endpoint;->unregisterListener(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/support/place/connector/Endpoint;->access$300(Landroid/support/place/connector/Endpoint;Ljava/lang/String;)V

    .line 279
    const-string v1, "Endpoint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t communicate with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;->mListener:Landroid/support/place/rpc/EndpointInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/place/connector/Endpoint$PushEventErrorHandler;->mEvent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".  Unregistering it.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_3f
    return-void
.end method
