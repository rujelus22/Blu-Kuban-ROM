.class Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;
.super Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;
.source "ContinuousConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/ContinuousConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PushRunnable"
.end annotation


# instance fields
.field private final bytes:[B

.field private final connectorResponseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final frameNum:I

.field private final serialized:Z

.field final synthetic this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;[BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;IZ)V
    .registers 7
    .parameter
    .parameter "bytes"
    .parameter
    .parameter "frameNum"
    .parameter "serialized"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesResponse;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p3, connectorResponseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<Lcom/google/goggles/GogglesProtos$GogglesResponse;>;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/network/ContinuousConnector$RequestRunnable;-><init>(Lcom/google/android/apps/unveil/network/ContinuousConnector;Lcom/google/android/apps/unveil/network/ContinuousConnector$1;)V

    .line 263
    iput-object p2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->bytes:[B

    .line 264
    iput-object p3, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->connectorResponseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    .line 265
    iput p4, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->frameNum:I

    .line 266
    iput-boolean p5, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->serialized:Z

    .line 267
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 272
    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;
    invoke-static {v1}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$700(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->frameNum:I

    invoke-interface {v1, v2}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;->onSendPush(I)V

    .line 273
    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTINUOUS_PUSH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    invoke-static {v1}, Lcom/google/android/apps/unveil/network/utils/Stats;->setThreadTag(Lcom/google/android/apps/unveil/network/utils/Stats$Tags;)V

    .line 274
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->bytes:[B

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->connectorResponseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->doRequest([BLcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    .line 275
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #getter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushLogger:Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;
    invoke-static {v1}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$700(Lcom/google/android/apps/unveil/network/ContinuousConnector;)Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->frameNum:I

    invoke-interface {v1, v2}, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushLogger;->onReceivePushResponse(I)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_3d
    .catch Lcom/google/android/apps/unveil/network/RequestFailedException; {:try_start_1 .. :try_end_23} :catch_2d

    .line 279
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->serialized:Z

    if-eqz v1, :cond_2c

    .line 280
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #setter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushOutstanding:Z
    invoke-static {v1, v3}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$802(Lcom/google/android/apps/unveil/network/ContinuousConnector;Z)Z

    .line 283
    :cond_2c
    :goto_2c
    return-void

    .line 276
    :catch_2d
    move-exception v0

    .line 277
    .local v0, e:Lcom/google/android/apps/unveil/network/RequestFailedException;
    :try_start_2e
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->connectorResponseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onNetworkError()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3d

    .line 279
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->serialized:Z

    if-eqz v1, :cond_2c

    .line 280
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #setter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushOutstanding:Z
    invoke-static {v1, v3}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$802(Lcom/google/android/apps/unveil/network/ContinuousConnector;Z)Z

    goto :goto_2c

    .line 279
    .end local v0           #e:Lcom/google/android/apps/unveil/network/RequestFailedException;
    :catchall_3d
    move-exception v1

    iget-boolean v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->serialized:Z

    if-eqz v2, :cond_47

    .line 280
    iget-object v2, p0, Lcom/google/android/apps/unveil/network/ContinuousConnector$PushRunnable;->this$0:Lcom/google/android/apps/unveil/network/ContinuousConnector;

    #setter for: Lcom/google/android/apps/unveil/network/ContinuousConnector;->pushOutstanding:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/unveil/network/ContinuousConnector;->access$802(Lcom/google/android/apps/unveil/network/ContinuousConnector;Z)Z

    :cond_47
    throw v1
.end method
