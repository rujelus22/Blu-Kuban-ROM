.class public Lcom/sec/android/app/videoplayer/activity/MainTab;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "MainTab.java"


# static fields
.field public static final FOLDERS_TAB:I = 0x2

.field public static final LISTS_TAB:I = 0x1

.field private static final NO_SD_CARD_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MainTab"

.field public static final THUMBNAILS_TAB:I

.field public static duplicatedCreation:I


# instance fields
.field private isPause:Z

.field private final localObserver:Landroid/database/ContentObserver;

.field public mMainActivity:Landroid/content/Context;

.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private nSelectedTab:I

.field private final observer:Landroid/os/Handler;

.field public scannerHandler:Landroid/os/Handler;

.field public scannerRunnable:Ljava/lang/Runnable;

.field public tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

.field private tabView_Folders:Landroid/view/View;

.field private tabView_Lists:Landroid/view/View;

.field private tabView_Thumbnails:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->nSelectedTab:I

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Thumbnails:Landroid/view/View;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Lists:Landroid/view/View;

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Folders:Landroid/view/View;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMainActivity:Landroid/content/Context;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->isPause:Z

    .line 216
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->scannerHandler:Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MainTab$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MainTab$5;-><init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->scannerRunnable:Ljava/lang/Runnable;

    .line 385
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MainTab$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/activity/MainTab$6;-><init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    .line 435
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->observer:Landroid/os/Handler;

    .line 437
    new-instance v0, Lcom/sec/android/app/videoplayer/activity/MainTab$7;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->observer:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/videoplayer/activity/MainTab$7;-><init>(Lcom/sec/android/app/videoplayer/activity/MainTab;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->localObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/activity/MainTab;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->isPause:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/activity/MainTab;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->nSelectedTab:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/activity/MainTab;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput p1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->nSelectedTab:I

    return p1
.end method

.method private checkMediaScanner()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->scannerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->scannerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->finish()V

    .line 238
    :goto_1b
    return-void

    .line 236
    :cond_1c
    sput-boolean v1, Lcom/sec/android/app/videoplayer/view/VideoListView;->mMediaScannerFinished:Z

    goto :goto_1b
.end method

.method private initContents()V
    .registers 12

    .prologue
    const v10, 0x7f080004

    const v9, 0x7f080003

    const v7, 0x7f080002

    .line 132
    const-string v4, "MainTab"

    const-string v5, "initContents()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, All:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/DefaultVideoList;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v1, Date:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, Folder:Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v7}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 138
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v10}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v10}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 139
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {p0, v9}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200a0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 142
    const/4 v3, 0x0

    .local v3, tab:I
    :goto_98
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_b8

    .line 144
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, -0x2

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 146
    :cond_b8
    return-void
.end method

.method private initContentsForMDPI()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 149
    const-string v1, "MainTab"

    const-string v2, "initContentsForMDPI()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/videoplayer/activity/DefaultVideoList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v0, Date:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    return-void
.end method

.method private initLayout(I)V
    .registers 4
    .parameter "orientation"

    .prologue
    .line 157
    const-string v0, "MainTab"

    const-string v1, "initLayout() : execute"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Thumbnails:Landroid/view/View;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Lists:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getTabWidget()Lcom/sec/android/touchwiz/widget/TwTabWidget;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Folders:Landroid/view/View;

    .line 163
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->setup()V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MainTab$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/MainTab$1;-><init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 170
    return-void
.end method

.method private isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .registers 13
    .parameter "contentResolver"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 241
    const/4 v8, 0x0

    .line 242
    .local v8, result:Z
    const/4 v6, 0x0

    .line 245
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_4
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    if-eqz v6, :cond_48

    .line 247
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_48

    .line 248
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 249
    const-string v0, "external"

    const-string v1, "volume"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "internal"

    const-string v1, "volume"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :cond_47
    move v8, v10

    .line 254
    :cond_48
    :goto_48
    if-eqz v6, :cond_4e

    .line 255
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4d} :catch_51

    .line 256
    const/4 v6, 0x0

    .line 266
    :cond_4e
    :goto_4e
    return v8

    :cond_4f
    move v8, v9

    .line 249
    goto :goto_48

    .line 258
    :catch_51
    move-exception v7

    .line 260
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MainTab"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaScannerScanning() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz v6, :cond_4e

    .line 262
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    const/4 v6, 0x0

    goto :goto_4e
.end method

.method private setup()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Thumbnails:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MainTab$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/MainTab$2;-><init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Lists:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MainTab$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/MainTab$3;-><init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabView_Folders:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/videoplayer/activity/MainTab$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/activity/MainTab$4;-><init>(Lcom/sec/android/app/videoplayer/activity/MainTab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    return-void
.end method

.method private startNoActivity(I)V
    .registers 7
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 270
    const-string v1, "MainTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startNoActivity() - show sd card no activity. type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/videoplayer/activity/VideoListNoSdActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->startActivity(Landroid/content/Intent;)V

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->finish()V

    .line 275
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/videoplayer/activity/MainTab;->overridePendingTransition(II)V

    .line 276
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 107
    const-string v1, "MainTab"

    const-string v2, "onConfigurationChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v0

    .line 112
    .local v0, index:I
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MainTab;->initLayout(I)V

    .line 114
    packed-switch v0, :pswitch_data_34

    .line 128
    :goto_17
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    return-void

    .line 116
    :pswitch_1b
    sget-object v1, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/videoplayer/activity/ThumbnailVideoList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_17

    .line 119
    :pswitch_23
    sget-object v1, Lcom/sec/android/app/videoplayer/activity/DefaultVideoList;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/DefaultVideoList;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/videoplayer/activity/DefaultVideoList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_17

    .line 122
    :pswitch_2b
    sget-object v1, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/videoplayer/activity/FolderVideoList;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_17

    .line 114
    nop

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_23
        :pswitch_2b
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 57
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/MainTab;->requestWindowFeature(I)Z

    .line 58
    sget v4, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    .line 59
    const-string v4, "MainTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v4, 0x7f030005

    invoke-virtual {p0, v4}, Lcom/sec/android/app/videoplayer/activity/MainTab;->setContentView(I)V

    .line 62
    iput-object p0, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMainActivity:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    .line 65
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMainActivity:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v3

    .line 66
    .local v3, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v4, "current_tab"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->loadIntKey(Ljava/lang/String;I)I

    move-result v2

    .line 68
    .local v2, init_tab:I
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMainActivity:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->setDensityScreen(Landroid/content/Context;)V

    .line 70
    const-string v4, "MainTab"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentTab:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_5f
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->initContents()V

    .line 77
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTab(I)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_67} :catch_7c

    .line 87
    :goto_67
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v4}, Lcom/sec/android/app/videoplayer/activity/MainTab;->initLayout(I)V

    .line 88
    const-string v4, "MainTab"

    const-string v5, "onCreate() - end of onCreate"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 79
    :catch_7c
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MainTab"

    const-string v5, "setCurrentTab() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->finish()V

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MainTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_67
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    .line 358
    sget v3, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    .line 359
    const-string v3, "MainTab"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestroy() duplicatedCreation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMainActivity:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;

    move-result-object v1

    .line 361
    .local v1, spm:Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;
    const-string v3, "current_tab"

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/app/videoplayer/db/SharedPreferenceManager;->saveState(Ljava/lang/String;I)V

    .line 363
    invoke-static {}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->getInstance()Lcom/sec/android/app/videoplayer/popup/VideoDialog;

    move-result-object v2

    .line 364
    .local v2, vd:Lcom/sec/android/app/videoplayer/popup/VideoDialog;
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->dismissAllDialog()V

    .line 365
    invoke-virtual {v2}, Lcom/sec/android/app/videoplayer/popup/VideoDialog;->clearAllDialog()V

    .line 368
    :try_start_3b
    sget v3, Lcom/sec/android/app/videoplayer/activity/MainTab;->duplicatedCreation:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_43

    .line 369
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoThumbnailUtil;->clearThumbnailStuffs()V

    .line 371
    :cond_43
    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4f

    .line 372
    sget-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 373
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/videoplayer/view/VideoListView;->mListInfoArrayList:Ljava/util/ArrayList;
    :try_end_4f
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_4f} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_4f} :catch_58
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4f} :catch_5d

    .line 382
    :cond_4f
    :goto_4f
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onDestroy()V

    .line 383
    return-void

    .line 375
    :catch_53
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4f

    .line 377
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_58
    move-exception v0

    .line 378
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4f

    .line 379
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_5d
    move-exception v0

    .line 380
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "MainTab"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDestory : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 345
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMainActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_c} :catch_16

    .line 351
    :goto_c
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/videoplayer/activity/MainTab;->overridePendingTransition(II)V

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->isPause:Z

    .line 354
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPause()V

    .line 355
    return-void

    .line 347
    :catch_16
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_c
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "state"

    .prologue
    .line 279
    const-string v3, "MainTab"

    const-string v4, "onRestoreInstanceState() is called"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :try_start_7
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_a} :catch_24
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_3a

    .line 299
    :goto_a
    return-void

    .line 282
    :catch_b
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "MainTab"

    const-string v4, "onRestoreInstanceState() error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->finish()V

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MainTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 288
    .end local v0           #e:Ljava/lang/ClassCastException;
    .end local v2           #i:Landroid/content/Intent;
    :catch_24
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "MainTab"

    const-string v4, "onRestoreInstanceState() IllegalArgumentException error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->finish()V

    .line 291
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    .restart local v2       #i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MainTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 293
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #i:Landroid/content/Intent;
    :catch_3a
    move-exception v1

    .line 294
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "MainTab"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RuntimeException occured  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/activity/MainTab;->finish()V

    .line 296
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/videoplayer/activity/MainTab;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .restart local v2       #i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/activity/MainTab;->startActivity(Landroid/content/Intent;)V

    goto :goto_a
.end method

.method public onResume()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 302
    const-string v1, "MainTab"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, "MainTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(), getCurretnTab : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTab()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v1, "MainTab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(), currentTab : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->nSelectedTab:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onResume()V

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 312
    const-string v1, "shared"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 314
    const-string v1, "MainTab"

    const-string v2, "onResume() - support INTERNAL_SD SD card shared"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/activity/MainTab;->startNoActivity(I)V

    .line 340
    :goto_5b
    return-void

    .line 329
    :cond_5c
    iput-boolean v4, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->isPause:Z

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->mMainActivity:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/activity/MainTab;->localObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 339
    const-string v1, "MainTab"

    const-string v2, "onResume() - end of onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 92
    const-string v0, "MainTab"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStart()V

    .line 94
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 97
    const-string v1, "MainTab"

    const-string v2, "onStop()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_7
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStop()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    .line 104
    :goto_a
    return-void

    .line 101
    :catch_b
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method
