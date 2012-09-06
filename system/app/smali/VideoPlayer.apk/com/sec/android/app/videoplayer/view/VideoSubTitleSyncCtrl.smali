.class public Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;
.super Landroid/widget/RelativeLayout;
.source "VideoSubTitleSyncCtrl.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final HIDE_SYNC_BTN:I = 0x3

.field private static final LONG_PRESS_TIME:J = 0x1f4L

.field private static final RESET_SYNC_TIME:I = 0x4

.field private static final SYNC_DEFAULT_LEVEL:J = 0x1f4L

.field private static final SYNC_LIMIT_VALUE:I = 0x7530

.field private static final SYNC_RANGE_VALUE:I = 0x3c

.field private static final SYNC_TIME_DECREASE:I = 0x1

.field private static final SYNC_TIME_INCREASE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoSubTitleSyncCtrl"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

.field private mSubTitleSyncLayout:Landroid/view/View;

.field private mSubTitleSyncText:Landroid/widget/TextView;

.field private mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

.field private mSubtitleResetBtn:Landroid/widget/Button;

.field private mSubtitleSyncBar:Landroid/widget/SeekBar;

.field private mSyncDownTouchListener:Landroid/view/View$OnTouchListener;

.field private mSyncProgressBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSyncResetBtnTouchListener:Landroid/view/View$OnTouchListener;

.field private mSyncUpTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    .line 36
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    .line 100
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$1;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncUpTouchListener:Landroid/view/View$OnTouchListener;

    .line 123
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$2;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncDownTouchListener:Landroid/view/View$OnTouchListener;

    .line 146
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$3;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncResetBtnTouchListener:Landroid/view/View$OnTouchListener;

    .line 171
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$4;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncProgressBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 261
    new-instance v0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl$5;-><init>(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->initView()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;IJ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->sendMessage(IJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/SeekBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getSyncString()Ljava/lang/String;
    .registers 10

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, str:Ljava/lang/String;
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    long-to-float v2, v2

    const/high16 v3, 0x447a

    div-float v1, v2, v3

    .line 228
    .local v1, time:F
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_24

    .line 229
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    const v3, 0x7f080028

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_23
    return-object v0

    .line 230
    :cond_24
    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_3c

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    const v3, 0x7f080029

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    .line 233
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    const v4, 0x7f080027

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method private initView()V
    .registers 6

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x4

    .line 50
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->removeAllViews()V

    .line 56
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 58
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v2, 0x7f03001d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    .line 60
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    .line 62
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_40

    .line 63
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncUpTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    :cond_40
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0064

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5d

    .line 70
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncDownTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    :cond_5d
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0060

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    if-eqz v2, :cond_73

    .line 77
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :cond_73
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    if-eqz v2, :cond_90

    .line 83
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncResetBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    :cond_90
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    const v3, 0x7f0a0066

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    .line 89
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    if-eqz v2, :cond_ad

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncProgressBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 95
    :cond_ad
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setSyncProgress()V

    .line 97
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    return-void
.end method

.method private sendMessage(IJ)V
    .registers 6
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 258
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 259
    return-void
.end method


# virtual methods
.method public clearHandlerMessages()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 304
    return-void
.end method

.method public hideSyncBtn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    if-eqz v0, :cond_2f

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 252
    :cond_2f
    return-void
.end method

.method public setSyncProgress()V
    .registers 11

    .prologue
    const-wide/16 v8, 0x1f4

    const-wide/16 v6, 0x3c

    const-wide/16 v4, 0x0

    .line 308
    const-string v0, "VideoSubTitleSyncCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>>>>>>>>>VideoServiceUtil.mSyncTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_2c

    .line 311
    const-string v0, "VideoSubTitleSyncCtrl"

    const-string v1, "setSyncProgress() - mSubtitleSyncBar is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :goto_2b
    return-void

    .line 315
    :cond_2c
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_48

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 325
    :cond_39
    :goto_39
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/util/VideoUtil;->updateSubtitleSync(J)V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2b

    .line 318
    :cond_48
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_59

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    sget-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    div-long/2addr v1, v8

    add-long/2addr v1, v6

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_39

    .line 320
    :cond_59
    sget-wide v0, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_39

    .line 321
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    sget-wide v1, Lcom/sec/android/app/videoplayer/util/VideoUtil;->mSubTitleSyncInterval:J

    div-long/2addr v1, v8

    add-long/2addr v1, v6

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_39
.end method

.method public showSyncBtn()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    if-eqz v0, :cond_4d

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncDownBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncUpBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleSyncBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncProgressBar:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->getSyncString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubTitleSyncText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSubtitleResetBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mSyncResetBtnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    invoke-virtual {p0, v2}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setVisibility(I)V

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->setSyncProgress()V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/VideoSubTitleSyncCtrl;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 220
    :cond_4d
    return-void
.end method
