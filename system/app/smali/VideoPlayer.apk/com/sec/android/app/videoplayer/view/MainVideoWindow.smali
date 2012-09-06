.class public Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
.super Landroid/widget/RelativeLayout;
.source "MainVideoWindow.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LONG_PRESS_TIME:I = 0xc8

.field private static final ONE_SECOND:I = 0x3e8

.field private static final STEP_SENSITIVITY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "MainVideoWindow"


# instance fields
.field private lastAction:I

.field private lastPos:I

.field private lastTime:J

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private seekType:I

.field private variableSensitivity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 22
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J

    .line 26
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I

    .line 55
    new-instance v0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;-><init>(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->initView()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->initView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J

    .line 26
    iput v2, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I

    .line 55
    new-instance v0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;-><init>(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 40
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->initView()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastAction:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->seekType:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->variableSensitivity:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->lastTime:J

    return-wide p1
.end method

.method private initView()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 48
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 49
    return-void
.end method
