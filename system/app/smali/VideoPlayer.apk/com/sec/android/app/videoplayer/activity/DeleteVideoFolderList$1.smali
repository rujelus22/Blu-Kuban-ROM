.class Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$1;
.super Landroid/content/BroadcastReceiver;
.source "DeleteVideoFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;)V
    .registers 2
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

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

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 139
    sput-boolean v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 152
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->access$000(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 159
    return-void

    .line 140
    :cond_1a
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 141
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 142
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 143
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 144
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    goto :goto_10

    .line 145
    :cond_31
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 146
    :cond_41
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$1;->this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08007c

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 147
    sput-boolean v4, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    .line 148
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 149
    sput-boolean v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    goto :goto_10
.end method
