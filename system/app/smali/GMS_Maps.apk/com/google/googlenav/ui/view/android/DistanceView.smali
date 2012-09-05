.class public Lcom/google/googlenav/ui/view/android/DistanceView;
.super Landroid/view/View;

# interfaces
.implements LaE/m;


# static fields
.field private static final b:I


# instance fields
.field a:LaJ/B;

.field private c:I

.field private d:LaJ/B;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:F

.field private h:LaE/h;

.field private i:Landroid/graphics/Paint;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x99

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/view/android/DistanceView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->c()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/google/googlenav/ui/view/android/DistanceView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/aM;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aM;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->k:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/view/android/aN;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aN;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/view/android/aO;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aO;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->m:Ljava/lang/Runnable;

    return-void
.end method

.method private declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_61

    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->postInvalidate()V
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_61

    goto :goto_25

    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(LaJ/B;)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:LaJ/B;

    if-nez v0, :cond_11

    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    :goto_f
    monitor-exit p0

    return-void

    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:LaJ/B;

    invoke-virtual {p1, v0}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    const-wide v2, 0x607bedba4L

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V

    :goto_28
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:LaJ/B;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2b

    goto :goto_f

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:LaJ/B;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/w;->a(LaJ/B;LaJ/B;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2b

    goto :goto_28
.end method

.method private d()V
    .registers 3

    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/w;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    goto :goto_9
.end method

.method private declared-synchronized e()V
    .registers 3

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:LaJ/B;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->g()LaJ/B;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->c(LaJ/B;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()LaJ/B;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;

    invoke-virtual {v1}, LaE/h;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;

    invoke-virtual {v0, p0}, LaE/h;->a(LaE/m;)V

    :cond_9
    return-void
.end method

.method public declared-synchronized a(ILaE/h;)V
    .registers 4

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaE/h;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LaJ/B;)V
    .registers 7

    const/16 v0, 0x8

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->g()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, p1}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v1

    const-wide v3, 0x607bedba4L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    const/4 v0, 0x0

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 8

    const-wide/16 v3, 0x64

    invoke-virtual {p2}, LaE/h;->q()LaJ/B;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-void

    :cond_d
    monitor-enter p0

    :try_start_e
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:LaJ/B;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:LaJ/B;

    invoke-virtual {v0, v1}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_23

    :cond_20
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->c(LaJ/B;)V

    :cond_23
    monitor-exit p0

    goto :goto_c

    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw v0
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:LaE/h;

    invoke-virtual {v0, p0}, LaE/h;->c(LaE/m;)V

    :cond_9
    return-void
.end method

.method public declared-synchronized b(LaJ/B;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:LaJ/B;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->e()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->f()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, ""

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_a
    return-void

    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a
.end method

.method protected onMeasure(II)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_33

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setMeasuredDimension(II)V

    return-void

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method
