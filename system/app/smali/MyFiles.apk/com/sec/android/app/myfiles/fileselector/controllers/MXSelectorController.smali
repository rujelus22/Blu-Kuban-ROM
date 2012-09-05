.class public Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;
.super Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;
.source "MXSelectorController.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;


# instance fields
.field private final PROGRES_DISMISS:I

.field private final PROGRES_SHOW:I

.field mWaitProgressHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;)V
    .registers 8
    .parameter "context"
    .parameter "browser"
    .parameter "thumbnailer"
    .parameter "launcher"
    .parameter "selector"
    .parameter "factory"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;-><init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->PROGRES_SHOW:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->PROGRES_DISMISS:I

    .line 226
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->mWaitProgressHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method


# virtual methods
.method public goHomeFolder()V
    .registers 2

    .prologue
    .line 65
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 67
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 71
    :cond_11
    invoke-super {p0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->goHomeFolder()V

    .line 73
    return-void
.end method

.method public goUpFolder()V
    .registers 2

    .prologue
    .line 77
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 79
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 83
    :cond_11
    invoke-super {p0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->goUpFolder()V

    .line 85
    return-void
.end method

.method public onCompletion(Ljava/lang/String;)V
    .registers 6
    .parameter "playingpath"

    .prologue
    .line 143
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getCurrentContentView()Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 145
    .local v0, currentview:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "mx_content_list"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    .line 149
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    .line 152
    .local v1, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    if-eqz v1, :cond_25

    .line 156
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setStop()V
    :try_end_25
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_0 .. :try_end_25} :catch_26

    .line 166
    .end local v0           #currentview:Landroid/view/View;
    .end local v1           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :cond_25
    :goto_25
    return-void

    .line 162
    :catch_26
    move-exception v2

    goto :goto_25
.end method

.method public onFolderChanged(Ljava/lang/String;ZZ)V
    .registers 6
    .parameter "foldername"
    .parameter "canGoUpFolder"
    .parameter "canGoHomeFolder"

    .prologue
    .line 201
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->onFolderChanged(Ljava/lang/String;ZZ)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->mWaitProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->mWaitProgressHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 206
    return-void
.end method

.method public onListPlayError(Ljava/lang/String;)V
    .registers 6
    .parameter "playingpath"

    .prologue
    .line 172
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getCurrentContentView()Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 174
    .local v0, currentview:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "mx_content_list"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    .line 181
    .local v1, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    if-eqz v1, :cond_25

    .line 185
    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setStop()V
    :try_end_25
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_0 .. :try_end_25} :catch_26

    .line 195
    .end local v0           #currentview:Landroid/view/View;
    .end local v1           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :cond_25
    :goto_25
    return-void

    .line 191
    :catch_26
    move-exception v2

    goto :goto_25
.end method

.method public onListPlaying(Ljava/lang/String;II)V
    .registers 8
    .parameter "playingpath"
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->getCurrentContentView()Lcom/sec/android/app/myfiles/fileselector/views/MXContentView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    .local v0, currentview:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "mx_content_list"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    .line 120
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    .line 123
    .local v1, item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    if-eqz v1, :cond_25

    .line 127
    invoke-virtual {v1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setPlaying(II)V
    :try_end_25
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_0 .. :try_end_25} :catch_26

    .line 137
    .end local v0           #currentview:Landroid/view/View;
    .end local v1           #item:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
    :cond_25
    :goto_25
    return-void

    .line 133
    :catch_26
    move-exception v2

    goto :goto_25
.end method

.method public setFolder(Ljava/lang/String;)V
    .registers 8
    .parameter "foldername"

    .prologue
    const/4 v5, 0x0

    .line 88
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->mWaitProgressHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->mWaitProgressHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 94
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, playingFolder:Ljava/io/File;
    :try_start_24
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_35

    .line 99
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_39

    .line 105
    .end local v1           #playingFolder:Ljava/io/File;
    :cond_35
    :goto_35
    invoke-super {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseController;->setFolder(Ljava/lang/String;)V

    .line 106
    return-void

    .line 100
    .restart local v1       #playingFolder:Ljava/io/File;
    :catch_39
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public setFolderSelect(Z)V
    .registers 2
    .parameter "folderSelect"

    .prologue
    .line 61
    return-void
.end method
