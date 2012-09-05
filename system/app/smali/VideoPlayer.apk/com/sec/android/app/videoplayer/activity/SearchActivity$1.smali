.class Lcom/sec/android/app/videoplayer/activity/SearchActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SearchActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SearchActivity;

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

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 185
    const-string v1, "SearchActivity"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] SD card mounted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    sput-boolean v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 201
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SearchActivity;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SearchActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->access$000(Lcom/sec/android/app/videoplayer/activity/SearchActivity;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 208
    return-void

    .line 187
    :cond_21
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 188
    const-string v1, "SearchActivity"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] Media Scanner started."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 189
    :cond_31
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 190
    const-string v1, "SearchActivity"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] Media Scanner finished."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 192
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 193
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    goto :goto_17

    .line 194
    :cond_47
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 195
    :cond_57
    const-string v1, "SearchActivity"

    const-string v2, "[BroadcastReceiver-mMediaReceiver] SD card unmounted."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SearchActivity$1;->this$0:Lcom/sec/android/app/videoplayer/activity/SearchActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08007c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 197
    sput-boolean v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 198
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 199
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    goto :goto_17
.end method
