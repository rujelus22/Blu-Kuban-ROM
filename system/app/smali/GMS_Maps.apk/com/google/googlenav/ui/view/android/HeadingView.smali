.class public Lcom/google/googlenav/ui/view/android/HeadingView;
.super Landroid/view/View;

# interfaces
.implements LaE/m;
.implements LaP/i;


# instance fields
.field private a:LaJ/B;

.field private b:F

.field private c:LaJ/B;

.field private d:J

.field private e:F

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:LaE/h;

.field private i:LaP/h;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c()V

    return-void
.end method

.method private declared-synchronized a(F)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(F)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private c()V
    .registers 2

    const v0, 0x7f0201c0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(I)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/bq;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/bq;-><init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/googlenav/ui/view/android/br;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/br;-><init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->k:Ljava/lang/Runnable;

    return-void
.end method

.method private declared-synchronized c(LaJ/B;)V
    .registers 6

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:LaJ/B;

    if-nez v0, :cond_12

    :cond_7
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2d

    :goto_10
    monitor-exit p0

    return-void

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:LaJ/B;

    invoke-virtual {p1, v0}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    const-wide v2, 0x607bedba4L

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V

    :goto_2a
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:LaJ/B;
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2d

    goto :goto_10

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:LaJ/B;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/w;->b(LaJ/B;LaJ/B;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_2d

    goto :goto_2a
.end method

.method private declared-synchronized d()V
    .registers 6

    const-wide/high16 v3, -0x4010

    monitor-enter p0

    :try_start_3
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_23

    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v0, v0

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_21

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->post(Ljava/lang/Runnable;)Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_5e

    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    :cond_23
    :try_start_23
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v0, v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_35

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->post(Ljava/lang/Runnable;)Z

    :cond_35
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lar/i;->d(I)I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    sub-int v1, v0, v1

    invoke-static {v1}, Lar/i;->e(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_58

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v1, v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_21

    :cond_58
    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->postInvalidate()V
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_5e

    goto :goto_21

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .registers 3

    monitor-enter p0

    const/high16 v0, -0x4080

    :try_start_3
    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:LaJ/B;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

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
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    invoke-virtual {v0}, LaE/h;->y()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    invoke-virtual {v0}, LaE/h;->e()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_25

    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaP/h;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaP/h;

    invoke-virtual {v0}, LaP/h;->d()F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_25

    goto :goto_16

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->h()LaJ/B;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c(LaJ/B;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()LaJ/B;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    invoke-virtual {v1}, LaE/h;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    invoke-virtual {v0}, LaE/h;->q()LaJ/B;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaP/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaP/h;

    invoke-virtual {v0, p0}, LaP/h;->a(LaP/i;)V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    invoke-virtual {v0, p0}, LaE/h;->a(LaE/m;)V

    :cond_12
    return-void
.end method

.method public declared-synchronized a(FF)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    invoke-virtual {v0}, LaE/h;->y()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_d
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(F)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public declared-synchronized a(ILaE/h;)V
    .registers 4

    monitor-enter p0

    const/high16 v0, -0x4080

    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(LaE/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    return-void
.end method

.method public a(LaJ/B;)V
    .registers 7

    const/16 v0, 0x8

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->h()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1, p1}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v1

    const-wide v3, 0x607bedba4L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    const/4 v0, 0x0

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    return-void
.end method

.method public a(LaJ/B;LaE/h;)V
    .registers 8

    const-wide/16 v3, 0x64

    invoke-virtual {p2}, LaE/h;->y()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, LaE/h;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(F)V

    :cond_10
    invoke-virtual {p2}, LaE/h;->q()LaJ/B;

    move-result-object v0

    invoke-virtual {v0, p1}, LaJ/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    monitor-enter p0

    :try_start_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:LaJ/B;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:LaJ/B;

    invoke-virtual {v0, v1}, LaJ/B;->a(LaJ/B;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_31

    :cond_2e
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c(LaJ/B;)V

    :cond_31
    monitor-exit p0

    goto :goto_1a

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_33

    throw v0
.end method

.method public a(LaP/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaP/h;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaP/h;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaP/h;

    invoke-virtual {v0, p0}, LaP/h;->b(LaP/i;)V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:LaE/h;

    invoke-virtual {v0, p0}, LaE/h;->c(LaE/m;)V

    :cond_12
    return-void
.end method

.method public declared-synchronized b(LaJ/B;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:LaJ/B;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->e()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->f()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->g()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    float-to-double v0, v0

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-nez v0, :cond_d

    monitor-exit p0

    :goto_c
    return-void

    :cond_d
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    sub-float/2addr v0, v1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_3c

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getHeight()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method
