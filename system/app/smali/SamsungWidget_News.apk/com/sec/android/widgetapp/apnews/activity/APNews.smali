.class public Lcom/sec/android/widgetapp/apnews/activity/APNews;
.super Landroid/app/Activity;
.source "APNews.java"


# static fields
.field private static keyBuf:Ljava/lang/String;

.field private static mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static mSlogState:I

.field private static mUseSechardware:Z

.field private static final mappingKey:Ljava/lang/String;


# instance fields
.field private LogGroup:Landroid/widget/RadioGroup;

.field private Main_noselect:Landroid/widget/RelativeLayout;

.field private bServiceMode:Ljava/lang/String;

.field private bStartUpdate:Z

.field private b_3GNetwork_popup:Z

.field private fStart:Z

.field public mAPCurrentTab:I

.field public mAPNewsIndex:I

.field mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mAnimationStart:Z

.field public mApNewsState:I

.field private mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

.field private mCPOrderlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckBox:Landroid/widget/CheckedTextView;

.field private mCheckedTextView:Landroid/view/View$OnClickListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCtx:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mMainLayoutProBar:Landroid/widget/RelativeLayout;

.field private mMainLayoutProBtn:Landroid/widget/RelativeLayout;

.field private mMainProcessing:Landroid/widget/ImageView;

.field private mMainReloadButton:Landroid/widget/ImageButton;

.field private mMainReloadOnClickListener:Landroid/view/View$OnClickListener;

.field private mMainReloadOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMainSettingsButton:Landroid/widget/ImageButton;

.field private mMainSettingsOnClickListener:Landroid/view/View$OnClickListener;

.field private mMainSettingsOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mMain_bottom_icon:Landroid/widget/LinearLayout;

.field private mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

.field mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSet:Landroid/content/SharedPreferences;

.field private mSlogEdit:Landroid/widget/EditText;

.field private mSlogText:Landroid/widget/TextView;

.field private mStartUpdateIndex:I

.field private mStartUpdateXml:Ljava/lang/String;

.field private mStartUpdateflag:I

.field private mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

.field private mTextViewLastUpdated:Landroid/widget/TextView;

.field private mbService:Z

.field public pageBar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private sStartUpdate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x19

    const/16 v2, 0x18

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    .line 109
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mUseSechardware:Z

    .line 117
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->keyBuf:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mappingKey:Ljava/lang/String;

    .line 131
    sput v4, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogState:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 70
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mTextViewLastUpdated:Landroid/widget/TextView;

    .line 74
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    .line 83
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->fStart:Z

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    .line 89
    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateIndex:I

    .line 90
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateXml:Ljava/lang/String;

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    .line 93
    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 94
    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPNewsIndex:I

    .line 95
    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    .line 99
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 100
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimationStart:Z

    .line 102
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->sStartUpdate:Ljava/lang/String;

    .line 103
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bStartUpdate:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->b_3GNetwork_popup:Z

    .line 114
    const-string v0, "GET_ALL"

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bServiceMode:Ljava/lang/String;

    .line 127
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;

    .line 129
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    .line 130
    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogEdit:Landroid/widget/EditText;

    .line 688
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$5;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 804
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$6;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;

    .line 822
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$7;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    .line 906
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$8;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$8;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadOnClickListener:Landroid/view/View$OnClickListener;

    .line 975
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$9;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$9;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 998
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$10;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$10;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsOnClickListener:Landroid/view/View$OnClickListener;

    .line 1004
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$11;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$11;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 1605
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$24;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$24;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCheckedTextView:Landroid/view/View$OnClickListener;

    .line 1832
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/APNews$27;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$27;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/activity/Switcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bServiceMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()I
    .registers 1

    .prologue
    .line 59
    sget v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogState:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    sput p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogState:I

    return p0
.end method

.method static synthetic access$1200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RadioGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/widgetapp/apnews/activity/APNews;Ljava/lang/String;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setKeyBuffer(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/widgetapp/apnews/activity/APNews;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setSLog(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/CheckedTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCheckBox:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSet:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/widget/RelativeLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBtn:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/widgetapp/apnews/activity/APNews;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/apnews/activity/APNews;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getCpData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Lcom/sec/android/widgetapp/apnews/engine/DataService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/widgetapp/apnews/activity/APNews;Lcom/sec/android/widgetapp/apnews/engine/DataService;)Lcom/sec/android/widgetapp/apnews/engine/DataService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/apnews/activity/APNews;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->checkdatacount()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->reloadData()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingClick()V

    return-void
.end method

.method private checkStartIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 457
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 458
    const-string v1, ""

    const-string v2, "checkStartIntent"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v1, "ViewMode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, ViewMode:Ljava/lang/String;
    if-eqz v0, :cond_33

    .line 462
    const-string v1, "AP Mobile news"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 463
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    .line 464
    const-string v1, "selAPNews"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateIndex:I

    .line 465
    const-string v1, "xmlUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateXml:Ljava/lang/String;

    .line 466
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->fStart:Z

    .line 470
    .end local v0           #ViewMode:Ljava/lang/String;
    :cond_33
    return-void
.end method

.method private checkdatacount()Z
    .registers 2

    .prologue
    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method private getCpData(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 433
    if-eqz p1, :cond_27

    .line 434
    new-instance v1, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-direct {v1, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 436
    .local v1, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_18

    .line 437
    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 438
    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 439
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    .line 441
    :cond_18
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRowsWidget()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    .line 442
    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_27

    .line 443
    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 449
    .end local v1           #sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    :cond_27
    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_57

    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 450
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    .local v0, buf:Ljava/lang/StringBuffer;
    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mTextViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    .end local v0           #buf:Ljava/lang/StringBuffer;
    :cond_57
    return-void
.end method

.method private getKeyBuffer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1821
    sget-object v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->keyBuf:Ljava/lang/String;

    return-object v0
.end method

.method private mMainSettingClick()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1020
    .line 1021
    const/4 v6, 0x0

    .line 1024
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://APNews/APNEWS_DUMMY"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_18} :catch_2c
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_18} :catch_35

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 1042
    :goto_1b
    if-eqz v1, :cond_20

    .line 1043
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1046
    :cond_20
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v1, :cond_2b

    .line 1047
    if-eqz v0, :cond_3e

    .line 1048
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1055
    :cond_2b
    :goto_2b
    return-void

    .line 1030
    :catch_2c
    move-exception v0

    .line 1031
    if-eqz v8, :cond_32

    .line 1032
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_32
    move v0, v7

    move-object v1, v8

    .line 1040
    goto :goto_1b

    .line 1035
    :catch_35
    move-exception v0

    .line 1036
    if-eqz v8, :cond_3b

    .line 1037
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3b
    move v0, v7

    move-object v1, v8

    .line 1039
    goto :goto_1b

    .line 1050
    :cond_3e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1051
    const-string v1, "com.sec.android.widgetapp.apnews"

    const-string v2, "com.sec.android.widgetapp.apnews.activity.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1052
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b
.end method

.method private reloadData()V
    .registers 11

    .prologue
    .line 931
    const/4 v6, 0x0

    .line 932
    .local v6, cs:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 935
    .local v9, fHasException:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://APNews/APNEWS_DUMMY"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_17} :catch_29
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_17} :catch_31

    move-result-object v6

    .line 953
    :goto_18
    if-eqz v6, :cond_1d

    .line 954
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 957
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_28

    .line 958
    if-eqz v9, :cond_39

    .line 959
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 968
    :cond_28
    :goto_28
    return-void

    .line 941
    :catch_29
    move-exception v8

    .line 942
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    if-eqz v6, :cond_2f

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 945
    :cond_2f
    const/4 v9, 0x1

    .line 951
    goto :goto_18

    .line 946
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_31
    move-exception v8

    .line 947
    .local v8, e:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v6, :cond_37

    .line 948
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 950
    :cond_37
    const/4 v9, 0x1

    goto :goto_18

    .line 961
    .end local v8           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :cond_39
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v7

    .line 962
    .local v7, currentIndex:I
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->checkdatacount()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 964
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->refreshDataToService(Ljava/lang/String;)V

    goto :goto_28
.end method

.method private setKeyBuffer(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "isAdd"

    .prologue
    .line 1813
    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->keyBuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->keyBuf:Ljava/lang/String;

    .line 1818
    :goto_18
    return-void

    .line 1816
    :cond_19
    sput-object p1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->keyBuf:Ljava/lang/String;

    goto :goto_18
.end method

.method private setReloadAnimation(Z)V
    .registers 4
    .parameter "start"

    .prologue
    .line 1653
    if-eqz p1, :cond_14

    .line 1655
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimationStart:Z

    if-nez v0, :cond_13

    .line 1656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimationStart:Z

    .line 1657
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$25;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 1684
    :cond_13
    :goto_13
    return-void

    .line 1672
    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimationStart:Z

    .line 1673
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$26;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$26;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method private setSLog(I)V
    .registers 4
    .parameter

    .prologue
    .line 1825
    const-string v0, "prefs_slog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1826
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1827
    const-string v1, "slog_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1828
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1830
    sput p1, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    .line 1831
    return-void
.end method


# virtual methods
.method public getNewsDataToService(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1131
    const-string v0, "GET_NEWS_SELECTED_HEAD"

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bServiceMode:Ljava/lang/String;

    .line 1133
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_17

    .line 1134
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1135
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1158
    :goto_16
    return-void

    .line 1139
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    goto :goto_16

    .line 1143
    :cond_1b
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    if-nez v0, :cond_2f

    .line 1144
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    .line 1145
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1148
    :cond_2f
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-nez v0, :cond_3d

    .line 1149
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1150
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1151
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    .line 1154
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1155
    const-string v1, "APNEWS_SERVICE"

    const-string v2, "GET_NEWS_SELECTED_HEAD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    const-string v1, "xmlUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_16
.end method

.method public getNewsImageDataToService(Ljava/lang/String;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1162
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_13

    .line 1163
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1164
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1192
    :goto_12
    return-void

    .line 1168
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    goto :goto_12

    .line 1172
    :cond_17
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    if-nez v0, :cond_2b

    .line 1173
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    .line 1174
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1177
    :cond_2b
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-nez v0, :cond_39

    .line 1178
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1179
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1180
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    .line 1187
    :cond_39
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    const-string v1, "APNEWS_SERVICE"

    const-string v2, "GET_NEWS_IMAGE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    const-string v1, "News.Image.updated.index"

    iget-object v2, p2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const-string v1, "xmlUrl"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1191
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_12
.end method

.method public isStartWidget()Z
    .registers 2

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->sStartUpdate:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 137
    iput-object p0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    .line 138
    if-nez p1, :cond_c

    .line 139
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->setWeatherNewAdd(Z)V

    .line 140
    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->setStockNewAdd(Z)V

    .line 142
    :cond_c
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->setContext(Landroid/content/Context;)V

    .line 143
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setContentView(I)V

    .line 146
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    .line 150
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    const v0, 0x7f0c0041

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    const v0, 0x7f0c0045

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMain_bottom_icon:Landroid/widget/LinearLayout;

    .line 157
    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBar:Landroid/widget/RelativeLayout;

    .line 158
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainProcessing:Landroid/widget/ImageView;

    .line 159
    const v0, 0x7f0c0039

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mTextViewLastUpdated:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainProcessing:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 163
    const v0, 0x7f0c0037

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    .line 164
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v0, p0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setInit(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    .line 166
    const v0, 0x7f0c0046

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->Main_noselect:Landroid/widget/RelativeLayout;

    .line 167
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->Main_noselect:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    .line 171
    const v0, 0x7f0c003b

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadButton:Landroid/widget/ImageButton;

    .line 172
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 175
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBtn:Landroid/widget/RelativeLayout;

    .line 177
    const v0, 0x7f0c003a

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsButton:Landroid/widget/ImageButton;

    .line 178
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainSettingsOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 182
    const-string v0, "checkbox_enable"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSet:Landroid/content/SharedPreferences;

    .line 184
    if-nez p1, :cond_14d

    .line 185
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->checkStartIntent(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "ViewMode"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->sStartUpdate:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->isStartWidget()Z

    move-result v0

    if-eqz v0, :cond_195

    .line 189
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPOrder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    .line 206
    :goto_13a
    iput-boolean v5, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bStartUpdate:Z

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v2, "APNEWS_SERVICE"

    const-string v3, "Notify.Alarm.Change"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 213
    :cond_14d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    const-string v2, "Updated.result"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v2, "Alarm.To.Update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 222
    const-string v0, "com.sec.android.widgetapp.apnews"

    .line 223
    const-string v0, "sechardware"

    .line 224
    const/4 v0, 0x0

    .line 227
    :try_start_16b
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.widgetapp.apnews"

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_1a5

    .line 229
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    move-object v2, v0

    .line 231
    :goto_17c
    if-eqz v2, :cond_1a1

    array-length v0, v2

    if-lez v0, :cond_1a1

    move v0, v1

    .line 232
    :goto_182
    array-length v3, v2

    if-ge v0, v3, :cond_1a1

    .line 233
    aget-object v3, v2, v0

    const-string v4, "sechardware"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-ne v3, v5, :cond_192

    .line 234
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mUseSechardware:Z
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_192} :catch_19e

    .line 232
    :cond_192
    add-int/lit8 v0, v0, 0x1

    goto :goto_182

    .line 192
    :cond_195
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPViewOrder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    goto :goto_13a

    .line 238
    :catch_19e
    move-exception v0

    .line 239
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mUseSechardware:Z

    .line 242
    :cond_1a1
    invoke-direct {p0, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getCpData(Landroid/content/Context;)V

    .line 243
    return-void

    :cond_1a5
    move-object v2, v0

    goto :goto_17c
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const/16 v1, 0x46

    const/4 v3, 0x1

    const v6, 0x7f0a0019

    const v5, 0x7f0a0004

    const/high16 v4, 0x7f02

    .line 1196
    sparse-switch p1, :sswitch_data_234

    .line 1602
    const/4 v0, 0x0

    :goto_f
    return-object v0

    .line 1199
    :sswitch_10
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_3e

    .line 1201
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1203
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1204
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1207
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1210
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$12;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1235
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$13;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$13;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1240
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    .line 1243
    :cond_3e
    :sswitch_3e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1245
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1246
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1248
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1250
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$14;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1266
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$15;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$15;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1271
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    .line 1274
    :sswitch_68
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_cf

    .line 1277
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 1279
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1280
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1282
    iget v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_93

    .line 1283
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1284
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1287
    :cond_93
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1288
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1289
    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1291
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1294
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$16;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1312
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$17;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$17;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1319
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$18;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$18;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1332
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1336
    :cond_cf
    :sswitch_cf
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_105

    .line 1339
    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 1341
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1343
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1344
    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1347
    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1350
    const v1, 0x7f0a0006

    new-instance v2, Lcom/sec/android/widgetapp/apnews/activity/APNews$19;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$19;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1356
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$20;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$20;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1368
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1458
    :cond_105
    :sswitch_105
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1459
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    .line 1460
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1462
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1463
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1465
    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/APNews$21;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$21;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_f

    .line 1483
    :sswitch_12e
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1484
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1485
    const v0, 0x7f0c0053

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    .line 1487
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mRadioCheck:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1488
    const v0, 0x7f0c0052

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;

    .line 1489
    const v0, 0x7f0c0057

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogEdit:Landroid/widget/EditText;

    .line 1490
    sget v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    sput v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogState:I

    .line 1492
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;

    if-eqz v0, :cond_173

    .line 1493
    sget v0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogState:I

    packed-switch v0, :pswitch_data_24e

    .line 1514
    :cond_173
    :goto_173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Ok"

    new-instance v2, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$23;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$22;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_f

    .line 1497
    :pswitch_1ae
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1498
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0054

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_173

    .line 1503
    :pswitch_1da
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1504
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0055

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_173

    .line 1509
    :pswitch_207
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSlogText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SLog Current State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0025

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    const v2, 0x7f0c0056

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto/16 :goto_173

    .line 1196
    :sswitch_data_234
    .sparse-switch
        0x3c -> :sswitch_10
        0x3d -> :sswitch_68
        0x3e -> :sswitch_cf
        0x42 -> :sswitch_3e
        0x46 -> :sswitch_105
        0x3e7 -> :sswitch_12e
    .end sparse-switch

    .line 1493
    :pswitch_data_24e
    .packed-switch 0x0
        :pswitch_1ae
        :pswitch_1da
        :pswitch_207
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1689
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1690
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    .line 1691
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020021

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1695
    :cond_1f
    return v3
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 249
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    if-eqz v1, :cond_c

    .line 250
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/apnews/engine/DataService;->setHandler(Landroid/os/Handler;)V

    .line 251
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBoundService:Lcom/sec/android/widgetapp/apnews/engine/DataService;

    .line 254
    :cond_c
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_39

    .line 255
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    .line 264
    :cond_39
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_5b

    .line 267
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    const-string v2, "AP Mobile news"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5b

    .line 268
    const v1, 0x7f0c0038

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 269
    .local v0, lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    if-eqz v0, :cond_5b

    .line 270
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->deinitAPNewsMain()V

    .line 275
    .end local v0           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_5b
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_6b

    .line 276
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 278
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    .line 281
    :cond_6b
    sget-object v1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7b

    .line 282
    sget-object v1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 283
    sget-object v1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 284
    sput-object v3, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mDataList:Ljava/util/ArrayList;

    .line 288
    :cond_7b
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBar:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_84

    .line 289
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainLayoutProBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 292
    :cond_84
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_8a

    .line 293
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 296
    :cond_8a
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_90

    .line 297
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    :cond_90
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    if-eqz v1, :cond_96

    .line 301
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 304
    :cond_96
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    if-eqz v1, :cond_9c

    .line 305
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    .line 307
    :cond_9c
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    if-eqz v1, :cond_a5

    .line 308
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->deinit()V

    .line 311
    :cond_a5
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    if-eqz v1, :cond_b5

    .line 312
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 313
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 314
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    .line 317
    :cond_b5
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    .line 326
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    if-eqz v1, :cond_bd

    .line 327
    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->LogGroup:Landroid/widget/RadioGroup;

    .line 329
    :cond_bd
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 331
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1798
    const-string v0, "Tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> key down <<<<<<<< : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 1803
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getKeyBuffer()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mappingKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1804
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1805
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 1809
    :cond_37
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 336
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 339
    .local v1, flags:I
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->sStartUpdate:Ljava/lang/String;

    .line 340
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bStartUpdate:Z

    .line 342
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v2, :cond_41

    .line 343
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/widgetapp/apnews/engine/Util;->check3GSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSet:Landroid/content/SharedPreferences;

    const-string v3, "checkbox_enable"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_25

    .line 356
    :cond_25
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const/high16 v2, 0x10

    and-int/2addr v2, v1

    if-eqz v2, :cond_45

    .line 359
    :cond_32
    const-string v2, ""

    const-string v3, "main the APNews"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    .line 361
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->fStart:Z

    .line 368
    :goto_3d
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 369
    :goto_40
    return-void

    .line 352
    :cond_41
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    goto :goto_40

    .line 363
    :cond_45
    const-string v2, ""

    const-string v3, "just resume the APNews"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "ViewMode"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->sStartUpdate:Ljava/lang/String;

    .line 365
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->checkStartIntent(Landroid/content/Intent;)V

    goto :goto_3d
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1700
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1701
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_1d

    .line 1702
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    if-nez v0, :cond_1e

    .line 1703
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1704
    const-string v1, "com.sec.android.widgetapp.apnews"

    const-string v2, "com.sec.android.widgetapp.apnews.activity.settings.SettingsNews"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->startActivity(Landroid/content/Intent;)V

    .line 1717
    :cond_1d
    :goto_1d
    return v3

    .line 1708
    :cond_1e
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    packed-switch v0, :pswitch_data_34

    goto :goto_1d

    .line 1710
    :pswitch_24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/widgetapp/apnews/activity/settings/SettingsNews;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1711
    const-string v1, "Main"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1712
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->startActivity(Landroid/content/Intent;)V

    goto :goto_1d

    .line 1708
    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_24
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 663
    const-string v0, ""

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setKeyBuffer(Ljava/lang/String;Z)V

    .line 664
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 665
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 666
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 669
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_35

    .line 671
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    if-eqz v0, :cond_32

    .line 672
    iput-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    .line 673
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->unbindService(Landroid/content/ServiceConnection;)V

    .line 675
    :cond_32
    invoke-direct {p0, v2}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setReloadAnimation(Z)V

    .line 685
    :cond_35
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 686
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 373
    const-string v0, "sStartUpdate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->sStartUpdate:Ljava/lang/String;

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->isStartWidget()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 375
    const-string v0, ""

    const-string v1, "true isStartWidget"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPOrder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    .line 383
    :goto_1f
    const-string v0, "mApNewsState"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 385
    const-string v0, "mAPNewsIndex"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPNewsIndex:I

    .line 386
    const-string v0, "mAPCurrentTab"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    .line 388
    const-string v0, "mSwitcher.getCurrentIndex"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 389
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 390
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setCurrentIndex(ILjava/lang/String;)V

    .line 392
    :cond_52
    iput-boolean v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->fStart:Z

    .line 394
    const-string v0, "mbService"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    .line 395
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    if-eqz v0, :cond_6e

    .line 396
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 399
    :cond_6e
    const-string v0, "mStartUpdateflag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 402
    return-void

    .line 379
    :cond_7a
    const-string v0, ""

    const-string v1, "false isStartWidget"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPViewOrder()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    goto :goto_1f
.end method

.method protected onResume()V
    .registers 11

    .prologue
    const/16 v9, 0x46

    const/16 v8, 0xc

    const/4 v7, 0x1

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 473
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 475
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->setContext(Landroid/content/Context;)V

    .line 491
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bStartUpdate:Z

    if-eqz v3, :cond_2d

    .line 492
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 493
    const/16 v3, 0x3e

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 494
    const/16 v3, 0x3c

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 496
    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 497
    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->removeDialog(I)V

    .line 500
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->isStartWidget()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 501
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPOrder()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    .line 508
    :goto_3b
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->fStart:Z

    if-eqz v3, :cond_7b

    .line 509
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->reorderView()V

    .line 514
    :goto_44
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_15c

    .line 516
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v3, v6}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setVisibility(I)V

    .line 519
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMain_bottom_icon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 524
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->Main_noselect:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 527
    const/4 v0, 0x0

    .local v0, j:I
    :goto_5c
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7e

    .line 529
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 504
    .end local v0           #j:I
    :cond_72
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPViewOrder()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    goto :goto_3b

    .line 511
    :cond_7b
    iput-boolean v7, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->fStart:Z

    goto :goto_44

    .line 532
    .restart local v0       #j:I
    :cond_7e
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/widgetapp/apnews/activity/APNews$1;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$1;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/widgetapp/apnews/activity/APNews$2;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$2;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$3;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/widgetapp/apnews/activity/APNews$4;

    invoke-direct {v4, p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews$4;-><init>(Lcom/sec/android/widgetapp/apnews/activity/APNews;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    const-string v4, "AP Mobile news"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e0

    .line 571
    const v3, 0x7f0c0038

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 572
    .local v1, lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    if-eqz v1, :cond_e0

    .line 576
    iget v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    invoke-virtual {v1, v3, v6}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->updateData(IZ)V

    .line 578
    iget v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPNewsIndex:I

    invoke-virtual {v1, v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->moveLastPosition(I)V

    .line 592
    .end local v0           #j:I
    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_e0
    :goto_e0
    iget v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    if-eqz v3, :cond_17a

    .line 593
    iget v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    if-ne v3, v7, :cond_128

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    const-string v4, "AP Mobile news"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 594
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    const-string v5, "AP Mobile news"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "AP Mobile news"

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setCurrentIndex(ILjava/lang/String;)V

    .line 596
    const v3, 0x7f0c0038

    invoke-virtual {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 597
    .restart local v1       #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    if-eqz v1, :cond_121

    .line 599
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentTabXml()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, sCurrentTabXml:Ljava/lang/String;
    if-eqz v2, :cond_121

    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateXml:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 601
    iget v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateIndex:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateXml:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->setTopNews(ILjava/lang/String;)V

    .line 605
    .end local v2           #sCurrentTabXml:Ljava/lang/String;
    :cond_121
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->reorderView(I)V

    .line 609
    .end local v1           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_128
    iput v6, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    .line 615
    :goto_12a
    const/4 v0, 0x0

    .restart local v0       #j:I
    :goto_12b
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_182

    .line 617
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 618
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f020032

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 619
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_12b

    .line 582
    .end local v0           #j:I
    :cond_15c
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_e0

    .line 584
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->Main_noselect:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 585
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->setVisibility(I)V

    .line 586
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMain_bottom_icon:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_e0

    .line 611
    :cond_17a
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    invoke-virtual {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->reorderView(I)V

    goto :goto_12a

    .line 623
    .restart local v0       #j:I
    :cond_182
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget v4, v4, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1b9

    .line 624
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget v4, v4, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f020033

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 625
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->pageBar:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget v4, v4, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    iget v4, v4, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->mCurrentView:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :cond_1b9
    sget-boolean v3, Lcom/sec/android/widgetapp/apnews/engine/Util;->updateNewsState:Z

    if-eqz v3, :cond_1bf

    .line 629
    iput v7, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 632
    :cond_1bf
    iget v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-eqz v3, :cond_1c6

    .line 633
    invoke-virtual {p0, v9}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 649
    :cond_1c6
    iget-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bStartUpdate:Z

    if-eqz v3, :cond_1ca

    .line 653
    :cond_1ca
    iput-boolean v6, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bStartUpdate:Z

    .line 655
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->sStartUpdate:Ljava/lang/String;

    if-eqz v3, :cond_1dc

    .line 656
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 657
    iget-object v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 659
    :cond_1dc
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 408
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    const-string v2, "AP Mobile news"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    .line 410
    const v1, 0x7f0c0038

    invoke-virtual {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;

    .line 411
    .local v0, lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    if-eqz v0, :cond_29

    .line 412
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPNewsIndex:I

    .line 413
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;->getAPCurrentTab()I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    .line 414
    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    if-gez v1, :cond_29

    .line 415
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    .line 421
    .end local v0           #lAPNewsMain:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsMain;
    :cond_29
    const-string v1, "mApNewsState"

    iget v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    const-string v1, "mAPNewsIndex"

    iget v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPNewsIndex:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v1, "mAPCurrentTab"

    iget v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mAPCurrentTab:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v1, "mSwitcher.getCurrentIndex"

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v1, "mbService"

    iget-boolean v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 427
    const-string v1, "mStartUpdateflag"

    iget v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mStartUpdateflag:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 430
    return-void
.end method

.method public refreshDataToService(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1065
    const-string v0, "AP Mobile news"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1067
    const-string v0, "GET_ALL"

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bServiceMode:Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_1f

    .line 1070
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1071
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1108
    :cond_1e
    :goto_1e
    return-void

    .line 1075
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->finish()V

    goto :goto_1e

    .line 1079
    :cond_23
    iget v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-eq v0, v3, :cond_1e

    .line 1083
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    if-nez v0, :cond_3b

    .line 1084
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mbService:Z

    .line 1085
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1099
    :cond_3b
    const/16 v0, 0x46

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->showDialog(I)V

    .line 1100
    iput v3, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    .line 1101
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setMainReloadButtonChange()V

    .line 1103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1104
    const-string v1, "APNEWS_SERVICE"

    const-string v2, "GET_NEWS_HEAD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1e
.end method

.method public setMainReloadButtonChange()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1625
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_22

    .line 1650
    :cond_21
    :goto_21
    return-void

    .line 1632
    :cond_22
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mCPOrderlist:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mSwitcher:Lcom/sec/android/widgetapp/apnews/activity/Switcher;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/apnews/activity/Switcher;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1633
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mMainReloadButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1635
    const-string v1, "AP Mobile news"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1637
    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/APNews;->mApNewsState:I

    if-eq v1, v3, :cond_46

    .line 1644
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setReloadAnimation(Z)V

    goto :goto_21

    .line 1647
    :cond_46
    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/APNews;->setReloadAnimation(Z)V

    goto :goto_21
.end method
