.class public Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;
.super Landroid/app/Activity;
.source "MultiSelectorActivity.java"

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

.field mCurrentSelectedItems:[Ljava/lang/String;

.field mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

.field mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;

.field mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

.field mListOrder:I

.field private mMaxFileNumber:I

.field mMaxFileSize:Ljava/lang/Long;

.field mRootFolder:Ljava/lang/String;

.field mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

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
    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mRootFolder:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 102
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mMaxFileSize:Ljava/lang/Long;

    .line 104
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mViewStartSelection:Ljava/lang/Long;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mUseCurrentView:Z

    .line 114
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentSelectedItems:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setResultAndFinish(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->regulatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private linkViewWithComponents()V
    .registers 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;->setExecListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setView(Lcom/sec/android/app/myfiles/fileselector/views/MXView;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setController(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;)V

    .line 198
    return-void
.end method

.method private makeComponents()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 402
    .local v7, i:Landroid/content/Intent;
    const-string v1, "FOLDERPATH"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 403
    const-string v1, "FOLDERPATH"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 404
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_35

    .line 406
    :cond_2f
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 410
    :cond_35
    const-string v1, "SHOW_PRINTABLE_FILE"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 412
    .local v6, bShowPrintable:Ljava/lang/Boolean;
    const/4 v0, 0x0

    .line 414
    .local v0, filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 415
    const-string v1, "CONTENT_TYPE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mContentType:Ljava/lang/String;

    .line 416
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;

    .end local v0           #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;-><init>(Ljava/lang/String;ZZZLandroid/content/Context;)V

    .line 424
    .restart local v0       #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    :goto_5c
    const-string v1, "IS_SETAS_MODE"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;->setSetasMode(Z)V

    .line 426
    const-string v1, "USE_CURRENT_VIEW"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mUseCurrentView:Z

    .line 428
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-direct {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setFilnameFilter(Ljava/io/FilenameFilter;)V

    .line 431
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setHomeFolder(Ljava/lang/String;)V

    .line 434
    const-string v1, "MAX_FILE_NUMBER"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 435
    const-string v1, "MAX_FILE_NUMBER"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mMaxFileNumber:I

    .line 438
    :cond_90
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a5

    .line 439
    const-string v1, "MAX_FILE_SIZE_IN_KB"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mMaxFileSize:Ljava/lang/Long;

    .line 442
    :cond_a5
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    iget v2, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mMaxFileNumber:I

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mMaxFileSize:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;-><init>(IJ)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mMaxFileSize:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->setMaxSize(J)V

    .line 446
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    .line 449
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

    .line 451
    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;-><init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;

    .line 453
    return-void

    .line 417
    :cond_db
    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v8

    .local v8, type:Ljava/lang/String;
    if-eqz v8, :cond_f1

    .line 418
    iput-object v8, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mContentType:Ljava/lang/String;

    .line 419
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;

    .end local v0           #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;-><init>(Ljava/lang/String;ZZZLandroid/content/Context;)V

    .restart local v0       #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    goto/16 :goto_5c

    .line 421
    :cond_f1
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;

    .end local v0           #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    const-string v1, "*/*"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;-><init>(Ljava/lang/String;ZZZLandroid/content/Context;)V

    .restart local v0       #filter:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXMimeFilter;
    goto/16 :goto_5c
.end method

.method private regulatePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "title"

    .prologue
    .line 558
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 561
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
    .line 461
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 463
    .local v2, result:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->getSelectedFile()[Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, file:[Ljava/lang/String;
    if-eqz p1, :cond_18

    .line 465
    if-eqz v0, :cond_1c

    .line 466
    const-string v3, "FILE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 476
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->finish()V

    .line 477
    :goto_1b
    return-void

    .line 469
    :cond_1c
    const v3, 0x7f09003d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, msg:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->makeAndShowToast(Ljava/lang/String;I)V

    goto :goto_1b
.end method

.method private startFileObserver()V
    .registers 3

    .prologue
    .line 201
    new-instance v0, Lcom/sec/android/app/myfiles/MXFileObserver;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/myfiles/MXFileObserver;-><init>(Ljava/lang/String;Lcom/sec/android/app/myfiles/MXFileObserver$MXObserverFileChanged;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/MXFileObserver;->startWatching()V

    .line 203
    return-void
.end method

.method private stopFileObserver()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    if-eqz v0, :cond_c

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/MXFileObserver;->stopWatching()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->observer:Lcom/sec/android/app/myfiles/MXFileObserver;

    .line 210
    :cond_c
    return-void
.end method


# virtual methods
.method protected initViews()V
    .registers 3

    .prologue
    .line 380
    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->initViews()V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->setTitleBar(Lcom/sec/android/app/myfiles/fileselector/views/MXTitleBar;)V

    .line 385
    const v0, 0x7f0c0033

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->getRightButton()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 317
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 318
    packed-switch p1, :pswitch_data_2c

    .line 333
    :cond_6
    :goto_6
    return-void

    .line 320
    :pswitch_7
    const/4 v3, -0x1

    if-ne p2, v3, :cond_6

    .line 321
    const-string v3, "uri-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 322
    const-string v3, "uri-data"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 323
    .local v2, selected:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, file:Ljava/io/File;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->setSelected(Ljava/io/File;)V

    goto :goto_6

    .line 318
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 456
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 458
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 309
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_f

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->rotate(I)V

    .line 314
    :cond_e
    :goto_e
    return-void

    .line 311
    :cond_f
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_e

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->rotate(I)V

    goto :goto_e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const-string v0, "MultiSelectorActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sput-object p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mContext:Landroid/content/Context;

    .line 125
    iput-object p0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->instanceOfThis:Landroid/app/Activity;

    .line 127
    sget-object v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->isMountedStateCheck(Landroid/content/Context;)V

    .line 129
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->requestWindowFeature(I)Z

    .line 130
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setContentView(I)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->initViews()V

    .line 134
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 136
    const-string v0, "MultiSelectorActivity"

    const-string v1, "SD card is being used as a mass storage device"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const v0, 0x7f090042

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 142
    :goto_44
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->finish()V

    .line 192
    :goto_47
    return-void

    .line 139
    :cond_48
    const-string v0, "MultiSelectorActivity"

    const-string v1, "No SD card inserted"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const v0, 0x7f090041

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_44

    .line 146
    :cond_5a
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->makeComponents()V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->setSelecterChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector$onSelecterChangedListener;)V

    .line 151
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mLauncher:Lcom/sec/android/app/myfiles/fileselector/components/MXSelectorLauncher;

    iget-object v5, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    iget-object v6, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mItemFactory:Lcom/sec/android/app/myfiles/fileselector/views/items/MXMultiSelectItemFactory;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;-><init>(Landroid/content/Context;Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;Lcom/sec/android/app/myfiles/fileselector/components/MXThumbnailer;Lcom/sec/android/app/myfiles/fileselector/components/MXLauncher;Lcom/sec/android/app/myfiles/fileselector/components/selector/MXSelector;Lcom/sec/android/app/myfiles/fileselector/views/items/MXItemFactory;)V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v10}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolderSelect(Z)V

    .line 155
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->linkViewWithComponents()V

    .line 157
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mUseCurrentView:Z

    if-eqz v0, :cond_b2

    .line 158
    const-string v0, "MyFiles"

    invoke-virtual {p0, v0, v10}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 160
    .local v9, pref:Landroid/content/SharedPreferences;
    const-string v0, "current_view"

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 161
    .local v7, currentView:I
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getCurrentDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 162
    const-string v0, "current_sort_by"

    invoke-interface {v9, v0, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mListOrder:I

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->changeViewMode(I)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mListOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setListOrder(I)V

    .line 167
    .end local v7           #currentView:I
    .end local v9           #pref:Landroid/content/SharedPreferences;
    :cond_b2
    if-eqz p1, :cond_eb

    .line 168
    const-string v0, "START_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 169
    const-string v0, "START_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 170
    :cond_c4
    const-string v0, "CURRENT_VIEWMODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 172
    :try_start_cc
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v0

    const-string v1, "CURRENT_VIEWMODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->changeViewMode(Ljava/lang/String;)V
    :try_end_db
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_cc .. :try_end_db} :catch_124

    .line 176
    :cond_db
    :goto_db
    const-string v0, "CURRENT_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 177
    const-string v0, "CURRENT_FOLDER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 181
    :cond_eb
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 183
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->setMXOnBroadcastReceivedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver$MXOnBroadcastReceivedListener;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    sget-object v1, Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;->MXBroadcastIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    .line 188
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->setMXOnHeadsetReceivedListener(Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver$MXOnHeadsetReceivedListener;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    sget-object v1, Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;->MXHeadsetIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolder(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 173
    :catch_124
    move-exception v8

    .line 174
    .local v8, e:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
    const-string v0, "MultiSelectorActivity"

    const-string v1, "ViewModeNotExistException"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_db
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 482
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->stopFileObserver()V

    .line 361
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 362
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 363
    :cond_15
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setExecutable(Z)V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    if-eqz v0, :cond_25

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBroadCastReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    :cond_25
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    if-eqz v0, :cond_2e

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mHeadsetReceiver:Lcom/sec/android/app/myfiles/fileselector/components/MXHeadsetReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->showWaitProgressDialog(Z)V

    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 376
    return-void
.end method

.method public onFileChanged()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->refresh()V

    .line 214
    return-void
.end method

.method public onHeadsetUnplugged()V
    .registers 2

    .prologue
    .line 631
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 632
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 633
    :cond_11
    return-void
.end method

.method public onMediaMounted()V
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->refresh()V

    .line 589
    return-void
.end method

.method public onMediaUnMounted(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"

    .prologue
    .line 599
    sget-boolean v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 601
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mRootFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolder(Ljava/lang/String;)V

    .line 605
    :goto_17
    return-void

    .line 603
    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->setResultAndFinish(Z)V

    goto :goto_17
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    .line 492
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 493
    .local v1, b:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->getListOrder()I

    move-result v3

    rem-int/lit8 v2, v3, 0x4

    .line 494
    .local v2, listorder:I
    iput v2, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mListOrder:I

    .line 495
    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 496
    const v3, 0x7f060001

    new-instance v4, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$3;-><init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 545
    .local v0, ad:Landroid/app/AlertDialog;
    const/4 v3, -0x2

    const v4, 0x7f090012

    invoke-virtual {p0, v4}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$4;-><init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 552
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 554
    const/4 v3, 0x1

    return v3
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->startFileObserver()V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 340
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 341
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 342
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setExecutable(Z)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    if-eqz v0, :cond_2d

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->stopThumbnailer()V

    .line 347
    :cond_2d
    const-string v0, "MultiSelectorActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->showWaitProgressDialog(Z)V

    .line 350
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 351
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 487
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 233
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string v1, "START_FOLDER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    .line 291
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->getContentFrame()Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;

    move-result-object v1

    const-string v2, "CURRENT_VIEWMODE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame;->changeViewMode(Ljava/lang/String;)V
    :try_end_1a
    .catch Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException; {:try_start_b .. :try_end_1a} :catch_2a

    .line 302
    :goto_1a
    const-string v1, "CURRENT_FOLDER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 304
    const-string v1, "MultiSelectorActivity"

    const-string v2, "onRestoreInstanceState"

    invoke-static {v1, v2}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void

    .line 292
    :catch_2a
    move-exception v0

    .line 293
    .local v0, e:Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;
    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXContentFrame$ViewModeNotExistException;->printStackTrace()V

    goto :goto_1a
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 237
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setExecutable(Z)V

    .line 238
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 239
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 241
    :cond_1c
    const-string v0, "MultiSelectorActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    if-eqz v0, :cond_2c

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mThumbnailer:Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXBaseThumbnailer;->startThumbnailer()V

    .line 254
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    if-nez v0, :cond_3b

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;->setFolder(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 260
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentSelectedItems:[Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentSelectedItems:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->setSelectedFiles([Ljava/lang/String;)V

    .line 263
    :cond_46
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->refresh()V

    .line 266
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnListPlayCompletionListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayCompletionListener;)V

    .line 267
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnListPlayListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayListener;)V

    .line 268
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mController:Lcom/sec/android/app/myfiles/fileselector/controllers/MXSelectorController;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setOnListPlayErrorListener(Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer$OnListPlayErrorListener;)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_73

    .line 270
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->setAudioManager(Landroid/media/AudioManager;)V

    .line 272
    :cond_73
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->stopFileObserver()V

    .line 273
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mBrowser:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->getFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    .line 279
    const-string v0, "START_FOLDER"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mStartFolder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "CURRENT_FOLDER"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "IS_SHOWING_VIEW_MODE_DLG"

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseView;->isShowingViewModeDlg()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    const-string v0, "MultiSelectorActivity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/Util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public onSelecterChanged(I)V
    .registers 4
    .parameter "count"

    .prologue
    .line 624
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSelector:Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/selector/MXMultiSelector;->getCount()I

    move-result v0

    if-nez v0, :cond_f

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->setLeftKeyEnable(Z)V

    .line 628
    :goto_e
    return-void

    .line 627
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mSoftKey:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseSoftKey;->setLeftKeyEnable(Z)V

    goto :goto_e
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 229
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 354
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 355
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 356
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 357
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 6
    .parameter "title"
    .parameter "color"

    .prologue
    .line 217
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 220
    .local v0, w:Landroid/view/Window;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    if-nez v1, :cond_23

    .line 221
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->mTitleBar:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 225
    :cond_23
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3
    .parameter "title"

    .prologue
    .line 565
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$5;-><init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 579
    return-void
.end method
