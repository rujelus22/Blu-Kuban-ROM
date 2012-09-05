.class Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 166
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 167
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;->access$000(Lcom/sec/android/app/videoplayer/activity/DeleteVideoFolderList;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 169
    return-void
.end method
