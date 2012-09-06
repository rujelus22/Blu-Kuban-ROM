.class LC/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/util/Set;

.field private static l:F

.field private static m:F

.field private static n:F

.field private static o:F


# instance fields
.field public final a:LaP/d;

.field public final b:LaP/t;

.field public final c:I

.field public final d:Lat/B;

.field public final e:J

.field public final f:F

.field public final g:F

.field public final h:F

.field public final i:Z

.field public final j:F

.field private final p:LaP/a;

.field private q:LaP/a;

.field private r:F

.field private s:F

.field private t:Z

.field private u:LaP/a;

.field private v:LC/i;

.field private final w:F

.field private x:LC/j;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 78
    sget-object v0, LC/j;->c:LC/j;

    sget-object v1, LC/j;->d:LC/j;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, LC/h;->k:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(LaP/d;LaP/t;ILC/R;FFZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p1, p0, LC/h;->a:LaP/d;

    .line 222
    iput-object p2, p0, LC/h;->b:LaP/t;

    .line 223
    iput p3, p0, LC/h;->c:I

    .line 224
    invoke-static {p4}, LF/g;->a(Landroid/location/Location;)Lat/B;

    move-result-object v0

    iput-object v0, p0, LC/h;->d:Lat/B;

    .line 225
    invoke-virtual {p4}, LC/R;->getAccuracy()F

    move-result v0

    iput v0, p0, LC/h;->h:F

    .line 226
    invoke-virtual {p4}, LC/R;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, LC/h;->e:J

    .line 227
    iput p5, p0, LC/h;->f:F

    .line 228
    invoke-direct {p0, p5}, LC/h;->a(F)F

    move-result v0

    iput v0, p0, LC/h;->g:F

    .line 229
    iput p6, p0, LC/h;->j:F

    .line 230
    iput-boolean p7, p0, LC/h;->i:Z

    .line 231
    sget-object v0, LC/i;->b:LC/i;

    iput-object v0, p0, LC/h;->v:LC/i;

    .line 233
    invoke-static {}, LF/j;->a()LF/q;

    move-result-object v0

    .line 234
    iget v1, v0, LF/q;->e:F

    iget v2, v0, LF/q;->d:F

    add-float/2addr v1, v2

    sput v1, LC/h;->o:F

    .line 235
    iget v1, v0, LF/q;->f:F

    sput v1, LC/h;->l:F

    .line 236
    iget v1, v0, LF/q;->g:F

    sput v1, LC/h;->m:F

    .line 237
    iget v0, v0, LF/q;->h:F

    sput v0, LC/h;->n:F

    .line 239
    new-instance v0, LaP/a;

    invoke-direct {p0, v3, v3}, LC/h;->a(ZZ)F

    move-result v1

    invoke-direct {v0, p2, v1}, LaP/a;-><init>(LaP/t;F)V

    iput-object v0, p0, LC/h;->p:LaP/a;

    .line 240
    invoke-direct {p0}, LC/h;->i()F

    move-result v0

    iput v0, p0, LC/h;->w:F

    .line 241
    return-void
.end method

.method private a(F)F
    .registers 4
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x0

    iget v1, p0, LC/h;->h:F

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private a(ZZ)F
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, LC/h;->a:LaP/d;

    iget-object v2, p0, LC/h;->b:LaP/t;

    invoke-virtual {v1, v2}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v1

    .line 470
    invoke-virtual {v1}, LaP/h;->w()F

    move-result v2

    .line 472
    cmpl-float v3, v2, v0

    if-nez v3, :cond_12

    .line 498
    :cond_11
    :goto_11
    return v0

    .line 475
    :cond_12
    if-eqz p2, :cond_2f

    iget v3, p0, LC/h;->g:F

    sget v4, LC/h;->o:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2f

    .line 480
    invoke-virtual {p0}, LC/h;->b()F

    move-result v3

    invoke-direct {p0, v3}, LC/h;->b(F)F

    move-result v3

    .line 481
    sub-float v3, v2, v3

    sget v4, LC/h;->o:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2f

    .line 482
    const/high16 v0, 0x3f80

    goto :goto_11

    .line 485
    :cond_2f
    if-eqz p1, :cond_47

    iget v3, p0, LC/h;->g:F

    sget v4, LC/h;->o:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_47

    .line 486
    invoke-virtual {p0}, LC/h;->a()F

    move-result v3

    invoke-direct {p0, v3}, LC/h;->b(F)F

    move-result v3

    .line 487
    sget v4, LC/h;->o:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_11

    .line 491
    :cond_47
    iget v0, p0, LC/h;->j:F

    invoke-direct {p0, v0}, LC/h;->b(F)F

    move-result v0

    .line 495
    iget v3, p0, LC/h;->c:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_60

    iget v3, p0, LC/h;->c:I

    invoke-virtual {v1}, LaP/h;->v()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v3, v1, :cond_65

    .line 496
    :cond_60
    iget v1, p0, LC/h;->g:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_11

    .line 498
    :cond_65
    div-float/2addr v0, v2

    goto :goto_11
.end method

.method private a(LaP/a;LaP/a;F)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 399
    sget-object v0, LC/i;->a:LC/i;

    iput-object v0, p0, LC/h;->v:LC/i;

    .line 400
    iget v0, p0, LC/h;->w:F

    neg-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_17

    .line 401
    iget-object v0, p0, LC/h;->a:LaP/d;

    iget v1, p0, LC/h;->w:F

    neg-float v1, v1

    invoke-static {v0, p2, v1}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object v0

    iput-object v0, p0, LC/h;->u:LaP/a;

    .line 405
    :goto_16
    return-void

    .line 403
    :cond_17
    iput-object p1, p0, LC/h;->u:LaP/a;

    goto :goto_16
.end method

.method private b(F)F
    .registers 7
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 508
    iget-object v2, p0, LC/h;->a:LaP/d;

    iget-object v3, p0, LC/h;->b:LaP/t;

    invoke-virtual {v2, v3}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v2

    .line 509
    iget v3, p0, LC/h;->c:I

    invoke-virtual {v2, v3}, LaP/h;->d(I)F

    move-result v3

    .line 510
    iget v4, p0, LC/h;->c:I

    invoke-virtual {v2, v4}, LaP/h;->c(I)F

    move-result v2

    .line 512
    cmpg-float v4, p1, v0

    if-gez v4, :cond_20

    move p1, v0

    .line 517
    :cond_1c
    :goto_1c
    mul-float v0, v3, p1

    add-float/2addr v0, v2

    return v0

    .line 514
    :cond_20
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1c

    move p1, v1

    .line 515
    goto :goto_1c
.end method

.method private b(LaP/a;LaP/a;F)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 412
    sget-object v0, LC/i;->c:LC/i;

    iput-object v0, p0, LC/h;->v:LC/i;

    .line 413
    iget v0, p0, LC/h;->w:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_15

    .line 414
    iget-object v0, p0, LC/h;->a:LaP/d;

    iget v1, p0, LC/h;->w:F

    invoke-static {v0, p2, v1}, LF/g;->a(LaP/d;LaP/a;F)LaP/a;

    move-result-object v0

    iput-object v0, p0, LC/h;->u:LaP/a;

    .line 418
    :goto_14
    return-void

    .line 416
    :cond_15
    iput-object p1, p0, LC/h;->u:LaP/a;

    goto :goto_14
.end method

.method private i()F
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, LC/h;->a:LaP/d;

    iget-object v1, p0, LC/h;->b:LaP/t;

    invoke-virtual {v0, v1}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    iget v1, p0, LC/h;->c:I

    invoke-virtual {v0, v1}, LaP/h;->d(I)F

    move-result v0

    .line 246
    sget v1, LC/h;->l:F

    mul-float/2addr v0, v1

    .line 247
    sget v1, LC/h;->m:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1a

    .line 248
    sget v0, LC/h;->m:F

    .line 252
    :cond_19
    :goto_19
    return v0

    .line 249
    :cond_1a
    sget v1, LC/h;->n:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_19

    .line 250
    sget v0, LC/h;->n:F

    goto :goto_19
.end method

.method private declared-synchronized j()V
    .registers 3

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, LC/h;->t:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eqz v0, :cond_7

    .line 310
    :goto_5
    monitor-exit p0

    return-void

    .line 304
    :cond_7
    :try_start_7
    iget-object v0, p0, LC/h;->a:LaP/d;

    iget-object v1, p0, LC/h;->b:LaP/t;

    invoke-virtual {v0, v1}, LaP/d;->a(LaP/t;)LaP/h;

    move-result-object v0

    .line 305
    iget v1, p0, LC/h;->c:I

    invoke-virtual {v0, v1}, LaP/h;->d(I)F

    move-result v0

    .line 306
    iget v1, p0, LC/h;->h:F

    div-float v0, v1, v0

    .line 307
    iget v1, p0, LC/h;->j:F

    sub-float/2addr v1, v0

    iput v1, p0, LC/h;->r:F

    .line 308
    iget v1, p0, LC/h;->j:F

    add-float/2addr v0, v1

    iput v0, p0, LC/h;->s:F

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, LC/h;->t:Z
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_5

    .line 301
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 291
    invoke-direct {p0}, LC/h;->j()V

    .line 292
    iget v0, p0, LC/h;->r:F

    return v0
.end method

.method public a(LC/j;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, LC/h;->x:LC/j;

    .line 314
    return-void
.end method

.method public a(LaP/a;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, LC/h;->u:LaP/a;

    .line 392
    return-void
.end method

.method public a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, LC/h;->p:LaP/a;

    iput-object v0, p0, LC/h;->q:LaP/a;

    .line 446
    iget v0, p0, LC/h;->g:F

    sget v1, LC/h;->o:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_48

    .line 447
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, LC/h;->a(ZZ)F

    move-result v1

    .line 448
    iget-object v0, p0, LC/h;->b:LaP/t;

    .line 449
    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2f

    .line 450
    new-instance v2, LaP/v;

    iget-object v3, p0, LC/h;->a:LaP/d;

    invoke-direct {v2, v3}, LaP/v;-><init>(LaP/d;)V

    invoke-virtual {v2, v0}, LaP/v;->a(LaP/t;)LaP/v;

    move-result-object v2

    .line 451
    invoke-virtual {v2}, LaP/v;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 452
    invoke-virtual {v2}, LaP/v;->a()LaP/t;

    move-result-object v0

    .line 453
    const/4 v1, 0x0

    .line 458
    :cond_2f
    iget-object v2, p0, LC/h;->p:LaP/a;

    iget-object v2, v2, LaP/a;->a:LaP/t;

    invoke-virtual {v0, v2}, LaP/t;->a(LaP/t;)I

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, LC/h;->p:LaP/a;

    iget v2, v2, LaP/a;->b:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_48

    .line 459
    :cond_41
    new-instance v2, LaP/a;

    invoke-direct {v2, v0, v1}, LaP/a;-><init>(LaP/t;F)V

    iput-object v2, p0, LC/h;->q:LaP/a;

    .line 462
    :cond_48
    return-void
.end method

.method public a(LC/h;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 265
    iget-object v2, p0, LC/h;->b:LaP/t;

    iget-object v3, p1, LC/h;->b:LaP/t;

    invoke-virtual {v2, v3}, LaP/t;->a(LaP/t;)I

    move-result v2

    .line 266
    if-eqz v2, :cond_11

    .line 267
    if-gez v2, :cond_f

    .line 272
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 267
    goto :goto_e

    .line 269
    :cond_11
    iget v2, p0, LC/h;->c:I

    iget v3, p1, LC/h;->c:I

    if-eq v2, v3, :cond_1f

    .line 270
    iget v2, p0, LC/h;->c:I

    iget v3, p1, LC/h;->c:I

    if-lt v2, v3, :cond_e

    move v0, v1

    goto :goto_e

    .line 272
    :cond_1f
    iget v2, p0, LC/h;->j:F

    iget v3, p1, LC/h;->j:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public b()F
    .registers 2

    .prologue
    .line 296
    invoke-direct {p0}, LC/h;->j()V

    .line 297
    iget v0, p0, LC/h;->s:F

    return v0
.end method

.method public b(LC/h;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, LC/h;->b:LaP/t;

    iget-object v3, p1, LC/h;->b:LaP/t;

    invoke-virtual {v2, v3}, LaP/t;->a(LaP/t;)I

    move-result v2

    .line 281
    if-eqz v2, :cond_11

    .line 282
    if-gez v2, :cond_f

    .line 287
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 282
    goto :goto_e

    .line 284
    :cond_11
    iget v2, p0, LC/h;->c:I

    iget v3, p1, LC/h;->c:I

    if-eq v2, v3, :cond_1f

    .line 285
    iget v2, p0, LC/h;->c:I

    iget v3, p1, LC/h;->c:I

    if-lt v2, v3, :cond_e

    move v0, v1

    goto :goto_e

    .line 287
    :cond_1f
    invoke-virtual {p0}, LC/h;->b()F

    move-result v2

    invoke-virtual {p1}, LC/h;->a()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-ltz v2, :cond_e

    move v0, v1

    goto :goto_e
.end method

.method public c(LC/h;)LC/i;
    .registers 7
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, LC/h;->v:LC/i;

    sget-object v1, LC/i;->a:LC/i;

    if-ne v0, v1, :cond_9

    .line 353
    iget-object v0, p0, LC/h;->v:LC/i;

    .line 379
    :goto_8
    return-object v0

    .line 355
    :cond_9
    invoke-virtual {p0}, LC/h;->g()LaP/a;

    move-result-object v0

    .line 356
    invoke-virtual {p1}, LC/h;->e()LC/i;

    move-result-object v1

    .line 357
    invoke-virtual {p1}, LC/h;->f()LaP/a;

    move-result-object v2

    .line 358
    iget-object v3, p0, LC/h;->a:LaP/d;

    invoke-static {v3, v0, v2}, LF/g;->a(LaP/d;LaP/a;LaP/a;)F

    move-result v3

    .line 360
    sget-object v4, LC/i;->b:LC/i;

    if-ne v1, v4, :cond_40

    .line 361
    iget v1, p0, LC/h;->w:F

    neg-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_2c

    .line 362
    invoke-direct {p0, v2, v0, v3}, LC/h;->a(LaP/a;LaP/a;F)V

    .line 379
    :goto_29
    iget-object v0, p0, LC/h;->v:LC/i;

    goto :goto_8

    .line 363
    :cond_2c
    iget v1, p0, LC/h;->w:F

    iget v4, p0, LC/h;->h:F

    add-float/2addr v1, v4

    cmpl-float v1, v3, v1

    if-lez v1, :cond_39

    .line 365
    invoke-direct {p0, v2, v0, v3}, LC/h;->b(LaP/a;LaP/a;F)V

    goto :goto_29

    .line 368
    :cond_39
    sget-object v0, LC/i;->b:LC/i;

    iput-object v0, p0, LC/h;->v:LC/i;

    .line 369
    iput-object v2, p0, LC/h;->u:LaP/a;

    goto :goto_29

    .line 371
    :cond_40
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_4f

    sget-object v4, LC/i;->a:LC/i;

    if-ne v1, v4, :cond_53

    iget v1, p0, LC/h;->h:F

    cmpg-float v1, v3, v1

    if-gez v1, :cond_53

    .line 375
    :cond_4f
    invoke-direct {p0, v2, v0, v3}, LC/h;->a(LaP/a;LaP/a;F)V

    goto :goto_29

    .line 377
    :cond_53
    invoke-direct {p0, v2, v0, v3}, LC/h;->b(LaP/a;LaP/a;F)V

    goto :goto_29
.end method

.method public c()LC/j;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, LC/h;->x:LC/j;

    return-object v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 321
    sget-object v0, LC/h;->k:Ljava/util/Set;

    iget-object v1, p0, LC/h;->x:LC/j;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()LC/i;
    .registers 2

    .prologue
    .line 383
    iget-object v0, p0, LC/h;->v:LC/i;

    return-object v0
.end method

.method public f()LaP/a;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, LC/h;->u:LaP/a;

    return-object v0
.end method

.method public g()LaP/a;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, LC/h;->p:LaP/a;

    return-object v0
.end method

.method public h()LaP/a;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, LC/h;->q:LaP/a;

    if-nez v0, :cond_8

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LC/h;->a(Z)V

    .line 437
    :cond_8
    iget-object v0, p0, LC/h;->q:LaP/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 330
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "point"

    iget-object v2, p0, LC/h;->d:Lat/B;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "accuracy"

    iget v2, p0, LC/h;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "distanceLessAccuracy"

    iget v2, p0, LC/h;->g:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "orthogonalProgress"

    iget v2, p0, LC/h;->j:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "segmentIndex"

    iget-object v2, p0, LC/h;->b:LaP/t;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "subSegmentIndex"

    iget v2, p0, LC/h;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "validity"

    iget-object v2, p0, LC/h;->x:LC/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "direction"

    iget-object v2, p0, LC/h;->v:LC/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "isOutsideBounds"

    iget-boolean v2, p0, LC/h;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
