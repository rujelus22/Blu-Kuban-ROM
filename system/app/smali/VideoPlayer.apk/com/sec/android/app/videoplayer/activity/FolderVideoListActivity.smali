.class public Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;
.super Landroid/app/Activity;
.source "FolderVideoListActivity.java"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 73
    .local v0, orientation:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_23

    .line 75
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v1

    .line 76
    .local v1, vd:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->dismissAllDialog()V

    .line 77
    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 79
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->isHDPI()Z

    move-result v2

    if-nez v2, :cond_23

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->finish()V

    .line 82
    .end local v1           #vd:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    :cond_23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sput-object p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->mContext:Landroid/content/Context;

    .line 25
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    if-nez v2, :cond_13

    .line 26
    new-instance v2, Lcom/sec/android/app/videoplayer/view/VideoListView;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/videoplayer/view/VideoListView;-><init>(Landroid/content/Context;II)V

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    .line 28
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bucket_id"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 29
    .local v0, bucketId:I
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2, v0, v5}, Lcom/sec/android/app/videoplayer/view/VideoListView;->setBucket(II)V

    .line 30
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getFolderNamefromIndex(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, folderName:Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/view/VideoListView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->setContentView(Landroid/view/View;)V

    .line 33
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onDestroy()V

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 66
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPause()V

    .line 54
    invoke-virtual {p0, v1, v1}, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->overridePendingTransition(II)V

    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 56
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onResume()V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 50
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->showRecentlyPlayedItem()V

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 45
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoListActivity;->videoList:Lcom/sec/android/app/videoplayer/view/VideoListView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoListView;->onStop()V

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 61
    return-void
.end method
