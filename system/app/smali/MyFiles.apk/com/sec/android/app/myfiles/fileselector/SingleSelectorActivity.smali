.class public Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;
.super Landroid/app/Activity;
.source "SingleSelectorActivity.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;
.implements Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field instanceOfThis:Landroid/app/Activity;

.field mAudioManager:Landroid/media/AudioManager;

.field mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

.field mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

.field mContentType:Ljava/lang/String;

.field mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

.field mCurrentFolder:Ljava/lang/String;

.field mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

.field mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;

.field mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

.field mListOrder:I

.field mMaxFileSize:Ljava/lang/Long;

.field mRootFolder:Ljava/lang/String;

.field mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

.field mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

.field mStartFolder:Ljava/lang/String;

.field mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

.field mTitleBar:Landroid/widget/TextView;

.field mUseCurrentView:Z

.field mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

.field mViewStartSelection:Ljava/lang/Long;

.field observer:Lcom/sec/android/app/myfiles/MXFileObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mRootFolder:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mMaxFileSize:Ljava/lang/Long;

    .line 104
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mViewStartSelection:Ljava/lang/Long;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mUseCurrentView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->setResultAndFinish(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->regulatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private linkViewWithComponents()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;->setExecListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setController(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;)V

    .line 204
    return-void
.end method

.method private makeComponents()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 411
    .local v7, i:Landroid/content/Intent;
    const-string v1, "FOLDERPATH"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 412
    const-string v1, "FOLDERPATH"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_3c

    .line 416
    :cond_2f
    const-string v1, "SingleSelectorActivity"

    const-string v4, "mStartFolder is not a diretory."

    invoke-static {v1, v4}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 420
    :cond_3c
    const-string v1, "SHOW_PRINTABLE_FILE"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 422
    .local v6, bShowPrintable:Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 425
    .local v0, filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 426
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mContentType:Ljava/lang/String;

    .line 427
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;

    .end local v0           #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;-><init>(Ljava/lang/String;ZZZLandroid/content/Context;)V

    .line 435
    .restart local v0       #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    :goto_63
    const-string v1, "IS_SETAS_MODE"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->setSetasMode(Z)V

    .line 437
    const-string v1, "USE_CURRENT_VIEW"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mUseCurrentView:Z

    .line 439
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-direct {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setFilnameFilter(Ljava/io/FilenameFilter;)V

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setHomeFolder(Ljava/lang/String;)V

    .line 445
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 446
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mMaxFileSize:Ljava/lang/Long;

    .line 449
    :cond_9c
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-direct {v1}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    .line 450
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mMaxFileSize:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->setMaxSize(J)V

    .line 453
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    .line 456
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

    .line 459
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;-><init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;

    .line 460
    return-void

    .line 428
    :cond_ca
    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .local v8, type:Ljava/lang/String;
    if-eqz v8, :cond_df

    .line 429
    iput-object v8, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mContentType:Ljava/lang/String;

    .line 430
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;

    .end local v0           #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;-><init>(Ljava/lang/String;ZZZLandroid/content/Context;)V

    .restart local v0       #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    goto :goto_63

    .line 432
    :cond_df
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;

    .end local v0           #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    const-string v1, "*/*"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;-><init>(Ljava/lang/String;ZZZLandroid/content/Context;)V

    .restart local v0       #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    goto/16 :goto_63
.end method

.method private regulatePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "title"

    .prologue
    .line 597
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 600
    .end local p1
    :goto_8
    return-object p1

    .restart local p1
    :cond_9
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private setResultAndFinish(Z)V
    .registers 7
    .parameter "isOk"

    .prologue
    .line 469
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v2, result:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->getSelectedFile()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, file:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 474
    if-eqz p1, :cond_55

    .line 475
    if-eqz v0, :cond_59

    .line 476
    const-string v3, "FILE"

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->getSelectedFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v3, "FILE_URI"

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->getSelectedFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/sec/android/app/myfiles/FileUtils;->pathToUri(Ljava/lang/String;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 480
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->getSelectedFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 481
    const-string v3, "CONTENT_TYPE"

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v4}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->getSelectedFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/myfiles/MediaFile;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 491
    :cond_55
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->finish()V

    .line 492
    :goto_58
    return-void

    .line 484
    :cond_59
    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->makeAndShowToast(Ljava/lang/String;I)V

    goto :goto_58
.end method

.method private startFileObserver()V
    .registers 3

    .prologue
    .line 207
    new-instance v0, Lcom/sec/android/app/myfiles/MXFileObserver;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/myfiles/MXFileObserver;-><init>(Ljava/lang/String;Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/MXFileObserver;->startWatching()V

    .line 209
    return-void
.end method

.method private stopFileObserver()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    if-eqz v0, :cond_c

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/MXFileObserver;->stopWatching()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    .line 216
    :cond_c
    return-void
.end method


# virtual methods
.method protected initViews()V
    .registers 3

    .prologue
    .line 387
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->initViews()V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setTitleBar(Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;)V

    .line 392
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 321
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 323
    packed-switch p1, :pswitch_data_2c

    .line 337
    :cond_6
    :goto_6
    return-void

    .line 325
    :pswitch_7
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    .line 326
    const-string v3, "uri-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 327
    const-string v3, "uri-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 328
    .local v2, selected:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, file:Ljava/io/File;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->setSelected(Ljava/io/File;)V

    goto :goto_6

    .line 323
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 463
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 464
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 465
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 312
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_f

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->rotate(I)V

    .line 317
    :cond_e
    :goto_e
    return-void

    .line 314
    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_e

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->rotate(I)V

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sput-object p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mContext:Landroid/content/Context;

    .line 119
    const-string v0, "SingleSelectorActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput-object p0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->instanceOfThis:Landroid/app/Activity;

    .line 123
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->requestWindowFeature(I)Z

    .line 124
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->setContentView(I)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->initViews()V

    .line 128
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_55

    .line 137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 138
    const-string v0, "SingleSelectorActivity"

    const-string v1, "SD card is being used as a mass storage device"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const v0, 0x7f090042

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    :goto_3f
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->finish()V

    .line 197
    :goto_42
    return-void

    .line 141
    :cond_43
    const-string v0, "SingleSelectorActivity"

    const-string v1, "No SD card inserted"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const v0, 0x7f090041

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3f

    .line 149
    :cond_55
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->makeComponents()V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->setSelecterChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;)V

    .line 154
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXSingleSelectItemFactory;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;-><init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolderSelect(Z)V

    .line 157
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->linkViewWithComponents()V

    .line 159
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mUseCurrentView:Z

    if-eqz v0, :cond_ad

    .line 160
    const-string v0, "MyFiles"

    invoke-virtual {p0, v0, v10}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 162
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v0, "current_view"

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 163
    .local v7, currentView:I
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 164
    const-string v0, "current_sort_by"

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mListOrder:I

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->changeViewMode(I)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mListOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    .line 169
    .end local v7           #currentView:I
    .end local v9           #pref:Landroid/content/SharedPreferences;
    :cond_ad
    if-eqz p1, :cond_e6

    .line 170
    const-string v0, "START_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 171
    const-string v0, "START_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 173
    :cond_bf
    const-string v0, "CURRENT_VIEWMODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 175
    :try_start_c7
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v0

    const-string v1, "CURRENT_VIEWMODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->changeViewMode(Ljava/lang/String;)V
    :try_end_d6
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_c7 .. :try_end_d6} :catch_11f

    .line 181
    :cond_d6
    :goto_d6
    const-string v0, "CURRENT_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 182
    const-string v0, "CURRENT_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 186
    :cond_e6
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 188
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->setMXOnBroadcastReceivedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;)V

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    sget-object v1, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->setMXOnHeadsetReceivedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;)V

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    sget-object v1, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->MXHeadsetIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolder(Ljava/lang/String;)V

    goto/16 :goto_42

    .line 176
    :catch_11f
    move-exception v8

    .line 177
    .local v8, e:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
    const-string v0, "SingleSelectorActivity"

    const-string v1, "ViewModeNotExistException"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 496
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 497
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->stopFileObserver()V

    .line 367
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 368
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 370
    :cond_15
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setExecutable(Z)V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    if-eqz v0, :cond_25

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 374
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    if-eqz v0, :cond_2e

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 378
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->showWaitProgressDialog(Z)V

    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 382
    return-void
.end method

.method public onFileChanged()V
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->refresh()V

    .line 220
    return-void
.end method

.method public onHeadsetUnplugged()V
    .registers 2

    .prologue
    .line 662
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 663
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 664
    :cond_11
    return-void
.end method

.method public onMediaMounted()V
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->refresh()V

    .line 622
    return-void
.end method

.method public onMediaUnMounted(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 626
    sget-boolean v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mRootFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolder(Ljava/lang/String;)V

    .line 632
    :goto_17
    return-void

    .line 630
    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->setResultAndFinish(Z)V

    goto :goto_17
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    .line 508
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    .local v1, b:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->getListOrder()I

    move-result v3

    rem-int/lit8 v2, v3, 0x4

    .line 510
    .local v2, listorder:I
    iput v2, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mListOrder:I

    .line 512
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 513
    const v3, 0x7f060001

    new-instance v4, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$3;-><init>(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 586
    .local v0, ad:Landroid/app/AlertDialog;
    const/4 v3, -0x2

    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$4;-><init>(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 592
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 593
    const/4 v3, 0x1

    return v3
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 341
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->startFileObserver()V

    .line 343
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 344
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 345
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setExecutable(Z)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    if-eqz v0, :cond_2d

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->stopThumbnailer()V

    .line 350
    :cond_2d
    const-string v0, "SingleSelectorActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->showWaitProgressDialog(Z)V

    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 355
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 502
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 503
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 240
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 296
    const-string v1, "START_FOLDER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 299
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v1

    const-string v2, "CURRENT_VIEWMODE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->changeViewMode(Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_b .. :try_end_1a} :catch_2a

    .line 303
    :goto_1a
    const-string v1, "CURRENT_FOLDER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 305
    const-string v1, "SingleSelectorActivity"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void

    .line 300
    :catch_2a
    move-exception v0

    .line 301
    .local v0, e:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;->printStackTrace()V

    goto :goto_1a
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isMountedStateCheck(Landroid/content/Context;)V

    .line 247
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setExecutable(Z)V

    .line 249
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 250
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 252
    :cond_21
    const-string v0, "SingleSelectorActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    if-eqz v0, :cond_31

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->startThumbnailer()V

    .line 265
    :cond_31
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolder(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 273
    :cond_40
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnListPlayCompletionListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;)V

    .line 274
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnListPlayListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;)V

    .line 275
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnListPlayErrorListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_68

    .line 277
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setAudioManager(Landroid/media/AudioManager;)V

    .line 279
    :cond_68
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->stopFileObserver()V

    .line 280
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 286
    const-string v0, "START_FOLDER"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "CURRENT_FOLDER"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "IS_SHOWING_VIEW_MODE_DLG"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->isShowingViewModeDlg()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    const-string v0, "SingleSelectorActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public onSelecterChanged(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSingleSelector;->getCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->setLeftKeyEnable(Z)V

    .line 659
    :goto_e
    return-void

    .line 655
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->setLeftKeyEnable(Z)V

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->requestFocusLeftButton()V

    goto :goto_e
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 236
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 359
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 360
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 361
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 362
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 6
    .parameter "title"
    .parameter "color"

    .prologue
    .line 223
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 227
    .local v0, w:Landroid/view/Window;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    if-nez v1, :cond_23

    .line 228
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 232
    :cond_23
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 604
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity$5;-><init>(Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/SingleSelectorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 618
    return-void
.end method
