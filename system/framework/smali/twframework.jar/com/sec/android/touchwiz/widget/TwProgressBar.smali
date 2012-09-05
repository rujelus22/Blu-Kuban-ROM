.class public Lcom/sec/android/touchwiz/widget/TwProgressBar;
.super Landroid/view/View;
.source "TwProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwProgressBar$1;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;,
        Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;
    }
.end annotation


# static fields
.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final CORNERS:[F = null

.field private static final HIGH_ALPHA:I = 0x32000000

.field protected static final HORIZONTAL:I = 0x0

.field private static final LOW_ALPHA:I = -0x1000000

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MED_ALPHA:I = -0x6a000000

.field private static final UNDEFINED_COLOR:I = 0x0

.field protected static final VERTICAL:I = 0x1


# instance fields
.field private final DEFAULT_MAX:I

.field private final DEFAULT_MAX_HEIGHT:I

.field private final DEFAULT_MAX_WIDTH:I

.field private final DEFAULT_MIN_HEIGHT:I

.field private final DEFAULT_MIN_WIDTH:I

.field private final DEFAULT_PROGRESS:I

.field private final INVALID_PROGRESS_HEIGHT:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndicatorThickness:I

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field private mProgress:I

.field private mProgressBarMode:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

.field private mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

.field private mSecondaryProgress:I

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 156
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 230
    const v0, 0x2010005

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    const/16 v8, 0x30

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 234
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_HEIGHT:I

    .line 141
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_HEIGHT:I

    .line 143
    iput v7, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MIN_WIDTH:I

    .line 144
    iput v8, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX_WIDTH:I

    .line 146
    const/16 v4, 0x64

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_MAX:I

    .line 148
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->DEFAULT_PROGRESS:I

    .line 167
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 173
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 206
    iput v9, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->INVALID_PROGRESS_HEIGHT:I

    .line 212
    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 235
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    .line 237
    sget-object v4, Ltouchwiz/R$styleable;->TwProgressBar:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 240
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    .line 242
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    .line 244
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    .line 246
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    .line 250
    const/4 v4, 0x4

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 251
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 253
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    .line 256
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 258
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7c

    .line 259
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 262
    .local v1, backColor:I
    if-eqz v1, :cond_bc

    .line 263
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setBackgroundColor(I)V

    .line 270
    .end local v1           #backColor:I
    :cond_7c
    :goto_7c
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_91

    .line 273
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 275
    .local v2, progressColor:I
    if-eqz v2, :cond_ca

    .line 276
    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressColor(I)V

    .line 283
    .end local v2           #progressColor:I
    :cond_91
    :goto_91
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 286
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 288
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 290
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_b8

    .line 291
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 294
    .local v3, secondaryColor:I
    if-eqz v3, :cond_d8

    .line 295
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgressColor(I)V

    .line 302
    .end local v3           #secondaryColor:I
    :cond_b8
    :goto_b8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 303
    return-void

    .line 265
    .restart local v1       #backColor:I
    :cond_bc
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7c

    .line 278
    .end local v1           #backColor:I
    .restart local v2       #progressColor:I
    :cond_ca
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_91

    .line 297
    .end local v2           #progressColor:I
    .restart local v3       #secondaryColor:I
    :cond_d8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x2020035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_b8
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "isHorizontal"

    .prologue
    const/4 v1, 0x1

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    if-ne p2, v1, :cond_b

    .line 223
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    .line 227
    :goto_a
    return-void

    .line 225
    :cond_b
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    goto :goto_a
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwProgressBar;Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;)Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    return-object p1
.end method

.method private declared-synchronized doRefreshProgress(IIZ)V
    .registers 11
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 761
    monitor-enter p0

    :try_start_1
    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-lez v5, :cond_30

    int-to-float v5, p2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 762
    .local v4, scale:F
    :goto_b
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 763
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_34

    .line 764
    const/4 v3, 0x0

    .line 766
    .local v3, progressDrawable:Landroid/graphics/drawable/Drawable;
    instance-of v5, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v5, :cond_1c

    .line 767
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v5, v0

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 770
    :cond_1c
    const v5, 0x461c4000

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 771
    .local v2, level:I
    if-eqz v3, :cond_32

    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :goto_23
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 776
    .end local v2           #level:I
    :goto_26
    const v5, 0x102000d

    if-ne p1, v5, :cond_2e

    .line 777
    invoke-virtual {p0, v4, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->onProgressRefresh(FZ)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_38

    .line 779
    :cond_2e
    monitor-exit p0

    return-void

    .line 761
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :cond_30
    const/4 v4, 0x0

    goto :goto_b

    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #level:I
    .restart local v3       #progressDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v4       #scale:F
    :cond_32
    move-object v3, v1

    .line 771
    goto :goto_23

    .line 773
    .end local v2           #level:I
    .end local v3           #progressDrawable:Landroid/graphics/drawable/Drawable;
    :cond_34
    :try_start_34
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_26

    .line 761
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v4           #scale:F
    :catchall_38
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private getDrawable(II)Landroid/graphics/drawable/Drawable;
    .registers 10
    .parameter "color"
    .parameter "strokeColor"

    .prologue
    const/4 v6, 0x1

    .line 410
    const v5, 0xffffff

    and-int/2addr p1, v5

    .line 411
    const/high16 v5, 0x3200

    or-int v4, p1, v5

    .line 412
    .local v4, startColor:I
    const/high16 v5, -0x6a00

    or-int v3, p1, v5

    .line 413
    .local v3, middleColor:I
    const/high16 v5, -0x100

    or-int v2, p1, v5

    .line 414
    .local v2, endColor:I
    const/4 v5, 0x3

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    aput v3, v0, v6

    const/4 v5, 0x2

    aput v2, v0, v5

    .line 415
    .local v0, colors:[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 417
    .local v1, d:Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1, v6, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 418
    sget-object v5, Lcom/sec/android/touchwiz/widget/TwProgressBar;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 419
    return-object v1
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .registers 9
    .parameter "id"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 742
    monitor-enter p0

    :try_start_1
    iget-wide v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    .line 743
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->doRefreshProgress(IIZ)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_24

    .line 758
    :goto_12
    monitor-exit p0

    return-void

    .line 746
    :cond_14
    :try_start_14
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    if-eqz v1, :cond_27

    .line 748
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .line 750
    .local v0, r:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mRefreshProgressRunnable:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    .line 751
    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;->setup(IIZ)V

    .line 756
    :goto_20
    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->post(Ljava/lang/Runnable;)Z
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_24

    goto :goto_12

    .line 742
    .end local v0           #r:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1

    .line 754
    :cond_27
    :try_start_27
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;-><init>(Lcom/sec/android/touchwiz/widget/TwProgressBar;IIZ)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .restart local v0       #r:Lcom/sec/android/touchwiz/widget/TwProgressBar$RefreshProgressRunnable;
    goto :goto_20
.end method


# virtual methods
.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndicatorThickness()I
    .registers 2

    .prologue
    .line 373
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    return v0
.end method

.method public getMax()I
    .registers 2

    .prologue
    .line 538
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 518
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    return v0
.end method

.method public getProgressBarMode()I
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    return v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSecondaryProgress()I
    .registers 2

    .prologue
    .line 528
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    return v0
.end method

.method public incrementProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 497
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 498
    return-void
.end method

.method public incrementSecondaryProgressBy(I)V
    .registers 3
    .parameter "diff"

    .prologue
    .line 507
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    .line 508
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 546
    monitor-enter p0

    :try_start_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 548
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 549
    .local v8, mContainer:Landroid/graphics/Rect;
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 551
    .local v9, mOutRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 552
    .local v10, max:I
    if-lez v10, :cond_14e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    div-float v17, v23, v24

    .line 553
    .local v17, scale:F
    :goto_24
    if-lez v10, :cond_152

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    div-float v18, v23, v24

    .line 554
    .local v18, scale2:F
    :goto_36
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v12

    .line 555
    .local v12, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v13

    .line 556
    .local v13, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v14

    .line 557
    .local v14, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v11

    .line 558
    .local v11, paddingBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getHeight()I

    move-result v7

    .line 560
    .local v7, height:I
    const/16 v20, 0x0

    .line 561
    .local v20, tempHeight:I
    const/16 v21, 0x0

    .line 563
    .local v21, tempWidth:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    .local v5, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 565
    .local v15, progress:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    .line 567
    .local v19, secondary:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getWidth()I

    move-result v23

    sub-int v23, v23, v12

    sub-int v22, v23, v13

    .line 568
    .local v22, w:I
    sub-int v23, v7, v14

    sub-int v6, v23, v11

    .line 570
    .local v6, h:I
    const/16 v16, 0x0

    .line 580
    .local v16, progressSpacing:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressBarMode:I

    move/from16 v23, v0

    if-nez v23, :cond_15e

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_156

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v20, v0

    .line 587
    :goto_86
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 588
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 589
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v23, v23, v22

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 590
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, v6

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 597
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v16, v23, 0x2

    .line 599
    if-lez v16, :cond_15a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    move/from16 v23, v0

    if-lez v23, :cond_15a

    .line 600
    sub-int v22, v22, v16

    .line 605
    :goto_b8
    const/16 v23, 0x10

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2, v8, v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 606
    const/16 v23, 0x0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v25, v22, v16

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 607
    const/16 v23, 0x0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v17

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v25, v25, v16

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 608
    const/16 v23, 0x0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v18

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 628
    :goto_120
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 629
    int-to-float v0, v12

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 630
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 631
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 632
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_14c
    .catchall {:try_start_1 .. :try_end_14c} :catchall_1f2

    .line 635
    monitor-exit p0

    return-void

    .line 552
    .end local v5           #background:Landroid/graphics/drawable/Drawable;
    .end local v6           #h:I
    .end local v7           #height:I
    .end local v11           #paddingBottom:I
    .end local v12           #paddingLeft:I
    .end local v13           #paddingRight:I
    .end local v14           #paddingTop:I
    .end local v15           #progress:Landroid/graphics/drawable/Drawable;
    .end local v16           #progressSpacing:I
    .end local v17           #scale:F
    .end local v18           #scale2:F
    .end local v19           #secondary:Landroid/graphics/drawable/Drawable;
    .end local v20           #tempHeight:I
    .end local v21           #tempWidth:I
    .end local v22           #w:I
    :cond_14e
    const/16 v17, 0x0

    goto/16 :goto_24

    .line 553
    .restart local v17       #scale:F
    :cond_152
    const/16 v18, 0x0

    goto/16 :goto_36

    .line 585
    .restart local v5       #background:Landroid/graphics/drawable/Drawable;
    .restart local v6       #h:I
    .restart local v7       #height:I
    .restart local v11       #paddingBottom:I
    .restart local v12       #paddingLeft:I
    .restart local v13       #paddingRight:I
    .restart local v14       #paddingTop:I
    .restart local v15       #progress:Landroid/graphics/drawable/Drawable;
    .restart local v16       #progressSpacing:I
    .restart local v18       #scale2:F
    .restart local v19       #secondary:Landroid/graphics/drawable/Drawable;
    .restart local v20       #tempHeight:I
    .restart local v21       #tempWidth:I
    .restart local v22       #w:I
    :cond_156
    move/from16 v20, v6

    goto/16 :goto_86

    .line 602
    :cond_15a
    const/16 v16, 0x0

    goto/16 :goto_b8

    .line 611
    :cond_15e
    :try_start_15e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1f5

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    move/from16 v21, v0

    .line 617
    :goto_172
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->left:I

    .line 618
    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->top:I

    .line 619
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    add-int v23, v23, v22

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->right:I

    .line 620
    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v23, v23, v6

    move/from16 v0, v23

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    .line 622
    const/16 v23, 0x1

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1, v6, v8, v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 623
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 624
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    sub-float v24, v24, v17

    int-to-float v0, v6

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v15, v0, v1, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 625
    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    const/high16 v24, 0x3f80

    sub-float v24, v24, v18

    int-to-float v0, v6

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
    :try_end_1f0
    .catchall {:try_start_15e .. :try_end_1f0} :catchall_1f2

    goto/16 :goto_120

    .line 546
    .end local v5           #background:Landroid/graphics/drawable/Drawable;
    .end local v6           #h:I
    .end local v7           #height:I
    .end local v8           #mContainer:Landroid/graphics/Rect;
    .end local v9           #mOutRect:Landroid/graphics/Rect;
    .end local v10           #max:I
    .end local v11           #paddingBottom:I
    .end local v12           #paddingLeft:I
    .end local v13           #paddingRight:I
    .end local v14           #paddingTop:I
    .end local v15           #progress:Landroid/graphics/drawable/Drawable;
    .end local v16           #progressSpacing:I
    .end local v17           #scale:F
    .end local v18           #scale2:F
    .end local v19           #secondary:Landroid/graphics/drawable/Drawable;
    .end local v20           #tempHeight:I
    .end local v21           #tempWidth:I
    .end local v22           #w:I
    :catchall_1f2
    move-exception v23

    monitor-exit p0

    throw v23

    .line 615
    .restart local v5       #background:Landroid/graphics/drawable/Drawable;
    .restart local v6       #h:I
    .restart local v7       #height:I
    .restart local v8       #mContainer:Landroid/graphics/Rect;
    .restart local v9       #mOutRect:Landroid/graphics/Rect;
    .restart local v10       #max:I
    .restart local v11       #paddingBottom:I
    .restart local v12       #paddingLeft:I
    .restart local v13       #paddingRight:I
    .restart local v14       #paddingTop:I
    .restart local v15       #progress:Landroid/graphics/drawable/Drawable;
    .restart local v16       #progressSpacing:I
    .restart local v17       #scale:F
    .restart local v18       #scale2:F
    .restart local v19       #secondary:Landroid/graphics/drawable/Drawable;
    .restart local v20       #tempHeight:I
    .restart local v21       #tempWidth:I
    .restart local v22       #w:I
    :cond_1f5
    move/from16 v21, v22

    goto/16 :goto_172
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 640
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 642
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 643
    .local v2, dw:I
    const/4 v1, 0x0

    .line 644
    .local v1, dh:I
    if-eqz v0, :cond_27

    .line 645
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinWidth:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 646
    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMinHeight:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 649
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 650
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 652
    invoke-static {v2, p1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v3

    invoke-static {v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->resolveSize(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMeasuredDimension(II)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 654
    monitor-exit p0

    return-void

    .line 640
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #dh:I
    .end local v2           #dw:I
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method onProgressRefresh(FZ)V
    .registers 3
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 542
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 712
    move-object v0, p1

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    .line 714
    .local v0, ss:Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 716
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    if-lez v1, :cond_19

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_19

    .line 717
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress2:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setSecondaryProgress(I)V

    .line 719
    :cond_19
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    if-lez v1, :cond_28

    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-gt v1, v2, :cond_28

    .line 720
    iget v1, v0, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 721
    :cond_28
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 706
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 707
    .local v0, superState:Landroid/os/Parcelable;
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    invoke-direct {v1, v0, v2, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar$SavedState;-><init>(Landroid/os/Parcelable;II)V

    return-object v1
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 345
    const v0, -0x8b8b8c

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 346
    return-void
.end method

.method public setBackgroundDrawable(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 314
    return-void
.end method

.method public setIndicatorThickness(I)V
    .registers 2
    .parameter "thickness"

    .prologue
    .line 364
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mIndicatorThickness:I

    .line 365
    return-void
.end method

.method public setMax(I)V
    .registers 3
    .parameter "max"

    .prologue
    .line 429
    if-gez p1, :cond_3

    .line 430
    const/4 p1, 0x0

    .line 432
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-eq p1, v0, :cond_12

    .line 433
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->postInvalidate()V

    .line 436
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-le v0, p1, :cond_12

    .line 437
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 440
    :cond_12
    return-void
.end method

.method public setProgress(I)V
    .registers 3
    .parameter "progress"

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(IZ)V

    .line 450
    return-void
.end method

.method declared-synchronized setProgress(IZ)V
    .registers 5
    .parameter "progress"
    .parameter "fromUser"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 726
    monitor-enter p0

    if-gez p1, :cond_4

    .line 727
    const/4 p1, 0x0

    .line 730
    :cond_4
    :try_start_4
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_a

    .line 731
    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 734
    :cond_a
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    if-eq p1, v0, :cond_18

    .line 735
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    .line 736
    const v0, 0x102000d

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgress:I

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->refreshProgress(IIZ)V

    .line 738
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1d

    .line 739
    monitor-exit p0

    return-void

    .line 726
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 356
    return-void
.end method

.method public setProgressDrawable(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 324
    return-void
.end method

.method public setSecondaryProgress(I)V
    .registers 3
    .parameter "secondaryProgress"

    .prologue
    .line 476
    if-gez p1, :cond_3

    .line 477
    const/4 p1, 0x0

    .line 480
    :cond_3
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    if-le p1, v0, :cond_9

    .line 481
    iget p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mMax:I

    .line 484
    :cond_9
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    if-eq p1, v0, :cond_12

    .line 485
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryProgress:I

    .line 486
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->invalidate()V

    .line 488
    :cond_12
    return-void
.end method

.method public setSecondaryProgressColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    return-void
.end method

.method public setSecondaryProgressDrawable(I)V
    .registers 3
    .parameter "resourceId"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwProgressBar;->mSecondaryDrawable:Landroid/graphics/drawable/Drawable;

    .line 336
    return-void
.end method
