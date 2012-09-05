.class Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$2;
.super Landroid/database/ContentObserver;
.source "DeleteVideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 164
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 165
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList$2;->this$0:Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;->access$000(Lcom/sec/android/app/videoplayer/activity/DeleteVideoList;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 167
    return-void
.end method
