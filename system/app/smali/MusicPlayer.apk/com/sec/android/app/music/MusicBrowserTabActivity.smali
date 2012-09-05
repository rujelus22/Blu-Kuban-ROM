.class public Lcom/sec/android/app/music/MusicBrowserTabActivity;
.super Lcom/sec/android/touchwiz/widget/TwTabActivity;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Lcom/sec/android/app/music/common/util/OnLowBatteryListener;
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field private static final TAB_SPEC_TAG:[[I


# instance fields
.field private mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContentChangedListenHandler:Landroid/os/Handler;

.field mCorePlayerService:Lcom/sec/android/app/music/ICorePlayerService;

.field private mCurrentTab:Ljava/lang/String;

.field private mDoNotRefresh:Z

.field private mFastforwardLongPress:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLoadingProgress:Landroid/app/ProgressDialog;

.field private final mLoadingProgressBarHandler:Landroid/os/Handler;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMenuBigpondmusicOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mNowPlayingButton:Landroid/view/View;

.field private mNowPlayingProgressBar:Landroid/widget/ProgressBar;

.field private final mNowPlayingProgressBarHandler:Landroid/os/Handler;

.field private mNumberOfContentChangedCalled:I

.field private final mPlayerStatusListener:Landroid/content/BroadcastReceiver;

.field private mRewindLongPress:Z

.field private final mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private final mShowTipDialog:Landroid/os/Handler;

.field private mStart:Z

.field private mSweepInteractionDialog:Landroid/app/Dialog;

.field private final mTabContent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private final mToastMessageHandler:Landroid/os/Handler;

.field private mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 97
    const-class v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_50

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_58

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_60

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_68

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_70

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_78

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_80

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->TAB_SPEC_TAG:[[I

    return-void

    nop

    :array_50
    .array-data 0x4
        0x1et 0x0t 0x9t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
    .end array-data

    :array_58
    .array-data 0x4
        0x1ft 0x0t 0x9t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
    .end array-data

    :array_60
    .array-data 0x4
        0x20t 0x0t 0x9t 0x7ft
        0x2bt 0x0t 0x2t 0x7ft
    .end array-data

    :array_68
    .array-data 0x4
        0x21t 0x0t 0x9t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
    .end array-data

    :array_70
    .array-data 0x4
        0x22t 0x0t 0x9t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
    .end array-data

    :array_78
    .array-data 0x4
        0x27t 0x0t 0x9t 0x7ft
        0x2ft 0x0t 0x2t 0x7ft
    .end array-data

    :array_80
    .array-data 0x4
        0x23t 0x0t 0x9t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
    .end array-data

    :array_88
    .array-data 0x4
        0x24t 0x0t 0x9t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;-><init>()V

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mDoNotRefresh:Z

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mTabContent:Ljava/util/HashMap;

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSweepInteractionDialog:Landroid/app/Dialog;

    .line 164
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$1;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 183
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$2;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$3;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    .line 249
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$4;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToastMessageHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$5;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 315
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$6;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 338
    iput v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNumberOfContentChangedCalled:I

    .line 347
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$7;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mContentChangedListenHandler:Landroid/os/Handler;

    .line 418
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$8;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mMenuBigpondmusicOnClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 587
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$10;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mShowTipDialog:Landroid/os/Handler;

    .line 699
    iput-boolean v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mStart:Z

    .line 1545
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$23;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    .line 1730
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$27;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$27;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerNowPlayingButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->updateNowPlayingView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/MusicBrowserTabActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNumberOfContentChangedCalled:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/music/MusicBrowserTabActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNumberOfContentChangedCalled:I

    return p1
.end method

.method static synthetic access$1008(Lcom/sec/android/app/music/MusicBrowserTabActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNumberOfContentChangedCalled:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNumberOfContentChangedCalled:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mStart:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/music/MusicBrowserTabActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setAutoReQuery(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mContentChangedListenHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->enableSplitView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mDoNotRefresh:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSweepInteractionDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/music/MusicBrowserTabActivity;[II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setTone([II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToastMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mFastforwardLongPress:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/music/MusicBrowserTabActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mFastforwardLongPress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mRewindLongPress:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/music/MusicBrowserTabActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mRewindLongPress:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/music/MusicBrowserTabActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/music/MusicBrowserTabActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->invalidateRightViews()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->refreshCurrentListView()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->reQueryCurrentListView()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/MusicBrowserTabActivity;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/music/MusicBrowserTabActivity;Lcom/sec/android/app/music/common/util/BatteryChecker;)Lcom/sec/android/app/music/common/util/BatteryChecker;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    return-object p1
.end method

.method private closeCurrentListCursor()V
    .registers 5

    .prologue
    .line 690
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_18

    .line 691
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mTabContent:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .line 693
    .local v1, view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    if-eqz v1, :cond_15

    .line 694
    invoke-interface {v1}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->closeListCursor()V

    .line 690
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 697
    .end local v1           #view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    :cond_18
    return-void
.end method

.method private createSweepInteractionDialog()Landroid/app/Dialog;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 607
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 610
    .local v7, mInflater:Landroid/view/LayoutInflater;
    new-instance v6, Landroid/view/ContextThemeWrapper;

    const v3, 0x103000c

    invoke-direct {v6, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 611
    .local v6, dialogContext:Landroid/content/Context;
    const v3, 0x7f030025

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 612
    .local v1, body:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 614
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09015a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move v3, v2

    move v4, v2

    move v5, v2

    .line 616
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 618
    const v2, 0x7f0900a1

    new-instance v3, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity$11;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSweepInteractionDialog:Landroid/app/Dialog;

    .line 632
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSweepInteractionDialog:Landroid/app/Dialog;

    return-object v2
.end method

.method private enableSplitView()V
    .registers 3

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 640
    .local v0, rotation:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 641
    :cond_12
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setSplitViewVisibility(I)V

    .line 646
    :goto_16
    return-void

    .line 644
    :cond_17
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setSplitViewVisibility(I)V

    goto :goto_16
.end method

.method private invalidateRightViews()V
    .registers 3

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, v:Landroid/view/View;
    instance-of v1, v0, Lcom/sec/android/app/music/MusicContentSplitListView;

    if-eqz v1, :cond_11

    .line 673
    check-cast v0, Lcom/sec/android/app/music/MusicContentSplitListView;

    .end local v0           #v:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentSplitListView;->invalidateRightViews()V

    .line 675
    :cond_11
    return-void
.end method

.method private prepareContextMenu(Landroid/view/ContextMenu;)V
    .registers 11
    .parameter

    .prologue
    const/16 v8, 0x16

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 959
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 963
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 964
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_51

    .line 965
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 966
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 967
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 968
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 969
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 970
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1017
    :goto_50
    return-void

    .line 976
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/music/MusicUtils;->isItemInQuickList(Landroid/content/Context;J)Z

    move-result v4

    .line 977
    if-nez v0, :cond_7b

    move v0, v1

    move v3, v1

    .line 1001
    :goto_5f
    if-eqz v3, :cond_a3

    .line 1002
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1006
    :goto_68
    if-eqz v0, :cond_ab

    .line 1007
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1012
    :goto_71
    if-eqz v4, :cond_b3

    .line 1013
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_50

    .line 981
    :cond_7b
    new-instance v3, Lcom/sec/android/app/music/common/manager/MusicDrmManager;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;-><init>(Landroid/content/Context;)V

    .line 984
    :try_start_80
    invoke-virtual {v3, v0}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->isDrmFile(Ljava/lang/String;)Z
    :try_end_83
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_83} :catch_8f

    move-result v0

    .line 990
    if-eqz v0, :cond_bd

    .line 991
    invoke-virtual {v3}, Lcom/sec/android/app/music/common/manager/MusicDrmManager;->getOptionInfo()Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;

    move-result-object v0

    .line 992
    if-nez v0, :cond_9e

    move v0, v1

    move v3, v1

    .line 994
    goto :goto_5f

    .line 985
    :catch_8f
    move-exception v0

    .line 986
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 987
    const v0, 0x7f09004d

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_50

    .line 996
    :cond_9e
    iget-boolean v3, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bRingtone:Z

    .line 997
    iget-boolean v0, v0, Lcom/sec/android/app/music/common/manager/MusicDrmManager$MusicDrmOption;->bSendAs:Z

    goto :goto_5f

    .line 1004
    :cond_a3
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_68

    .line 1009
    :cond_ab
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_71

    .line 1015
    :cond_b3
    const/16 v0, 0x17

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_50

    :cond_bd
    move v0, v2

    move v3, v2

    goto :goto_5f
.end method

.method private reQueryCurrentListView()V
    .registers 3

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .line 682
    .local v0, view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    if-eqz v0, :cond_10

    .line 683
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->reQueryListCursor(Z)V

    .line 685
    :cond_10
    return-void
.end method

.method private refreshCurrentListView()V
    .registers 3

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .line 665
    .local v0, view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    if-eqz v0, :cond_f

    .line 666
    invoke-interface {v0}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->invalidateAllViews()V

    .line 668
    :cond_f
    return-void
.end method

.method private registerNowPlayingButtons()V
    .registers 4

    .prologue
    .line 1434
    const v0, 0x7f0c0038

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBar:Landroid/widget/ProgressBar;

    .line 1435
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingButton:Landroid/view/View;

    .line 1436
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$16;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1446
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1447
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1448
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 1449
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_87

    .line 1450
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1451
    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$17;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1461
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1462
    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$18;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1477
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1478
    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$19;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1486
    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$20;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$20;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1508
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1509
    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$21;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$21;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1520
    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$22;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$22;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1543
    :cond_87
    return-void
.end method

.method private setAutoReQuery(Z)V
    .registers 6
    .parameter "autoReQuery"

    .prologue
    .line 404
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1e

    .line 405
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mTabContent:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .line 407
    .local v1, view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    if-eqz v1, :cond_1b

    .line 408
    invoke-interface {v1, p1}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->setAutoReQuery(Z)V

    .line 409
    if-eqz p1, :cond_1b

    .line 412
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->reQueryListCursor(Z)V

    .line 404
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    .end local v1           #view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    :cond_1e
    return-void
.end method

.method private setSplitViewVisibility(I)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 650
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Lcom/sec/android/app/music/MusicContentSplitListView;

    if-eqz v1, :cond_19

    move-object v1, v0

    .line 651
    check-cast v1, Lcom/sec/android/app/music/MusicContentSplitListView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/music/MusicContentSplitListView;->setSplitViewVisibility(I)V

    .line 652
    if-nez p1, :cond_1a

    .line 653
    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .end local v0           #view:Landroid/view/View;
    invoke-interface {v0}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->startNowplayingProgress()V

    .line 658
    :cond_19
    :goto_19
    return-void

    .line 655
    .restart local v0       #view:Landroid/view/View;
    :cond_1a
    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .end local v0           #view:Landroid/view/View;
    invoke-interface {v0}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->stopNowplayingProgress()V

    goto :goto_19
.end method

.method private setTone([II)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const v7, 0x7f090056

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1106
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTone(position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1110
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    aget v0, p1, p2

    if-ne v0, v7, :cond_78

    move v0, v1

    :goto_36
    invoke-static {v4, v5, v6, v0}, Lcom/sec/android/app/music/MusicUtils;->setRingtone(Landroid/content/Context;JZ)V

    .line 1113
    aget v0, p1, p2

    const v4, 0x7f090054

    if-ne v0, v4, :cond_7a

    .line 1114
    invoke-static {p0, v1, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1116
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DEBUG_RINGTONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1118
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1134
    :cond_77
    :goto_77
    return-void

    :cond_78
    move v0, v2

    .line 1110
    goto :goto_36

    .line 1119
    :cond_7a
    aget v0, p1, p2

    const v1, 0x7f090055

    if-ne v0, v1, :cond_a7

    .line 1120
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const-string v2, "ringtone_filepath"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    const-string v0, "ringtone_uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_77

    .line 1126
    :cond_a7
    aget v0, p1, p2

    if-ne v0, v7, :cond_77

    .line 1127
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/sec/android/app/music/MusicUtils;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    const-string v1, "content://com.sec.android.app.clockpackage/alarmlist/"

    .line 1129
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v4, "content://com.sec.android.app.clockpackage/alarmlist/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1130
    const-string v2, "set_alarm"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1131
    const-string v0, "alarm_uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_77
.end method

.method private showDeleteDialog()V
    .registers 4

    .prologue
    .line 1679
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1681
    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1682
    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1683
    const v1, 0x7f0900ed

    new-instance v2, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$25;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1708
    const v1, 0x7f0900ee

    new-instance v2, Lcom/sec/android/app/music/MusicBrowserTabActivity$26;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$26;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1714
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1715
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1716
    return-void
.end method

.method private showGridListOption(Landroid/view/Menu;)Landroid/view/Menu;
    .registers 8
    .parameter "menu"

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xd

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1301
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1302
    .local v0, v:Landroid/view/View;
    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .end local v0           #v:Landroid/view/View;
    invoke-interface {v0}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->isGridView()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1303
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1304
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1309
    :goto_24
    return-object p1

    .line 1306
    :cond_25
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1307
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_24
.end method

.method private updateNowPlayingView()V
    .registers 12

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1578
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1579
    if-nez v9, :cond_e

    .line 1650
    :goto_d
    return-void

    .line 1583
    :cond_e
    sget-object v10, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 1586
    if-eqz v10, :cond_e6

    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCorePlayerService:Lcom/sec/android/app/music/ICorePlayerService;

    if-eqz v0, :cond_e6

    .line 1591
    :try_start_16
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->getAudioId()J
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_19} :catch_9a

    move-result-wide v2

    .line 1592
    :try_start_1a
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_f2

    move-result v6

    .line 1593
    :try_start_1e
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->getTrackName()Ljava/lang/String;
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_f5

    move-result-object v0

    move v8, v6

    move-object v6, v0

    .line 1598
    :goto_24
    cmp-long v0, v2, v4

    if-eqz v0, :cond_e6

    if-eqz v6, :cond_e6

    .line 1599
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1600
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1603
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x140

    if-ne v0, v2, :cond_c1

    .line 1604
    const v0, 0x7f0c003b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1606
    if-eqz v0, :cond_b4

    .line 1607
    if-eqz v8, :cond_a3

    .line 1608
    const v2, 0x7f020077

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1610
    const v2, 0x7f090160

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1618
    :goto_5d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingButton:Landroid/view/View;

    const v2, 0x7f0c0037

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1622
    :try_start_68
    invoke-interface {v10}, Lcom/sec/android/app/music/ICorePlayerService;->getArtistName()Ljava/lang/String;
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6b} :catch_bc

    move-result-object v1

    .line 1626
    :goto_6c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1641
    :goto_82
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingButton:Landroid/view/View;

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1642
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 1594
    :catch_9a
    move-exception v0

    move-wide v2, v4

    move v6, v7

    .line 1595
    :goto_9d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v8, v6

    move-object v6, v1

    goto :goto_24

    .line 1612
    :cond_a3
    const v2, 0x7f02007b

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1614
    const v2, 0x7f09015f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_5d

    .line 1617
    :cond_b4
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v2, "updateNowPlayingView: playButton is null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 1623
    :catch_bc
    move-exception v2

    .line 1624
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6c

    .line 1628
    :cond_c1
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingButton:Landroid/view/View;

    const v1, 0x7f0c0033

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1630
    if-eqz v0, :cond_de

    .line 1631
    if-eqz v8, :cond_d7

    .line 1632
    const v1, 0x7f02008f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_82

    .line 1635
    :cond_d7
    const v1, 0x7f02008e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_82

    .line 1639
    :cond_de
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "updateNowPlayingView: playingIcon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 1648
    :cond_e6
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1649
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 1594
    :catch_f2
    move-exception v0

    move v6, v7

    goto :goto_9d

    :catch_f5
    move-exception v0

    goto :goto_9d
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 9
    .parameter "tag"

    .prologue
    const/4 v6, 0x1

    .line 885
    sget-object v3, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTabContent tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    sget v3, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3f

    .line 888
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 889
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 890
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 891
    .local v1, screenSize:I
    const v3, 0x7d000

    if-lt v1, v3, :cond_5c

    .line 892
    sput v6, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    .line 900
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #screenSize:I
    :cond_3f
    :goto_3f
    sget v3, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v3, v6, :cond_60

    .line 901
    new-instance v2, Lcom/sec/android/app/music/MusicContentSplitListView;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/music/MusicContentSplitListView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 902
    .local v2, tabContentView:Landroid/view/View;
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->enableSplitView()V

    .line 906
    :goto_4b
    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerForContextMenu(Landroid/view/View;)V

    move-object v3, v2

    .line 907
    check-cast v3, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    iget-object v4, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mContentChangedListenHandler:Landroid/os/Handler;

    invoke-interface {v3, v4}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->setContentChangedListenHandler(Landroid/os/Handler;)V

    .line 909
    iget-object v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mTabContent:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    return-object v2

    .line 894
    .end local v2           #tabContentView:Landroid/view/View;
    .restart local v0       #metrics:Landroid/util/DisplayMetrics;
    .restart local v1       #screenSize:I
    :cond_5c
    const/4 v3, 0x0

    sput v3, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    goto :goto_3f

    .line 904
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    .end local v1           #screenSize:I
    :cond_60
    new-instance v2, Lcom/sec/android/app/music/MusicContentListView;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/music/MusicContentListView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v2       #tabContentView:Landroid/view/View;
    goto :goto_4b
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1139
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    sparse-switch p1, :sswitch_data_98

    .line 1193
    :cond_34
    :goto_34
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1194
    return-void

    .line 1144
    :sswitch_38
    if-ne p2, v4, :cond_34

    .line 1145
    new-array v0, v6, [J

    iget-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    aput-wide v1, v0, v5

    .line 1148
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3, v6}, Lcom/sec/android/app/music/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)I

    goto :goto_34

    .line 1153
    :sswitch_54
    if-ne p2, v4, :cond_34

    .line 1154
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1155
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;

    invoke-direct {v0, p0, p3}, Lcom/sec/android/app/music/MusicBrowserTabActivity$15;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;Landroid/content/Intent;)V

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_34

    .line 1179
    :sswitch_64
    if-ne p2, v4, :cond_34

    .line 1180
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v0, v6, :cond_34

    .line 1181
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1184
    check-cast v0, Lcom/sec/android/app/music/MusicContentSplitListView;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v5, v5}, Lcom/sec/android/app/music/MusicContentSplitListView;->setRightViewInit(ILjava/lang/String;ZZ)V

    .line 1186
    check-cast v1, Lcom/sec/android/app/music/MusicContentSplitListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentSplitListView;->closeRightListCursor()V

    goto :goto_34

    .line 1142
    nop

    :sswitch_data_98
    .sparse-switch
        0x5 -> :sswitch_38
        0x6 -> :sswitch_54
        0xb -> :sswitch_64
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 440
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 442
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 443
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setSplitViewVisibility(I)V

    .line 457
    :cond_11
    :goto_11
    return-void

    .line 446
    :cond_12
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setSplitViewVisibility(I)V

    goto :goto_11
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1021
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    .line 1068
    :goto_a
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1023
    :sswitch_f
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->showDeleteDialog()V

    goto :goto_a

    .line 1026
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    iget v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedPosition:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    move-result-object v0

    .line 1028
    iget-object v1, v0, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->keyWord:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-array v3, v3, [J

    iget-wide v4, v0, Lcom/sec/android/app/music/TrackListView$ListItemInfo;->itemId:J

    aput-wide v4, v3, v6

    invoke-static {p0, v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->removePlayListItem(Landroid/content/Context;J[J)V

    goto :goto_a

    .line 1033
    :sswitch_37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1034
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1035
    const-string v1, "mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1036
    const-string v1, "selectMode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_a

    .line 1040
    :sswitch_51
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v3, [J

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    aput-wide v2, v1, v6

    invoke-static {v0, v1}, Lcom/sec/android/app/music/MusicUtils;->addToQuicklist(Landroid/content/Context;[J)V

    goto :goto_a

    .line 1045
    :sswitch_5f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1046
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1047
    const-string v1, "keyword"

    sget-wide v2, Lcom/sec/android/app/music/MusicUtils;->sQuickPlayListId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_a

    .line 1053
    :sswitch_7a
    :try_start_7a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->getMimeType(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    const-string v1, "android.intent.extra.STREAM"

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1057
    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_a9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7a .. :try_end_a9} :catch_ab

    goto/16 :goto_a

    .line 1058
    :catch_ab
    move-exception v0

    .line 1059
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, "SHARE_TRACK_VIA, ActivityNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1063
    :sswitch_b5
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->showDialog(I)V

    goto/16 :goto_a

    .line 1021
    nop

    :sswitch_data_bc
    .sparse-switch
        0x3 -> :sswitch_7a
        0x4 -> :sswitch_b5
        0x5 -> :sswitch_37
        0xb -> :sswitch_f
        0xc -> :sswitch_13
        0x16 -> :sswitch_51
        0x17 -> :sswitch_5f
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 462
    sget-object v7, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v8, " onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 472
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setVolumeControlStream(I)V

    .line 473
    const v7, 0x7f03001c

    invoke-virtual {p0, v7}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->setContentView(I)V

    .line 475
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 476
    .local v0, f:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v7, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v7, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v7, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v7, "file"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 481
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 484
    iput-boolean v10, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mDoNotRefresh:Z

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v4

    .line 486
    .local v4, tabHost:Lcom/sec/android/touchwiz/widget/TwTabHost;
    invoke-virtual {v4, v10}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setMoreTab(Z)V

    .line 488
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getMusicMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, setting:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v7, "|"

    invoke-direct {v3, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v3, strToken:Ljava/util/StringTokenizer;
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 493
    .local v1, res:Landroid/content/res/Resources;
    const-string v7, "0"

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/music/MusicBrowserTabActivity;->TAB_SPEC_TAG:[[I

    aget-object v8, v8, v11

    aget v8, v8, v11

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/music/MusicBrowserTabActivity;->TAB_SPEC_TAG:[[I

    aget-object v9, v9, v11

    aget v9, v9, v10

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 499
    const-string v7, "1"

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/music/MusicBrowserTabActivity;->TAB_SPEC_TAG:[[I

    aget-object v8, v8, v10

    aget v8, v8, v11

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/music/MusicBrowserTabActivity;->TAB_SPEC_TAG:[[I

    aget-object v9, v9, v10

    aget v9, v9, v10

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    .line 505
    :goto_9b
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_d5

    .line 506
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 507
    .local v5, tag:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 508
    .local v6, tagId:I
    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->newTabSpec(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/music/MusicBrowserTabActivity;->TAB_SPEC_TAG:[[I

    aget-object v8, v8, v6

    aget v8, v8, v11

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/music/MusicBrowserTabActivity;->TAB_SPEC_TAG:[[I

    aget-object v9, v9, v6

    aget v9, v9, v10

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;->setContent(Lcom/sec/android/touchwiz/widget/TwTabHost$TabContentFactory;)Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->addTab(Lcom/sec/android/touchwiz/widget/TwTabHost$TabSpec;)V

    goto :goto_9b

    .line 515
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #tagId:I
    :cond_d5
    new-instance v7, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;

    invoke-direct {v7, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$9;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setOnTabChangedListener(Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;)V

    .line 542
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getCurrentTab(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    .line 543
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 545
    iget-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p0, v7}, Lcom/sec/android/app/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    .line 550
    sget-object v7, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v8, " onCreate End"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 13
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/16 v3, 0xb

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 919
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 920
    .local v0, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    if-nez v0, :cond_c

    .line 951
    :cond_b
    :goto_b
    return-void

    .line 923
    :cond_c
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedPosition:I

    .line 924
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_ae

    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    iget v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->getAudioId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    .line 927
    iget-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_b

    .line 931
    iget-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    const-wide/16 v3, -0xe

    cmp-long v1, v1, v3

    if-eqz v1, :cond_59

    iget-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    const-wide/16 v3, -0xc

    cmp-long v1, v1, v3

    if-eqz v1, :cond_59

    iget-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    const-wide/16 v3, -0xd

    cmp-long v1, v1, v3

    if-eqz v1, :cond_59

    .line 934
    const/16 v1, 0xc

    const/16 v2, 0xc

    const v3, 0x7f090038

    invoke-interface {p1, v5, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 941
    :cond_59
    :goto_59
    sget-object v1, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateContextMenu mSelectedId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/music/MusicUtils;->getTitle(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 944
    const v1, 0x7f09002f

    invoke-interface {p1, v5, v6, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 945
    const v1, 0x7f090030

    invoke-interface {p1, v5, v7, v7, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 946
    const v1, 0x7f09003c

    invoke-interface {p1, v5, v8, v8, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 947
    const/16 v1, 0x16

    const/16 v2, 0x16

    const v3, 0x7f09003d

    invoke-interface {p1, v5, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 948
    const/16 v1, 0x17

    const/16 v2, 0x17

    const v3, 0x7f09003e

    invoke-interface {p1, v5, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 949
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->prepareContextMenu(Landroid/view/ContextMenu;)V

    .line 950
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto/16 :goto_b

    .line 937
    :cond_ae
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iput-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    .line 938
    const v1, 0x7f090041

    invoke-interface {p1, v5, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_59
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1073
    sparse-switch p1, :sswitch_data_48

    .line 1101
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_b
    return-object v0

    .line 1075
    :sswitch_c
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->createSweepInteractionDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_b

    .line 1078
    :sswitch_11
    new-array v0, v1, [I

    fill-array-data v0, :array_52

    .line 1082
    new-array v1, v1, [Ljava/lang/CharSequence;

    aget v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aget v2, v0, v4

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aget v2, v0, v5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1085
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1086
    const v3, 0x7f090030

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1087
    new-instance v3, Lcom/sec/android/app/music/MusicBrowserTabActivity$14;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$14;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;[I)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1096
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_b

    .line 1073
    :sswitch_data_48
    .sparse-switch
        0x4 -> :sswitch_11
        0x15 -> :sswitch_c
    .end sparse-switch

    .line 1078
    :array_52
    .array-data 0x4
        0x54t 0x0t 0x9t 0x7ft
        0x55t 0x0t 0x9t 0x7ft
        0x56t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1198
    const v0, 0x7f090047

    invoke-interface {p1, v3, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1199
    const v0, 0x7f090039

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1202
    const/16 v0, 0xd

    const/16 v1, 0xd

    const v2, 0x7f090045

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1204
    const/16 v0, 0xe

    const/16 v1, 0xe

    const v2, 0x7f090044

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1206
    const/16 v0, 0x11

    const/16 v1, 0x11

    const v2, 0x7f090040

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020018

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1208
    const v0, 0x7f090042

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020010

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1210
    const v0, 0x7f09003c

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020011

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1212
    const/16 v0, 0xb

    const/16 v1, 0xb

    const v2, 0x7f090041

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1214
    const/16 v0, 0x12

    const/16 v1, 0x12

    const v2, 0x7f090004

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020026

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1225
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 837
    sget-object v1, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v2, " onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->setCurrentTab(I)V

    .line 839
    invoke-static {p0}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->saveSettingValue(Landroid/content/Context;)V

    .line 841
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 849
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mContentChangedListenHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 850
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 853
    :try_start_34
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLoadingProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_39} :catch_63

    .line 862
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->closeCurrentListCursor()V

    .line 863
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mToken:Lcom/sec/android/app/music/MusicUtils$ServiceToken;

    invoke-static {v1}, Lcom/sec/android/app/music/MusicUtils;->unbindFromService(Lcom/sec/android/app/music/MusicUtils$ServiceToken;)V

    .line 866
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v1, :cond_5a

    .line 867
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_55

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 870
    :cond_55
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 874
    :cond_5a
    sget-object v1, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 879
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onDestroy()V

    .line 880
    return-void

    .line 854
    :catch_63
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContentChangedListenHandler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x0

    const/16 v3, 0xb

    const/16 v0, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_118

    .line 1415
    :pswitch_e
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_12
    return v0

    .line 1316
    :pswitch_13
    invoke-static {v7, v8}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v0

    .line 1318
    iget-object v1, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1320
    invoke-static {v0, v7}, Lcom/sec/android/app/music/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;Z)[J

    move-result-object v0

    .line 1321
    invoke-static {v7, v8}, Lcom/sec/android/app/music/MusicUtils;->setListFrom(ILjava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v7, v6}, Lcom/sec/android/app/music/MusicUtils;->playAll(Landroid/content/Context;[JIZ)V

    move v0, v6

    .line 1323
    goto :goto_12

    .line 1325
    :pswitch_36
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1326
    const-string v2, "tabFrom"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1328
    const-string v0, "mode"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1329
    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 1330
    goto :goto_12

    .line 1332
    :pswitch_4d
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->doSearch(Landroid/app/Activity;)V

    move v0, v6

    .line 1333
    goto :goto_12

    .line 1335
    :pswitch_52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1336
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1337
    const-string v1, "mode"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1338
    const-string v1, "selectMode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1339
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 1340
    goto :goto_12

    .line 1342
    :pswitch_6e
    new-instance v2, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1343
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1344
    if-ne v1, v6, :cond_115

    .line 1347
    :goto_81
    const-string v1, "tabFrom"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1348
    const-string v0, "mode"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1349
    const-string v0, "selectMode"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1350
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v6

    .line 1352
    goto/16 :goto_12

    .line 1354
    :pswitch_96
    new-instance v3, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1355
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1356
    if-ne v1, v6, :cond_113

    move v2, v0

    .line 1359
    :goto_aa
    const-string v0, "tabFrom"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1360
    const-string v0, "mode"

    const/16 v1, 0x11

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    invoke-virtual {p0, v3}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 1362
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v0, v6, :cond_e0

    .line 1363
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    .line 1366
    check-cast v0, Lcom/sec/android/app/music/MusicContentSplitListView;

    const-string v3, ""

    invoke-virtual {v0, v2, v3, v7, v7}, Lcom/sec/android/app/music/MusicContentSplitListView;->setRightViewInit(ILjava/lang/String;ZZ)V

    .line 1367
    check-cast v1, Lcom/sec/android/app/music/MusicContentSplitListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentSplitListView;->closeRightListCursor()V

    :cond_e0
    move v0, v6

    .line 1369
    goto/16 :goto_12

    .line 1371
    :pswitch_e3
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1372
    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    invoke-interface {v0, v6}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->changeGridView(Z)V

    move v0, v6

    .line 1373
    goto/16 :goto_12

    .line 1375
    :pswitch_f3
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 1376
    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    invoke-interface {v0, v7}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->changeGridView(Z)V

    move v0, v6

    .line 1377
    goto/16 :goto_12

    .line 1379
    :pswitch_103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/common/settings/MusicSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1380
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v6

    .line 1381
    goto/16 :goto_12

    :pswitch_110
    move v0, v6

    .line 1413
    goto/16 :goto_12

    :cond_113
    move v2, v1

    goto :goto_aa

    :cond_115
    move v0, v1

    goto/16 :goto_81

    .line 1314
    :pswitch_data_118
    .packed-switch 0x2
        :pswitch_36
        :pswitch_e
        :pswitch_e
        :pswitch_52
        :pswitch_e
        :pswitch_e
        :pswitch_13
        :pswitch_4d
        :pswitch_110
        :pswitch_6e
        :pswitch_e
        :pswitch_e3
        :pswitch_f3
        :pswitch_e
        :pswitch_e
        :pswitch_96
        :pswitch_103
    .end packed-switch
.end method

.method protected onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 821
    sget-object v1, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v2, " onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPause()V

    .line 823
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 824
    .local v0, view:Landroid/view/View;
    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .end local v0           #view:Landroid/view/View;
    invoke-interface {v0}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->stopNowplayingProgress()V

    .line 825
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    .line 828
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v1, :cond_2c

    .line 829
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v1}, Lcom/sec/android/app/music/common/util/BatteryChecker;->removeCallback()V

    .line 831
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 832
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1230
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mCurrentTab:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1231
    .local v0, currentTab:I
    packed-switch v0, :pswitch_data_104

    .line 1288
    :goto_14
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    .line 1289
    .local v1, view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    invoke-interface {v1}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->getCount()I

    move-result v2

    if-nez v2, :cond_39

    .line 1290
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1291
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1292
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1297
    :cond_39
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 1233
    .end local v1           #view:Lcom/sec/android/app/music/widget/OnMusicListViewInterface;
    :pswitch_3e
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1234
    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1235
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1236
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1237
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1238
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1239
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1240
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1244
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_14

    .line 1256
    :pswitch_89
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1257
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1258
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1259
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1260
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1261
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1265
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1270
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->showGridListOption(Landroid/view/Menu;)Landroid/view/Menu;

    goto/16 :goto_14

    .line 1273
    :pswitch_c6
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1274
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1275
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1276
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1277
    const/16 v2, 0x12

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1278
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1279
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1283
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->showGridListOption(Landroid/view/Menu;)Landroid/view/Menu;

    goto/16 :goto_14

    .line 1231
    nop

    :pswitch_data_104
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_c6
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
        :pswitch_89
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 1745
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1746
    const-string v0, "selectedId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    .line 1747
    return-void
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 740
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, " onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onResume()V

    .line 742
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 743
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 748
    invoke-static {}, Lcom/sec/android/app/music/MusicUtils;->isMediaMounted()Z

    move-result v0

    if-nez v0, :cond_34

    .line 749
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/MusicFileEmptyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->finish()V

    .line 816
    :goto_33
    return-void

    .line 757
    :cond_34
    invoke-static {p0}, Lcom/sec/android/app/music/MusicUtils;->checkLowStorageforMedia(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 758
    new-instance v0, Lcom/sec/android/app/music/MusicBrowserTabActivity$12;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$12;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity$12;->sendEmptyMessageDelayed(IJ)Z

    .line 771
    :cond_44
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v0, v5, :cond_78

    .line 772
    invoke-direct {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->enableSplitView()V

    .line 778
    :goto_4b
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mDoNotRefresh:Z

    if-nez v0, :cond_86

    .line 779
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 780
    new-instance v1, Lcom/sec/android/app/music/MusicBrowserTabActivity$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity$13;-><init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 795
    :goto_61
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mNowPlayingProgressBarHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 800
    sget-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->finish()V

    .line 802
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mFinishApp:Ljava/lang/Boolean;

    goto :goto_33

    .line 774
    :cond_78
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->getTabHost()Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentView()Landroid/view/View;

    move-result-object v0

    .line 775
    check-cast v0, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/music/widget/OnMusicListViewInterface;->startNowplayingProgress()V

    goto :goto_4b

    .line 792
    :cond_86
    iput-boolean v4, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mDoNotRefresh:Z

    goto :goto_61

    .line 805
    :cond_89
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/util/BatteryChecker;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_9c

    .line 806
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/music/common/util/BatteryChecker;->cancel(Z)Z

    .line 808
    :cond_9c
    sget-object v1, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    monitor-enter v1

    .line 809
    :try_start_9f
    sget-object v0, Lcom/sec/android/app/music/common/util/BatteryChecker;->mShowPopup:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 810
    new-instance v0, Lcom/sec/android/app/music/common/util/BatteryChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/common/util/BatteryChecker;-><init>(Lcom/sec/android/app/music/common/util/OnLowBatteryListener;)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mBatteryChecker:Lcom/sec/android/app/music/common/util/BatteryChecker;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/common/util/BatteryChecker;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 813
    :cond_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_9f .. :try_end_ba} :catchall_c3

    .line 815
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, " onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33

    .line 813
    :catchall_c3
    move-exception v0

    :try_start_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 1739
    const-string v0, "selectedId"

    iget-wide v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1740
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1741
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 704
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, " onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mStart:Z

    .line 706
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStart()V

    .line 707
    sget-boolean v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    if-eqz v0, :cond_22

    .line 708
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 710
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenu;->mEntrance:Z

    .line 711
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->finish()V

    .line 721
    :goto_21
    return-void

    .line 714
    :cond_22
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 715
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 717
    const-string v1, "com.sec.android.app.music.ADD_TO_PLAYLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 720
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, " onStart End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 726
    sget-object v0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->CLASSNAME:Ljava/lang/String;

    const-string v1, " onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mStart:Z

    .line 728
    invoke-super {p0}, Lcom/sec/android/touchwiz/widget/TwTabActivity;->onStop()V

    .line 730
    :try_start_d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity;->mPlayerStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_12} :catch_13

    .line 735
    :goto_12
    return-void

    .line 731
    :catch_13
    move-exception v0

    goto :goto_12
.end method
