.class Lcom/sec/android/app/videoplayer/activity/SelectVideoList$3;
.super Landroid/database/ContentObserver;
.source "SelectVideoList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/SelectVideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 273
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isLayoutNeeded:Z

    .line 274
    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoListView;->isThumbnailNeeded:Z

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoList$3;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;
    invoke-static {v0}, Lcom/sec/android/app/videoplayer/activity/SelectVideoList;->access$300(Lcom/sec/android/app/videoplayer/activity/SelectVideoList;)Lcom/sec/android/app/videoplayer/view/VideoListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->changeListView()V

    .line 276
    return-void
.end method
