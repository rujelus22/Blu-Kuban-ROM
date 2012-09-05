.class public abstract Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;
.super Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;
.source "MXController.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;


# instance fields
.field protected mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

.field protected mContext:Landroid/content/Context;

.field protected mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;

.field protected mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;

.field protected mListIsEmpty:Z

.field protected mListSize:I

.field protected mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

.field protected mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

.field protected mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;

    .line 54
    iput v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListSize:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListIsEmpty:Z

    .line 62
    const-string v0, "[MyFiles]"

    const-string v1, "MXController:Controller is created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 69
    move-object v0, p1

    .line 71
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;

    if-eqz v0, :cond_a

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;

    invoke-interface {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;->execute(Ljava/lang/String;)V

    .line 185
    :goto_9
    return-void

    .line 183
    :cond_a
    const-string v0, "mLauncher is null"

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->displayToast(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListIsEmpty:Z

    if-eqz v0, :cond_a

    .line 336
    :cond_8
    const/4 v0, 0x1

    .line 337
    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListSize:I

    goto :goto_9
.end method

.method public getCurrentFolder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v0, :cond_b

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->getFolder()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mListIsEmpty:Z

    if-eqz v0, :cond_a

    .line 342
    :cond_8
    const/4 v0, 0x0

    .line 344
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->getFile(I)Ljava/io/File;

    move-result-object v0

    goto :goto_9
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 348
    int-to-long v0, p1

    return-wide v0
.end method

.method public getThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "path"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    if-eqz v1, :cond_30

    .line 197
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v1, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->getChechedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_d

    .line 212
    .end local v0           #b:Landroid/graphics/Bitmap;
    :goto_c
    return-object v0

    .line 202
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_d
    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {p1}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 205
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v1, p1}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->getThumbnail(Ljava/lang/String;)V

    .line 212
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_30
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public goHomeFolder()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v0, :cond_2c

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    if-eqz v0, :cond_12

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->clearCache()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->cancelDispatch()V

    .line 105
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    if-eqz v0, :cond_1b

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->clear()V

    .line 108
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->canGoHomeFolder()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->getHomeFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->setFolder(Ljava/lang/String;)V

    .line 111
    :cond_2c
    return-void
.end method

.method public goUpFolder()V
    .registers 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v1, :cond_35

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    if-eqz v1, :cond_12

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->clearCache()V

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->cancelDispatch()V

    .line 119
    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    if-eqz v1, :cond_1b

    .line 120
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->clear()V

    .line 122
    :cond_1b
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->getCurrentFolder()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, upfolder:Ljava/io/File;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->canGoUpFolder()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 125
    if-eqz v0, :cond_35

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->setFolder(Ljava/lang/String;)V

    .line 130
    .end local v0           #upfolder:Ljava/io/File;
    :cond_35
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public onFileListChanged(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .parameter "foldername"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, filelist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$3;-><init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method public onFolderChanged(Ljava/lang/String;ZZ)V
    .registers 5
    .parameter "foldername"
    .parameter "canGoUpFolder"
    .parameter "canGoHomeFolder"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    if-eqz v0, :cond_9

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->onFolderChanged(Ljava/lang/String;ZZ)V

    .line 294
    :cond_9
    return-void
.end method

.method public onMaxNumberSelected(I)V
    .registers 8
    .parameter "maxNum"

    .prologue
    const/4 v5, 0x0

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    const v2, 0x7f090044

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->makeAndShowToast(Ljava/lang/String;I)V

    .line 319
    return-void
.end method

.method public onOverSizeSelected(JJ)V
    .registers 11
    .parameter "maxSize"
    .parameter "availableSize"

    .prologue
    const/4 v5, 0x0

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    const v2, 0x7f090043

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    invoke-virtual {v1, v0, v5}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->makeAndShowToast(Ljava/lang/String;I)V

    .line 314
    return-void
.end method

.method public onThumbnailDispatched(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 7
    .parameter "path"
    .parameter "b"

    .prologue
    .line 241
    move-object v1, p1

    .line 242
    .local v1, p:Ljava/lang/String;
    move-object v0, p2

    .line 244
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    if-eqz v2, :cond_12

    .line 245
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    :cond_12
    return-void
.end method

.method public refresh()V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v0, :cond_21

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    if-eqz v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->clearCache()V

    .line 155
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    if-eqz v0, :cond_16

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->clear()V

    .line 158
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->getFolder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->setFolder(Ljava/lang/String;)V

    .line 160
    :cond_21
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .registers 3
    .parameter "foldername"

    .prologue
    .line 133
    if-eqz p1, :cond_2e

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v0, :cond_2e

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->getFolder()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    if-eqz v0, :cond_20

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->clearCache()V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->cancelDispatch()V

    .line 140
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    if-eqz v0, :cond_29

    .line 141
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->clear()V

    .line 143
    :cond_29
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->setFolder(Ljava/lang/String;)V

    .line 146
    :cond_2e
    return-void
.end method

.method public setFolderBrowser(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;)V
    .registers 3
    .parameter "browser"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    if-eqz v0, :cond_10

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->setOnFileListChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->setOnFolerChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;)V

    .line 169
    :cond_10
    return-void
.end method

.method public setItemFactory(Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;)V
    .registers 2
    .parameter "f"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;

    .line 235
    return-void
.end method

.method public setLauncher(Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;

    .line 177
    return-void
.end method

.method public setSelector(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;)V
    .registers 2
    .parameter "selector"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;

    .line 301
    if-eqz p1, :cond_a

    .line 302
    invoke-virtual {p1, p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->setOnOverSizeSelectedListener(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnOverSizeSelectedListener;)V

    .line 303
    invoke-virtual {p1, p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;->setOnMaxNumberSelectedListener(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$OnMaxNumberSelectedListener;)V

    .line 305
    :cond_a
    return-void
.end method

.method public setThumbnailer(Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V
    .registers 3
    .parameter "thumbnailer"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    if-eqz v0, :cond_b

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;

    invoke-interface {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;->setOnThumbnailDispatchedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer$OnThumbnailDispatchedListener;)V

    .line 192
    :cond_b
    return-void
.end method

.method public setView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V
    .registers 2
    .parameter "mxview"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    .line 80
    return-void
.end method
