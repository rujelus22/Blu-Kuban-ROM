.class Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;
.super Ljava/lang/Object;
.source "AtHomeMusicServer.java"

# interfaces
.implements Landroid/support/place/rpc/RpcRetrier$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->doOnConfigurationRestored(Landroid/support/place/rpc/RpcData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

.field final synthetic val$newConfig:Landroid/support/place/rpc/RpcData;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;Landroid/support/place/rpc/RpcData;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    iput-object p2, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;->val$newConfig:Landroid/support/place/rpc/RpcData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendRpc(Landroid/support/place/rpc/RpcErrorHandler;)V
    .registers 5
    .parameter "err"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$600(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$800(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 480
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgs:Landroid/support/place/music/TungstenGroupingService;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$600(Lcom/google/android/music/athome/AtHomeMusicServer;)Landroid/support/place/music/TungstenGroupingService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    iget-object v1, v1, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->this$0:Lcom/google/android/music/athome/AtHomeMusicServer;

    #getter for: Lcom/google/android/music/athome/AtHomeMusicServer;->mTgsGroupId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeMusicServer;->access$800(Lcom/google/android/music/athome/AtHomeMusicServer;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$3;->val$newConfig:Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/place/music/TungstenGroupingService;->setGroupTransmitterConfig(Ljava/lang/String;Landroid/support/place/rpc/RpcData;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 482
    :cond_29
    return-void
.end method
