.class public Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;
.super Landroid/widget/SeekBar;
.source "BubbleSeekBar.java"


# instance fields
.field private bDrag:Z

.field private isPaused:Z

.field private mBaseLine:F

.field private mBaseValue:I

.field private mContentView:Landroid/view/View;

.field private mDialog:Landroid/app/Dialog;

.field private mDispMetrics:Landroid/util/DisplayMetrics;

.field private mFocusedShadowColor:I

.field private mFocusedTextColor:I

.field private mFormat:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mNormalShadowColor:I

.field private mNormalTextColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedShadowColor:I

.field private mPressedTextColor:I

.field private mProgressScale:F

.field private mProgressWidth:I

.field private mTextSize:F

.field private mVisibleRect:Landroid/graphics/Rect;

.field private mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/high16 v3, -0x2300

    const/4 v2, 0x0

    const v1, -0x22000001

    .line 178
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 79
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->bDrag:Z

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->isPaused:Z

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 94
    const v0, -0x22ff6ffd

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalTextColor:I

    .line 95
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalShadowColor:I

    .line 96
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedTextColor:I

    .line 97
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedShadowColor:I

    .line 98
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedTextColor:I

    .line 99
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedShadowColor:I

    .line 101
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mTextSize:F

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    .line 111
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I

    .line 113
    const-string v0, "%d"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;-><init>(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->initWidget(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v3, -0x2300

    const/4 v2, 0x0

    const v1, -0x22000001

    .line 194
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->bDrag:Z

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->isPaused:Z

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 94
    const v0, -0x22ff6ffd

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalTextColor:I

    .line 95
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalShadowColor:I

    .line 96
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedTextColor:I

    .line 97
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedShadowColor:I

    .line 98
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedTextColor:I

    .line 99
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedShadowColor:I

    .line 101
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mTextSize:F

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    .line 111
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I

    .line 113
    const-string v0, "%d"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;-><init>(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mHandler:Landroid/os/Handler;

    .line 196
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->initWidget(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v3, -0x2300

    const/4 v2, 0x0

    const v1, -0x22000001

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->bDrag:Z

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->isPaused:Z

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 94
    const v0, -0x22ff6ffd

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalTextColor:I

    .line 95
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalShadowColor:I

    .line 96
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedTextColor:I

    .line 97
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedShadowColor:I

    .line 98
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedTextColor:I

    .line 99
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedShadowColor:I

    .line 101
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mTextSize:F

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    .line 111
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I

    .line 113
    const-string v0, "%d"

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;

    invoke-direct {v0, p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar$1;-><init>(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mHandler:Landroid/os/Handler;

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->initWidget(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/graphics/Rect;
    .registers 2
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$10(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/Window;
    .registers 2
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)F
    .registers 2
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressScale:F

    return v0
.end method

.method static synthetic access$3(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/util/DisplayMetrics;
    .registers 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$4(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/app/Dialog;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mContentView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$7(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;)I
    .registers 2
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I

    return v0
.end method

.method private changePaint(I)V
    .registers 5
    .parameter "state"

    .prologue
    const/high16 v2, 0x3f80

    .line 543
    sparse-switch p1, :sswitch_data_34

    .line 571
    :goto_5
    return-void

    .line 547
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedShadowColor:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_5

    .line 555
    :sswitch_15
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 557
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedShadowColor:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_5

    .line 563
    :sswitch_24
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 565
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalShadowColor:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_5

    .line 543
    nop

    :sswitch_data_34
    .sparse-switch
        0x101009c -> :sswitch_6
        0x101009e -> :sswitch_24
        0x10100a7 -> :sswitch_15
    .end sparse-switch
.end method

.method private initWidget(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 228
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 230
    .local v0, windowManager:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 234
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x1030010

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDialog:Landroid/app/Dialog;

    .line 236
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mWindow:Landroid/view/Window;

    .line 238
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 240
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 242
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 244
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 246
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 248
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 250
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x7d5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 252
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 256
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v2, 0x103

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 260
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mTextSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 266
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 268
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 271
    const v1, 0x101009e

    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->changePaint(I)V

    .line 273
    return-void
.end method


# virtual methods
.method public getBaseValue()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I

    return v0
.end method

.method public getFocusedShadowColor()I
    .registers 2

    .prologue
    .line 455
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedShadowColor:I

    return v0
.end method

.method public getFocusedTextColor()I
    .registers 2

    .prologue
    .line 427
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedTextColor:I

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getNormalShadowColor()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalShadowColor:I

    return v0
.end method

.method public getNormalTextColor()I
    .registers 2

    .prologue
    .line 371
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalTextColor:I

    return v0
.end method

.method public getPressedShadowColor()I
    .registers 2

    .prologue
    .line 511
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedShadowColor:I

    return v0
.end method

.method public getPressedTextColor()I
    .registers 2

    .prologue
    .line 483
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedTextColor:I

    return v0
.end method

.method public declared-synchronized getProgressFromBaseValue()I
    .registers 3

    .prologue
    .line 587
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTextSize()F
    .registers 2

    .prologue
    .line 341
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mTextSize:F

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 645
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 647
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getProgress()I

    move-result v0

    .line 650
    .local v0, progress:I
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->bDrag:Z

    if-nez v1, :cond_37

    .line 652
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 654
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressScale:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseLine:F

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 654
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 657
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 659
    :cond_37
    monitor-exit p0

    return-void

    .line 645
    .end local v0           #progress:I
    :catchall_39
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 677
    if-eqz p1, :cond_c

    .line 679
    const v0, 0x101009c

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->changePaint(I)V

    .line 687
    :goto_8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SeekBar;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 689
    return-void

    .line 683
    :cond_c
    const v0, 0x101009e

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->changePaint(I)V

    goto :goto_8
.end method

.method protected onSizeChanged(IIII)V
    .registers 9
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 707
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressWidth:I

    .line 709
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressScale:F

    .line 711
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    .line 713
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 711
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 715
    int-to-float v0, p2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4100

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseLine:F

    .line 719
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 721
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 737
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->isPaused:Z

    if-eqz v1, :cond_8

    .line 769
    :goto_7
    return v0

    .line 741
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 769
    :goto_f
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7

    .line 745
    :pswitch_14
    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->bDrag:Z

    .line 747
    const v0, 0x10100a7

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->changePaint(I)V

    .line 751
    :pswitch_1c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f

    .line 759
    :pswitch_27
    const v0, 0x101009e

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->changePaint(I)V

    .line 761
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 764
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->bDrag:Z

    goto :goto_f

    .line 741
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_14
        :pswitch_27
        :pswitch_1c
    .end packed-switch
.end method

.method public sendStopMsg()V
    .registers 3

    .prologue
    .line 774
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 775
    const v0, 0x101009e

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->changePaint(I)V

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->bDrag:Z

    .line 777
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->invalidate()V

    .line 778
    return-void
.end method

.method public setBaseValue(I)V
    .registers 2
    .parameter "baseValue"

    .prologue
    .line 299
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseValue:I

    .line 301
    return-void
.end method

.method public setFlagPause(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->isPaused:Z

    .line 782
    return-void
.end method

.method public setFocusedShadowColor(I)V
    .registers 2
    .parameter "shadowColor"

    .prologue
    .line 469
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedShadowColor:I

    .line 471
    return-void
.end method

.method public setFocusedTextColor(I)V
    .registers 2
    .parameter "textColor"

    .prologue
    .line 441
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFocusedTextColor:I

    .line 443
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "strFormat"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mFormat:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 6
    .parameter "max"

    .prologue
    .line 605
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 609
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_58

    .line 611
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 615
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressWidth:I

    .line 617
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mProgressScale:F

    .line 619
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    .line 621
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mDispMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4180

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    .line 619
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 625
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x4080

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mBaseLine:F
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5a

    .line 629
    :cond_58
    monitor-exit p0

    return-void

    .line 605
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNormalShadowColor(I)V
    .registers 2
    .parameter "shadowColor"

    .prologue
    .line 413
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalShadowColor:I

    .line 415
    return-void
.end method

.method public setNormalTextColor(I)V
    .registers 2
    .parameter "textColor"

    .prologue
    .line 385
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mNormalTextColor:I

    .line 387
    return-void
.end method

.method public setPressedShadowColor(I)V
    .registers 2
    .parameter "shadowColor"

    .prologue
    .line 525
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedShadowColor:I

    .line 527
    return-void
.end method

.method public setPressedTextColor(I)V
    .registers 2
    .parameter "textColor"

    .prologue
    .line 497
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPressedTextColor:I

    .line 499
    return-void
.end method

.method public setTextSize(F)V
    .registers 3
    .parameter "textSize"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 357
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/BubbleSeekBar;->mTextSize:F

    .line 359
    return-void
.end method
