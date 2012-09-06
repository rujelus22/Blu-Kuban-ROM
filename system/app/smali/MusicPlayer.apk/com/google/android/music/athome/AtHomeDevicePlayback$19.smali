.class Lcom/google/android/music/athome/AtHomeDevicePlayback$19;
.super Ljava/lang/Object;
.source "AtHomeDevicePlayback.java"

# interfaces
.implements Landroid/support/place/rpc/RpcErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 2
    .parameter

    .prologue
    .line 3101
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$19;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/support/place/rpc/RpcError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 3103
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$19;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3104
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$19;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$7800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$19;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mRetryError:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$8500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3106
    :cond_1d
    return-void
.end method
