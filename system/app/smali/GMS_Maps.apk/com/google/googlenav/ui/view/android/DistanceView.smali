.class public Lcom/google/googlenav/ui/view/android/DistanceView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lan/y;


# static fields
.field private static final b:I


# instance fields
.field a:Lat/B;

.field private c:I

.field private d:Lat/B;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:F

.field private h:Lan/h;

.field private i:Landroid/graphics/Paint;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/16 v0, 0x99

    .line 41
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/view/android/DistanceView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method private declared-synchronized a(I)V
    .registers 3
    .parameter

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    .line 233
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->c()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 234
    monitor-exit p0

    return-void

    .line 232
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    sget v1, Lcom/google/googlenav/ui/view/android/DistanceView;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    new-instance v0, Lcom/google/googlenav/ui/view/android/aA;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aA;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->k:Ljava/lang/Runnable;

    .line 132
    new-instance v0, Lcom/google/googlenav/ui/view/android/aB;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aB;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->l:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/google/googlenav/ui/view/android/aC;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/aC;-><init>(Lcom/google/googlenav/ui/view/android/DistanceView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->m:Ljava/lang/Runnable;

    .line 145
    return-void
.end method

.method private declared-synchronized a(Lat/B;)V
    .registers 6
    .parameter

    .prologue
    .line 343
    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lat/B;

    if-nez v0, :cond_11

    .line 344
    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    .line 355
    :goto_f
    monitor-exit p0

    return-void

    .line 347
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lat/B;

    invoke-virtual {p1, v0}, Lat/B;->a(Lat/B;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    .line 348
    iget-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    const-wide v2, 0x607bedba4L

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    .line 349
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V

    .line 353
    :goto_28
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lat/B;
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2b

    goto :goto_f

    .line 343
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 351
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lat/B;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/o;->a(Lat/B;Lat/B;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_2b

    goto :goto_28
.end method

.method private declared-synchronized c()V
    .registers 3

    .prologue
    .line 187
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->d()V

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_27

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_25

    .line 190
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_25

    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_61

    .line 211
    :cond_25
    :goto_25
    monitor-exit p0

    return-void

    .line 197
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3a

    .line 198
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3a

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->l:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z

    .line 202
    :cond_3a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 204
    iget v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_59

    .line 205
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->m:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->post(Ljava/lang/Runnable;)Z

    .line 206
    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    .line 208
    :cond_59
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    .line 209
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->postInvalidate()V
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_61

    goto :goto_25

    .line 187
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 218
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    .line 224
    :goto_9
    return-void

    .line 222
    :cond_a
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/o;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    goto :goto_9
.end method

.method private declared-synchronized e()V
    .registers 3

    .prologue
    .line 248
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->c:I

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lat/B;

    .line 250
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    .line 251
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->f:Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    .line 253
    monitor-exit p0

    return-void

    .line 248
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->g()Lat/B;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Lat/B;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 320
    monitor-exit p0

    return-void

    .line 319
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Lat/B;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;

    if-nez v1, :cond_6

    .line 338
    :cond_5
    :goto_5
    return-object v0

    .line 331
    :cond_6
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;

    invoke-interface {v1}, Lan/h;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 334
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;

    invoke-interface {v1}, Lan/h;->m()Lan/s;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_5

    .line 336
    invoke-virtual {v1}, Lan/s;->a()Lat/B;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;

    if-eqz v0, :cond_9

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;

    invoke-interface {v0, p0}, Lan/h;->a(Lan/y;)V

    .line 269
    :cond_9
    return-void
.end method

.method public declared-synchronized a(ILan/h;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 394
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 395
    monitor-exit p0

    return-void

    .line 394
    :catchall_7
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

    .line 364
    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v0

    if-nez v0, :cond_d

    .line 365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Lat/B;)V

    .line 385
    :cond_c
    :goto_c
    return-void

    .line 369
    :cond_d
    invoke-interface {p2}, Lan/h;->m()Lan/s;

    move-result-object v0

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    .line 372
    invoke-virtual {v0, p1}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 376
    monitor-enter p0

    .line 379
    :try_start_1c
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lat/B;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->d:Lat/B;

    invoke-virtual {v0, v1}, Lat/B;->a(Lat/B;)J

    move-result-wide v1

    mul-long/2addr v1, v3

    mul-long/2addr v1, v3

    iget-wide v3, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->e:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_31

    .line 382
    :cond_2e
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a(Lat/B;)V

    .line 384
    :cond_31
    monitor-exit p0

    goto :goto_c

    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_33

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;

    if-eqz v0, :cond_9

    .line 283
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;

    invoke-interface {v0, p0}, Lan/h;->b(Lan/y;)V

    .line 285
    :cond_9
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 257
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 258
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->a()V

    .line 259
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 274
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->b()V

    .line 275
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter

    .prologue
    .line 305
    const-string v0, ""

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 313
    :goto_a
    return-void

    .line 308
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 309
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 312
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
    .parameter
    .parameter

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->g:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    .line 291
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_33

    .line 295
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

    .line 298
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 299
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/view/android/DistanceView;->setMeasuredDimension(II)V

    .line 302
    return-void

    .line 291
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public declared-synchronized setDestination(Lat/B;)V
    .registers 3
    .parameter

    .prologue
    .line 241
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->a:Lat/B;

    .line 242
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->e()V

    .line 243
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->f()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 244
    monitor-exit p0

    return-void

    .line 241
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInitialVisibility(Lat/B;)V
    .registers 7
    .parameter

    .prologue
    .line 156
    const/16 v0, 0x8

    .line 157
    if-eqz p1, :cond_18

    .line 158
    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->g()Lat/B;

    move-result-object v1

    .line 159
    if-eqz v1, :cond_18

    .line 160
    invoke-virtual {v1, p1}, Lat/B;->a(Lat/B;)J

    move-result-wide v1

    .line 161
    const-wide v3, 0x607bedba4L

    cmp-long v1, v1, v3

    if-gtz v1, :cond_18

    .line 162
    const/4 v0, 0x0

    .line 166
    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/DistanceView;->setVisibility(I)V

    .line 167
    return-void
.end method

.method public declared-synchronized setLocationProvider(Lan/h;)V
    .registers 3
    .parameter

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->h:Lan/h;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTextSize(F)V
    .registers 4
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/DistanceView;->i:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 422
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/DistanceView;->postInvalidate()V

    .line 423
    return-void
.end method
