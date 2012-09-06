.class Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$2;
.super Ljava/lang/Object;
.source "AtHomeMusicServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->onConfigurationRestored(Landroid/support/place/rpc/RpcData;)V
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
    .line 457
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$2;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    iput-object p2, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$2;->val$newConfig:Landroid/support/place/rpc/RpcData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$2;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$2;->val$newConfig:Landroid/support/place/rpc/RpcData;

    #calls: Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->doOnConfigurationRestored(Landroid/support/place/rpc/RpcData;)V
    invoke-static {v0, v1}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->access$1500(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;Landroid/support/place/rpc/RpcData;)V

    .line 460
    return-void
.end method
