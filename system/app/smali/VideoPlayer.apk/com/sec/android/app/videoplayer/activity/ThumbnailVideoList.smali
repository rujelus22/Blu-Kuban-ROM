.class public Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;
.super Landroid/app/Activity;
.source "ThumbnailVideoList.java"


# static fields
.field public static mContext:Landroid/content/Context;

.field private static orientationState:I


# instance fields
.field private videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->mContext:Landroid/content/Context;

    .line 17
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->orientationState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->retrievePositionofList()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setThumbnailIndex(I)V

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->initVideoListViewColumns()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sput-object p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    if-nez v0, :cond_12

    .line 24
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 26
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->setContentView(Landroid/view/View;)V

    .line 27
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onDestroy()V

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPause(I)V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 50
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 31
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResume(I)V

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->showRecentlyPlayedItem()V

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 38
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStop()V

    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 56
    return-void
.end method
