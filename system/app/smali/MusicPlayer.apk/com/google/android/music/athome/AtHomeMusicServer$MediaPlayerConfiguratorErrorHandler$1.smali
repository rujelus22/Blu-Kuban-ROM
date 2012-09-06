.class Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$1;
.super Ljava/lang/Object;
.source "AtHomeMusicServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->onConfigurationLost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$1;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler$1;->this$1:Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;

    #calls: Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->doOnConfigurationLost()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;->access$1400(Lcom/google/android/music/athome/AtHomeMusicServer$MediaPlayerConfiguratorErrorHandler;)V

    .line 432
    return-void
.end method
