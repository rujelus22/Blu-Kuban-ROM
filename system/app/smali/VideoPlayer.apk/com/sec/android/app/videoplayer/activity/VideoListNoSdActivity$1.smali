.class Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "VideoListNoSdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v1, "VideoListNoSdActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaReceiver() - action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 93
    :cond_34
    const-string v1, "VideoListNoSdActivity"

    const-string v2, "mMediaReceiver() - SD card mounted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->access$000(Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->startActivity(Landroid/content/Intent;)V

    .line 95
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;->finish()V

    .line 98
    :cond_52
    return-void
.end method
