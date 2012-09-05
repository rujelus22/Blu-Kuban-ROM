.class Lcom/sec/android/app/videoplayer/view/VideoListView$13;
.super Landroid/content/BroadcastReceiver;
.source "VideoListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/view/VideoListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/view/VideoListView;)V
    .registers 2
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1276
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1277
    const-string v1, "VideoListView"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] SD card mounted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_13
    :goto_13
    return-void

    .line 1320
    :cond_14
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1321
    const-string v1, "VideoListView"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] Media Scanner started."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    goto :goto_13

    .line 1337
    :cond_29
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1354
    const-string v1, "VideoListView"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] Media Scanner finished."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    goto :goto_13

    .line 1363
    :cond_3e
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1364
    const-string v1, "VideoListView"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] SD card unmounted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoListView$13;->this$0:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    goto :goto_13
.end method
