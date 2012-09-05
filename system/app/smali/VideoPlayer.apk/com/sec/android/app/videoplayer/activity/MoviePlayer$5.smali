.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$5;
.super Landroid/content/BroadcastReceiver;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$5;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2475
    const-string v0, "MoviePlayer"

    const-string v1, "DockReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$5;->setResultCode(I)V

    .line 2477
    return-void
.end method
