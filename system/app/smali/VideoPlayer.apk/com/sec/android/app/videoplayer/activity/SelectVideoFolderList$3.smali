.class Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 309
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 310
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->access$400(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 312
    return-void
.end method
