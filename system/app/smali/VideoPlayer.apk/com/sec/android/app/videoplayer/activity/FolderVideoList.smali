.class public Lcom/sec/android/app/videoplayer/activity/FolderVideoList;
.super Landroid/app/Activity;
.source "FolderVideoList.java"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field private videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->setSplitWidth()V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sput-object p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    if-nez v0, :cond_11

    .line 25
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    .line 27
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->setContentView(Landroid/view/View;)V

    .line 28
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->onDestroy()V

    .line 56
    :try_start_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_8} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_8} :catch_e

    .line 62
    :goto_8
    return-void

    .line 57
    :catch_9
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_8

    .line 59
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_e
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->onPause(I)V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 50
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 32
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->mLayoutNeeded:Z

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->onResume(I)V

    .line 43
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->setSplitWidth()V

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 45
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->videoList:Lcom/sec/android/app/videoplayer/view/VideoSplitView;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/view/VideoSplitView;->onStart()V

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 38
    return-void
.end method
