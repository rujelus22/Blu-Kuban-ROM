.class Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$2;
.super Landroid/content/BroadcastReceiver;
.source "SelectVideoFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)V
    .registers 2
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 276
    const-string v1, "SelectVideoList"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] SD card mounted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    sput-boolean v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 292
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$400(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 299
    return-void

    .line 278
    :cond_21
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 279
    const-string v1, "SelectVideoList"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] Media Scanner started."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 280
    :cond_31
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 281
    const-string v1, "SelectVideoList"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] Media Scanner finished."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 283
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 284
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    goto :goto_17

    .line 285
    :cond_47
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 286
    :cond_57
    const-string v1, "SelectVideoList"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] SD card unmounted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08007c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 288
    sput-boolean v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 289
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 290
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    goto :goto_17
.end method
