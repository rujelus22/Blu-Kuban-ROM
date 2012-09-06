.class public Lcom/google/android/apps/docs/kixwebview/KixWebView;
.super Landroid/webkit/WebView;
.source "KixWebView.java"

# interfaces
.implements LKD;


# instance fields
.field private a:F

.field private a:I

.field private a:LJV;

.field private a:LJW;

.field private a:LKE;

.field private a:LKF;

.field private a:LKI;

.field private final a:LKg;

.field private final a:Landroid/graphics/Point;

.field private final a:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 253
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 228
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    .line 229
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKI;

    .line 230
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKE;

    .line 231
    new-instance v0, LKg;

    invoke-direct {v0, p0, v3}, LKg;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;LKe;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    .line 234
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    .line 235
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    .line 313
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LKf;

    invoke-direct {v2, p0, v3}, LKf;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;LKe;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/view/GestureDetector;

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 244
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    .line 229
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKI;

    .line 230
    iput-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKE;

    .line 231
    new-instance v0, LKg;

    invoke-direct {v0, p0, v3}, LKg;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;LKe;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    .line 234
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    .line 235
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    .line 313
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, LKf;

    invoke-direct {v2, p0, v3}, LKf;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;LKe;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/view/GestureDetector;

    .line 245
    return-void
.end method

.method private a()I
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 486
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->d()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->a()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 488
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v3}, LKF;->f()I

    move-result v3

    add-int/2addr v2, v3

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 489
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->c()I

    move-result v2

    if-le v1, v2, :cond_3b

    .line 490
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->c()I

    move-result v1

    .line 492
    :cond_3b
    if-ge v1, v0, :cond_3e

    .line 495
    :goto_3d
    return v0

    :cond_3e
    move v0, v1

    goto :goto_3d
.end method

.method private a(F)I
    .registers 5
    .parameter

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getScrollX()I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->d()I

    move-result v1

    add-int/2addr v1, v0

    neg-float v2, p1

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->b(IF)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private a(I)I
    .registers 4
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 474
    mul-int v1, v0, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    .line 475
    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->d()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private a(IF)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 173
    float-to-double v0, p2

    int-to-float v2, p1

    div-float/2addr v2, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sub-int v0, p1, v0

    return v0
.end method

.method private a(IIIF)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    add-int v0, p1, p2

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    div-float/2addr v0, v1

    .line 441
    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr v0, p2

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)I
    .registers 2
    .parameter

    .prologue
    .line 29
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;F)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(F)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(I)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LJV;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJV;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LJW;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKF;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)LKg;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    return-object v0
.end method

.method private a(II)Landroid/graphics/Point;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 449
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scroll correction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->d()I

    move-result v0

    neg-int v0, v0

    .line 451
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->a()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->f()I

    move-result v2

    add-int/2addr v1, v2

    .line 452
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v3}, LKF;->a()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v3}, LKF;->a()F

    move-result v3

    sub-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, v0

    .line 454
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->e()I

    move-result v2

    neg-int v2, v2

    .line 455
    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v3}, LKF;->a()F

    move-result v3

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v4}, LKF;->b()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v5}, LKF;->g()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 457
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 458
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 459
    if-ne p1, v1, :cond_92

    if-eq p2, v2, :cond_98

    :cond_92
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_97
    return-object v0

    :cond_98
    const/4 v0, 0x0

    goto :goto_97
.end method

.method private a()V
    .registers 3

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKI;

    iget v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    invoke-interface {v0, v1}, LKI;->c(I)V

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKE;

    iget v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    invoke-interface {v0, v1}, LKE;->a(I)V

    .line 403
    return-void
.end method

.method private a(F)V
    .registers 6
    .parameter

    .prologue
    .line 416
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjust scroll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_90

    .line 419
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->d()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v3}, LKF;->a()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(IIIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 421
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->e()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v3}, LKF;->b()I

    move-result v3

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(IIIF)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 423
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastZoom set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    .line 426
    :cond_90
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(II)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 429
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    iget v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    invoke-virtual {v0, v1}, LKg;->a(I)V

    .line 430
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    invoke-virtual {v0}, LJW;->b()V

    .line 434
    :goto_ad
    return-void

    .line 432
    :cond_ae
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    invoke-virtual {v0}, LJW;->a()V

    goto :goto_ad
.end method

.method private a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 390
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My scroll to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 393
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->scrollTo(II)V

    .line 394
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    invoke-virtual {v0}, LKg;->a()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 396
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a()V

    .line 398
    :cond_3e
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;F)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(F)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->b(I)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->b(II)V

    return-void
.end method

.method private a()Z
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->a()F

    move-result v0

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/kixwebview/KixWebView;)Z
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a()Z

    move-result v0

    return v0
.end method

.method private b(IF)I
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->f()I

    move-result v1

    add-int/2addr v0, v1

    .line 186
    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    .line 187
    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 188
    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->c()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 189
    if-gez p1, :cond_29

    .line 190
    neg-int v0, p1

    .line 201
    :goto_28
    return v0

    .line 192
    :cond_29
    int-to-float v3, p1

    int-to-float v4, v2

    mul-float/2addr v4, v1

    int-to-float v5, v0

    add-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_41

    cmpl-float v3, p2, v6

    if-lez v3, :cond_41

    .line 193
    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    goto :goto_28

    .line 195
    :cond_41
    sub-int v0, p1, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(IF)I

    move-result v0

    .line 196
    cmpg-float v2, p2, v6

    if-gez v2, :cond_4d

    .line 197
    neg-int v0, v0

    goto :goto_28

    .line 198
    :cond_4d
    cmpl-float v2, p2, v6

    if-lez v2, :cond_59

    .line 199
    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_28

    .line 201
    :cond_59
    int-to-float v2, v0

    const/high16 v3, 0x4000

    div-float v3, v1, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_64

    neg-int v0, v0

    goto :goto_28

    :cond_64
    int-to-float v0, v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_28
.end method

.method private b()V
    .registers 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->a()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    .line 481
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->e()I

    move-result v1

    neg-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(II)V

    .line 482
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset page size, scrolled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void
.end method

.method private b(I)V
    .registers 3
    .parameter

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:I

    if-eq v0, p1, :cond_19

    .line 305
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    invoke-virtual {v0}, LJW;->a()V

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    invoke-virtual {v0, p1}, LKg;->a(I)V

    .line 307
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a()Z

    move-result v0

    if-nez v0, :cond_19

    .line 308
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    invoke-virtual {v0}, LJW;->b()V

    .line 311
    :cond_19
    return-void
.end method

.method private b(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 406
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "My scroll by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getScrollX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(II)V

    .line 408
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V
    .registers 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->b()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 295
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changing page: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->c()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 297
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->b(I)V

    .line 298
    return-void
.end method

.method public a(LKF;LKI;Landroid/os/Handler;LJW;LJV;LKE;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    const-string v0, "KixWebView"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-object p4, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    .line 270
    iput-object p1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    .line 271
    iput-object p2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKI;

    .line 272
    iput-object p5, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJV;

    .line 273
    iput-object p6, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKE;

    .line 274
    invoke-interface {p1}, LKF;->a()F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:F

    .line 275
    new-instance v0, LKe;

    invoke-direct {v0, p0}, LKe;-><init>(Lcom/google/android/apps/docs/kixwebview/KixWebView;)V

    invoke-interface {p1, v0}, LKF;->a(LKG;)V

    .line 291
    return-void
.end method

.method public computeScroll()V
    .registers 1

    .prologue
    .line 501
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 346
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->a()I

    move-result v0

    if-lez v0, :cond_51

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->b()I

    move-result v0

    if-lez v0, :cond_51

    .line 348
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->b()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->g()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4040

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v0}, LKF;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->d()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 353
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 356
    :cond_51
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Measure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v2}, LKF;->a()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->setMeasuredDimension(II)V

    .line 358
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 362
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scroll to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne p1, v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq p2, v0, :cond_5f

    .line 365
    :cond_2e
    const-string v0, "KixWebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unauthorized scroll to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->scrollTo(II)V

    .line 367
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->postInvalidate()V

    .line 382
    :goto_5e
    return-void

    .line 370
    :cond_5f
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getScale()F

    move-result v0

    .line 371
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1}, LKF;->a()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_73

    .line 372
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKF;

    invoke-interface {v1, v0}, LKF;->a(F)V

    goto :goto_5e

    .line 375
    :cond_73
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(II)Landroid/graphics/Point;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_88

    .line 377
    const-string v1, "KixWebView"

    const-string v2, "Correcting"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(II)V

    goto :goto_5e

    .line 381
    :cond_88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_5e
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 318
    iget-object v1, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 319
    const-string v1, "KixWebView"

    const-string v2, "Fling true"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :goto_10
    return v0

    .line 321
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    .line 323
    :cond_1e
    const-string v0, "KixWebView"

    const-string v1, "Up"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a()Z

    move-result v0

    if-nez v0, :cond_36

    .line 325
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LKg;->a(F)V

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    invoke-virtual {v0}, LJW;->b()V

    .line 328
    :cond_36
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10

    .line 329
    :cond_3b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4d

    .line 330
    const-string v0, "KixWebView"

    const-string v1, "Down"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10

    .line 333
    :cond_4d
    const-string v0, "KixWebView"

    const-string v1, "No Fling"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LKg;

    invoke-virtual {v0}, LKg;->a()V

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a:LJW;

    invoke-virtual {v0}, LJW;->a()V

    .line 336
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public setAnimationScroll(I)V
    .registers 3
    .parameter
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->getScrollY()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/kixwebview/KixWebView;->a(II)V

    .line 470
    return-void
.end method
