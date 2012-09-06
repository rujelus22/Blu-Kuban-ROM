.class public Lcom/google/android/apps/docs/experiments/gview/TouchImageView;
.super Landroid/view/View;
.source "TouchImageView.java"


# instance fields
.field private a:F

.field private a:I

.field private final a:LFM;

.field private a:LFR;

.field private a:LFT;

.field private a:Landroid/graphics/Bitmap;

.field private final a:Landroid/os/Handler;

.field private final a:Landroid/view/GestureDetector;

.field private b:F

.field private b:I

.field private c:F

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 198
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/os/Handler;

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:I

    .line 192
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    .line 209
    new-instance v0, LFM;

    new-instance v1, LFU;

    invoke-direct {v1, p0, v2}, LFU;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFP;)V

    invoke-direct {v0, v1}, LFM;-><init>(LFN;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFM;

    .line 210
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, LFS;

    invoke-direct {v1, p0, v2}, LFS;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFP;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/view/GestureDetector;

    .line 211
    return-void
.end method

.method private a()F
    .registers 4

    .prologue
    .line 364
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:I

    return p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFR;)LFR;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFR;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFT;)LFT;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFT;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V
    .registers 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d()V

    return-void
.end method

.method private final a()Z
    .registers 3

    .prologue
    .line 382
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d()F

    move-result v1

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b()Z

    move-result v0

    return v0
.end method

.method private b()F
    .registers 4

    .prologue
    .line 368
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:I

    .line 369
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getWidth()I

    move-result v1

    .line 370
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d()F

    move-result v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    return v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    return p1
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V
    .registers 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->e()V

    return-void
.end method

.method private final b()Z
    .registers 3

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d()Z

    move-result v0

    return v0
.end method

.method private c()F
    .registers 3

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)F
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    return v0
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    return p1
.end method

.method private c()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFT;

    iget v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:I

    iget-object v2, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    invoke-interface {v0, v1, v2, v3}, LFT;->a(ILandroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_2e

    .line 296
    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    .line 297
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->getScaledWidth(Landroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:I

    .line 300
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->getScaledHeight(Landroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:I

    .line 306
    :goto_2d
    return-void

    .line 302
    :cond_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    .line 303
    iput v4, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:I

    .line 304
    iput v4, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:I

    goto :goto_2d
.end method

.method private final c()Z
    .registers 3

    .prologue
    .line 390
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c()F

    move-result v1

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static synthetic c(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a()Z

    move-result v0

    return v0
.end method

.method private d()F
    .registers 3

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    return v0
.end method

.method private d()V
    .registers 8

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 331
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_8

    .line 361
    :goto_7
    return-void

    .line 334
    :cond_8
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_29

    .line 336
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    .line 338
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->invalidate()V

    .line 342
    :cond_29
    const v0, 0x3ca3d70a

    const/high16 v1, 0x4040

    iget v2, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    .line 345
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d()F

    move-result v0

    .line 346
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c()F

    move-result v1

    .line 348
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b()F

    move-result v2

    .line 349
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a()F

    move-result v3

    .line 351
    cmpl-float v4, v2, v5

    if-lez v4, :cond_6d

    .line 352
    iget v4, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    neg-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    .line 356
    :goto_5b
    cmpl-float v0, v3, v5

    if-lez v0, :cond_72

    .line 357
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    neg-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    goto :goto_7

    .line 354
    :cond_6d
    div-float v0, v2, v6

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    goto :goto_5b

    .line 359
    :cond_72
    div-float v0, v3, v6

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    goto :goto_7
.end method

.method private final d()Z
    .registers 3

    .prologue
    .line 394
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static synthetic d(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c()Z

    move-result v0

    return v0
.end method

.method public static synthetic e(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    return v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFR;

    if-eqz v0, :cond_c

    .line 400
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFR;

    invoke-virtual {v0}, LFR;->a()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFR;

    .line 403
    :cond_c
    return-void
.end method

.method public static synthetic f(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;F)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    return v0
.end method


# virtual methods
.method public a(IFFF)LFR;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 407
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    sub-float v0, p2, v0

    int-to-float v1, p1

    div-float v3, v0, v1

    .line 408
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    sub-float v0, p3, v0

    int-to-float v1, p1

    div-float v4, v0, v1

    .line 410
    new-instance v0, LFR;

    move-object v1, p0

    move v2, p1

    move v6, v5

    move v7, p4

    invoke-direct/range {v0 .. v7}, LFR;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;IFFFFF)V

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    .line 225
    const-string v0, "TouchImageView"

    const-string v1, "Recycling bitmap."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    .line 229
    :cond_13
    return-void
.end method

.method public a(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFT;

    if-nez v1, :cond_6

    .line 289
    :cond_5
    :goto_5
    return v0

    .line 278
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFT;

    invoke-interface {v1}, LFT;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 280
    iget v2, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:I

    if-eq v1, v2, :cond_5

    .line 284
    iput v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:I

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFT;

    iget v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:I

    invoke-interface {v0, v1}, LFT;->a(I)V

    .line 287
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c()V

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->invalidate()V

    .line 289
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public b()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/os/Handler;

    new-instance v1, LFP;

    invoke-direct {v1, p0}, LFP;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFT;

    if-eqz v0, :cond_36

    .line 244
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c()V

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_37

    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->d()V

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 250
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    iget v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->c:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 251
    iget v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:F

    neg-float v0, v0

    iget v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 254
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 256
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 271
    :cond_36
    :goto_36
    return-void

    .line 259
    :cond_37
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 260
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 262
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 263
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 264
    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 265
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, LcY;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_36
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFT;

    if-eqz v0, :cond_e

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:LFM;

    invoke-virtual {v0, p1}, LFM;->a(Landroid/view/MotionEvent;)Z

    .line 236
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 238
    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public setHelper(LFT;)V
    .registers 4
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a:Landroid/os/Handler;

    new-instance v1, LFQ;

    invoke-direct {v1, p0, p1}, LFQ;-><init>(Lcom/google/android/apps/docs/experiments/gview/TouchImageView;LFT;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    return-void
.end method
