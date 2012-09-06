.class public Lcom/google/googlenav/ui/view/android/HeadingView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements LaB/i;
.implements Lan/y;


# instance fields
.field private a:Lat/B;

.field private b:F

.field private c:Lat/B;

.field private d:J

.field private e:F

.field private f:I

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Lan/h;

.field private i:LaB/h;

.field private j:Ljava/lang/Runnable;

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    .line 124
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c()V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    .line 116
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->c()V

    .line 117
    return-void
.end method

.method private declared-synchronized a(F)V
    .registers 3
    .parameter

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    .line 240
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 241
    monitor-exit p0

    return-void

    .line 239
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lat/B;)V
    .registers 6
    .parameter

    .prologue
    .line 394
    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lat/B;

    if-nez v0, :cond_12

    .line 395
    :cond_7
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V

    .line 396
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2d

    .line 406
    :goto_10
    monitor-exit p0

    return-void

    .line 398
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lat/B;

    invoke-virtual {p1, v0}, Lat/B;->a(Lat/B;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    .line 399
    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    const-wide v2, 0x607bedba4L

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    .line 400
    const/high16 v0, -0x4080

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V

    .line 404
    :goto_2a
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lat/B;
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2d

    goto :goto_10

    .line 394
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 402
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lat/B;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/o;->b(Lat/B;Lat/B;)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_2d

    goto :goto_2a
.end method

.method private declared-synchronized b(F)V
    .registers 3
    .parameter

    .prologue
    .line 281
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    .line 282
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->d()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 283
    monitor-exit p0

    return-void

    .line 281
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 194
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :cond_e
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 200
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 128
    const v0, 0x7f0201f4

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(I)V

    .line 130
    new-instance v0, Lcom/google/googlenav/ui/view/android/aX;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aX;-><init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->j:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Lcom/google/googlenav/ui/view/android/aY;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aY;-><init>(Lcom/google/googlenav/ui/view/android/HeadingView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->k:Ljava/lang/Runnable;

    .line 141
    return-void
.end method

.method private declared-synchronized d()V
    .registers 6

    .prologue
    const-wide/high16 v3, -0x4010

    .line 209
    monitor-enter p0

    :try_start_3
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    float-to-double v0, v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_23

    .line 210
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v0, v0

    cmpl-double v0, v0, v3

    if-eqz v0, :cond_21

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    .line 212
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_21

    .line 213
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->post(Ljava/lang/Runnable;)Z
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_5e

    .line 231
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 218
    :cond_23
    :try_start_23
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v0, v0

    cmpl-double v0, v0, v3

    if-nez v0, :cond_35

    .line 219
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_35

    .line 220
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->post(Ljava/lang/Runnable;)Z

    .line 223
    :cond_35
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/j;->c(I)I

    move-result v0

    .line 224
    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    sub-int v1, v0, v1

    invoke-static {v1}, Lcom/google/googlenav/common/util/j;->d(I)I

    move-result v1

    .line 226
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_58

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    int-to-double v1, v1

    cmpl-double v1, v1, v3

    if-nez v1, :cond_21

    .line 228
    :cond_58
    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    .line 229
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->postInvalidate()V
    :try_end_5d
    .catchall {:try_start_23 .. :try_end_5d} :catchall_5e

    goto :goto_21

    .line 209
    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .registers 3

    .prologue
    .line 256
    monitor-enter p0

    const/high16 v0, -0x4080

    :try_start_3
    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lat/B;

    .line 258
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    .line 259
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->f:I

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 261
    monitor-exit p0

    return-void

    .line 256
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 2

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    invoke-interface {v0}, Lan/h;->i()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    invoke-interface {v0}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-static {v0}, Lan/s;->b(Landroid/location/Location;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_29

    .line 273
    :cond_1a
    :goto_1a
    monitor-exit p0

    return-void

    .line 270
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaB/h;

    if-eqz v0, :cond_1a

    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaB/h;

    invoke-virtual {v0}, LaB/h;->d()F

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_29

    goto :goto_1a

    .line 268
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()V
    .registers 2

    .prologue
    .line 373
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->h()Lat/B;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(Lat/B;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 374
    monitor-exit p0

    return-void

    .line 373
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Lat/B;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 382
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    if-nez v1, :cond_6

    .line 389
    :cond_5
    :goto_5
    return-object v0

    .line 385
    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    invoke-interface {v1}, Lan/h;->m()Lan/s;

    move-result-object v1

    .line 386
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    invoke-interface {v2}, Lan/h;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 387
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaB/h;

    if-eqz v0, :cond_9

    .line 331
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaB/h;

    invoke-virtual {v0, p0}, LaB/h;->a(LaB/i;)V

    .line 333
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    if-eqz v0, :cond_12

    .line 334
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    invoke-interface {v0, p0}, Lan/h;->a(Lan/y;)V

    .line 336
    :cond_12
    return-void
.end method

.method public declared-synchronized a(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    invoke-interface {v0}, Lan/h;->i()Z

    move-result v0

    if-nez v0, :cond_10

    .line 312
    :cond_d
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(F)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 314
    :cond_10
    monitor-exit p0

    return-void

    .line 311
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 317
    return-void
.end method

.method public declared-synchronized a(ILan/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 451
    monitor-enter p0

    const/high16 v0, -0x4080

    :try_start_3
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(F)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 452
    monitor-exit p0

    return-void

    .line 451
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lat/B;Lan/h;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x64

    .line 415
    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v0

    .line 416
    if-nez v0, :cond_d

    .line 417
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(Lat/B;)V

    .line 442
    :cond_c
    :goto_c
    return-void

    .line 422
    :cond_d
    invoke-interface {p2}, Lan/h;->i()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 423
    invoke-static {v0}, Lan/s;->b(Landroid/location/Location;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/HeadingView;->b(F)V

    .line 426
    :cond_1b
    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 429
    invoke-virtual {v0, p1}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 433
    monitor-enter p0

    .line 436
    :try_start_26
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lat/B;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->c:Lat/B;

    invoke-virtual {v0, v1}, Lat/B;->a(Lat/B;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->d:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3b

    .line 439
    :cond_38
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a(Lat/B;)V

    .line 441
    :cond_3b
    monitor-exit p0

    goto :goto_c

    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaB/h;

    if-eqz v0, :cond_9

    .line 350
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaB/h;

    invoke-virtual {v0, p0}, LaB/h;->b(LaB/i;)V

    .line 352
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    if-eqz v0, :cond_12

    .line 353
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    invoke-interface {v0, p0}, Lan/h;->b(Lan/y;)V

    .line 355
    :cond_12
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 321
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 322
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->a()V

    .line 323
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 340
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 341
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->b()V

    .line 342
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 288
    monitor-enter p0

    .line 289
    :try_start_2
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    float-to-double v0, v0

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-nez v0, :cond_d

    .line 290
    monitor-exit p0

    .line 302
    :goto_c
    return-void

    .line 292
    :cond_d
    iget v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->b:F

    iget v1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->e:F

    sub-float/2addr v0, v1

    .line 293
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_3c

    .line 294
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 296
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getWidth()I

    move-result v1

    .line 297
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->getHeight()I

    move-result v2

    .line 298
    add-int/lit8 v3, v1, 0x1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v0, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 299
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 300
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 301
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_c

    .line 293
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public declared-synchronized setDestination(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 248
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->a:Lat/B;

    .line 249
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->e()V

    .line 250
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->f()V

    .line 251
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->g()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 252
    monitor-exit p0

    return-void

    .line 248
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInitialVisibility(Lat/B;)V
    .registers 7
    .parameter

    .prologue
    .line 152
    const/16 v0, 0x8

    .line 153
    if-eqz p1, :cond_18

    .line 154
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/HeadingView;->h()Lat/B;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_18

    .line 156
    invoke-virtual {v1, p1}, Lat/B;->a(Lat/B;)J

    move-result-wide v1

    .line 157
    const-wide v3, 0x607bedba4L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    .line 158
    const/4 v0, 0x0

    .line 162
    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/HeadingView;->setVisibility(I)V

    .line 163
    return-void
.end method

.method public setLocationProvider(Lan/h;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->h:Lan/h;

    .line 185
    return-void
.end method

.method public setOrientationProvider(LaB/h;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/HeadingView;->i:LaB/h;

    .line 174
    return-void
.end method
