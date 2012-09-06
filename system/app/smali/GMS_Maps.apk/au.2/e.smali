.class public Lau/e;
.super Lat/u;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/vector/dI;

.field private final d:Lau/a;

.field private final e:Lcom/google/android/maps/driveabout/vector/k;

.field private final f:[F

.field private final g:Ln/Q;

.field private final h:Ln/Q;

.field private final i:Lcom/google/googlenav/android/Y;

.field private j:F

.field private k:Lau/i;

.field private final l:Lcom/google/android/maps/driveabout/vector/cs;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dI;Lau/a;Lat/H;Lcom/google/googlenav/android/Y;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x3f80

    .line 121
    invoke-direct {p0}, Lat/u;-><init>()V

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lau/e;->f:[F

    .line 76
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lau/e;->g:Ln/Q;

    .line 83
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lau/e;->h:Ln/Q;

    .line 90
    iput v4, p0, Lau/e;->j:F

    .line 100
    new-instance v0, Lau/f;

    invoke-direct {v0, p0}, Lau/f;-><init>(Lau/e;)V

    iput-object v0, p0, Lau/e;->l:Lcom/google/android/maps/driveabout/vector/cs;

    .line 122
    iput-object p1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    .line 123
    iput-object p2, p0, Lau/e;->d:Lau/a;

    .line 124
    iput-object p4, p0, Lau/e;->i:Lcom/google/googlenav/android/Y;

    .line 125
    invoke-static {p3, v4}, Lau/e;->a(Lat/H;F)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {p2}, Lau/a;->t()I

    move-result v2

    invoke-virtual {p2}, Lau/a;->s()I

    move-result v3

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/k;-><init>(Lcom/google/android/maps/driveabout/vector/l;IIF)V

    iput-object v1, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    .line 128
    iget-object v1, p0, Lau/e;->l:Lcom/google/android/maps/driveabout/vector/cs;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/cs;)V

    .line 129
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V

    .line 130
    invoke-virtual {p2}, Lau/a;->t()I

    move-result v0

    invoke-virtual {p2}, Lau/a;->s()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lau/e;->c(II)V

    .line 131
    return-void
.end method

.method public static a(Lat/Y;F)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 151
    float-to-double v0, p1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(D)F

    move-result v0

    .line 152
    invoke-virtual {p0}, Lat/Y;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    sub-float v0, v1, v0

    return v0
.end method

.method private declared-synchronized a(IILcom/google/android/maps/driveabout/vector/l;)Lat/B;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 581
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 580
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/google/android/maps/driveabout/vector/l;)Lat/B;
    .registers 3
    .parameter

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 237
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v0

    invoke-static {v0}, Lt/e;->b(Ln/Q;)Lat/B;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 236
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lau/e;)Lau/a;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lau/e;->d:Lau/a;

    return-object v0
.end method

.method static synthetic a(Lau/e;Lau/i;)Lau/i;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lau/e;->k:Lau/i;

    return-object p1
.end method

.method static a(Lat/H;F)Lcom/google/android/maps/driveabout/vector/l;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lat/H;->a()Lat/B;

    move-result-object v1

    .line 136
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    invoke-static {v1}, Lt/e;->a(Lat/B;)Ln/Q;

    move-result-object v1

    invoke-virtual {p0}, Lat/H;->b()Lat/Y;

    move-result-object v2

    invoke-static {v2, p1}, Lau/e;->a(Lat/Y;F)F

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 142
    return-object v0
.end method

.method private declared-synchronized a(Lat/B;Lat/Y;Z)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v4

    .line 314
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    .line 318
    if-eqz p2, :cond_105

    .line 319
    iget v1, p0, Lau/e;->j:F

    invoke-static {p2, v1}, Lau/e;->a(Lat/Y;F)F

    move-result v2

    .line 320
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-eq v1, v3, :cond_105

    .line 325
    :goto_1d
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 326
    iget v0, p0, Lau/e;->a:I

    div-int/lit8 v0, v0, 0x2

    .line 327
    iget v1, p0, Lau/e;->b:I

    div-int/lit8 v1, v1, 0x2

    .line 328
    iget-object v3, p0, Lau/e;->g:Ln/Q;

    invoke-static {p1, v3}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 329
    iget-object v3, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v5, p0, Lau/e;->g:Ln/Q;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/vector/k;->b(Ln/Q;)[I

    move-result-object v3

    .line 330
    const/4 v5, 0x0

    aget v5, v3, v5

    sub-int v0, v5, v0

    .line 331
    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int v1, v3, v1

    .line 332
    int-to-double v5, v0

    int-to-double v7, v0

    mul-double/2addr v5, v7

    int-to-double v7, v1

    int-to-double v0, v1

    mul-double/2addr v0, v7

    add-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 334
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    iget-object v1, p0, Lau/e;->g:Ln/Q;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 340
    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_ca

    move-result v1

    if-eqz v1, :cond_6b

    .line 372
    :cond_69
    :goto_69
    monitor-exit p0

    return-void

    .line 347
    :cond_6b
    const/4 v4, -0x1

    .line 348
    if-eqz p3, :cond_d9

    .line 353
    :try_start_6e
    iget-object v1, p0, Lau/e;->k:Lau/i;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lau/e;->k:Lau/i;

    invoke-virtual {v1, v0}, Lau/i;->a(Lcom/google/android/maps/driveabout/vector/l;)Z

    move-result v1

    if-nez v1, :cond_69

    :cond_7a
    invoke-direct {p0, v0, v6}, Lau/e;->a(Lcom/google/android/maps/driveabout/vector/l;I)Z

    move-result v1

    if-nez v1, :cond_69

    .line 356
    iget-object v1, p0, Lau/e;->g:Ln/Q;

    iget-object v3, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    const/4 v1, 0x1

    move v3, v1

    :goto_90
    iget-object v1, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_d0

    const/4 v1, 0x1

    :goto_9b
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2}, Lau/e;->a(ZZZ)V

    .line 358
    new-instance v1, Lau/i;

    invoke-direct {v1, v0}, Lau/i;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    iput-object v1, p0, Lau/e;->k:Lau/i;

    .line 359
    iget-object v0, p0, Lau/e;->k:Lau/i;

    invoke-virtual {v0}, Lau/i;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d2

    const/4 v0, 0x1

    .line 361
    :goto_bf
    if-eqz v0, :cond_d4

    const/4 v0, -0x1

    .line 363
    :goto_c2
    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    iget-object v2, p0, Lau/e;->k:Lau/i;

    invoke-virtual {v1, v2, v0, v4}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;II)V
    :try_end_c9
    .catchall {:try_start_6e .. :try_end_c9} :catchall_ca

    goto :goto_69

    .line 313
    :catchall_ca
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_cd
    const/4 v1, 0x0

    move v3, v1

    goto :goto_90

    :cond_d0
    const/4 v1, 0x0

    goto :goto_9b

    .line 359
    :cond_d2
    const/4 v0, 0x0

    goto :goto_bf

    .line 361
    :cond_d4
    :try_start_d4
    invoke-static {v6}, Lau/e;->b(I)I

    move-result v0

    goto :goto_c2

    .line 366
    :cond_d9
    iget-object v1, p0, Lau/e;->g:Ln/Q;

    iget-object v3, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v3

    invoke-virtual {v1, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_100

    const/4 v1, 0x1

    move v3, v1

    :goto_e9
    iget-object v1, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_103

    const/4 v1, 0x1

    :goto_f4
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v1, v2}, Lau/e;->a(ZZZ)V

    .line 368
    const/4 v1, -0x1

    .line 370
    iget-object v2, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v2, v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;II)V
    :try_end_fe
    .catchall {:try_start_d4 .. :try_end_fe} :catchall_ca

    goto/16 :goto_69

    .line 366
    :cond_100
    const/4 v1, 0x0

    move v3, v1

    goto :goto_e9

    :cond_103
    const/4 v1, 0x0

    goto :goto_f4

    :cond_105
    move v2, v0

    goto/16 :goto_1d
.end method

.method private declared-synchronized a(Ln/Q;Lcom/google/android/maps/driveabout/vector/l;Landroid/graphics/Point;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 561
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lau/e;->f:[F

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;[F)V

    .line 562
    iget-object v0, p0, Lau/e;->f:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lau/e;->f:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 563
    monitor-exit p0

    return-void

    .line 560
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/l;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 379
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    iget-object v1, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_20

    const/16 v0, 0xf

    if-ge p2, v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/l;)Lat/Y;
    .registers 4
    .parameter

    .prologue
    .line 274
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    sget-object v1, Lau/j;->a:Lau/j;

    invoke-virtual {p0, v0, v1}, Lau/e;->a(FLau/j;)Lat/Y;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lau/e;)V
    .registers 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lau/e;->l()V

    return-void
.end method

.method static synthetic c(Lau/e;)Lcom/google/googlenav/android/Y;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lau/e;->i:Lcom/google/googlenav/android/Y;

    return-object v0
.end method

.method private g()I
    .registers 6

    .prologue
    .line 202
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->w()Ln/aK;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ln/aK;->g()Ln/Q;

    move-result-object v1

    invoke-virtual {v1}, Ln/Q;->a()I

    move-result v1

    .line 204
    invoke-virtual {v0}, Ln/aK;->f()Ln/Q;

    move-result-object v2

    invoke-virtual {v2}, Ln/Q;->a()I

    move-result v2

    .line 205
    invoke-virtual {v0}, Ln/aK;->d()Ln/Q;

    move-result-object v3

    invoke-virtual {v3}, Ln/Q;->a()I

    move-result v3

    .line 206
    invoke-virtual {v0}, Ln/aK;->e()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->a()I

    move-result v0

    .line 209
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 210
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    sub-int v0, v4, v0

    return v0
.end method

.method private h()I
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->w()Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->a()Ln/aL;

    move-result-object v0

    invoke-virtual {v0}, Ln/aL;->d()I

    move-result v0

    .line 216
    iget-object v1, p0, Lau/e;->g:Ln/Q;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ln/Q;->d(II)V

    .line 217
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    invoke-virtual {v0}, Ln/Q;->c()I

    move-result v0

    return v0
.end method


# virtual methods
.method public declared-synchronized a(ILat/B;)F
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 169
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    invoke-static {p2, v0}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 170
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v2, p0, Lau/e;->g:Ln/Q;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v0

    .line 172
    int-to-float v1, p1

    iget-object v2, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v3, p0, Lau/e;->g:Ln/Q;

    invoke-virtual {v3}, Ln/Q;->e()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/k;->b(FF)F
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    move-result v0

    mul-float/2addr v0, v1

    monitor-exit p0

    return v0

    .line 168
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()I
    .registers 3

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 179
    invoke-direct {p0}, Lau/e;->g()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    .line 178
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lat/B;)I
    .registers 4
    .parameter

    .prologue
    .line 496
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    invoke-static {p1, v0}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 497
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    iget-object v1, p0, Lau/e;->g:Ln/Q;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Ln/Q;)F

    move-result v0

    float-to-int v0, v0

    .line 502
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    move-result v0

    monitor-exit p0

    return v0

    .line 496
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lat/H;)I
    .registers 4
    .parameter

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p0, Lau/e;->j:F

    invoke-static {p1, v1}, Lau/e;->a(Lat/H;F)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 191
    invoke-direct {p0}, Lau/e;->g()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    .line 190
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lat/B;Lat/Y;II)Lat/B;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v4

    .line 568
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    invoke-static {p1, v0}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 569
    const/4 v5, 0x0

    .line 570
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    iget-object v1, p0, Lau/e;->g:Ln/Q;

    iget v2, p0, Lau/e;->j:F

    invoke-static {p2, v2}, Lau/e;->a(Lat/Y;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 576
    invoke-direct {p0, p3, p4, v0}, Lau/e;->a(IILcom/google/android/maps/driveabout/vector/l;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method protected a(FLau/j;)Lat/Y;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 255
    iget v0, p0, Lau/e;->j:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(D)F

    move-result v0

    .line 256
    const/high16 v1, 0x3f80

    add-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 258
    sget-object v1, Lau/h;->a:[I

    invoke-virtual {p2}, Lau/j;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    .line 267
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 270
    :goto_1a
    const/16 v1, 0x16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    return-object v0

    .line 260
    :pswitch_25
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 261
    goto :goto_1a

    .line 263
    :pswitch_2c
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 264
    goto :goto_1a

    .line 258
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_25
        :pswitch_2c
    .end packed-switch
.end method

.method public declared-synchronized a(F)V
    .registers 5
    .parameter

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p0, Lau/e;->a:I

    iget v2, p0, Lau/e;->b:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/maps/driveabout/vector/k;->a(IIF)V

    .line 163
    iput p1, p0, Lau/e;->j:F
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lau/e;->d:Lau/a;

    invoke-virtual {v0, p1}, Lau/a;->b(I)V

    .line 289
    return-void
.end method

.method public declared-synchronized a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 453
    monitor-enter p0

    .line 456
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_4
    invoke-virtual {p0, v0, v1, v2}, Lau/e;->a(ZZZ)V

    .line 457
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dI;->b(FF)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_10

    .line 458
    monitor-exit p0

    return-void

    .line 453
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lat/B;Landroid/graphics/Point;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 553
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    invoke-static {p1, v0}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 554
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lau/e;->a(Ln/Q;Lcom/google/android/maps/driveabout/vector/l;Landroid/graphics/Point;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 555
    monitor-exit p0

    return-void

    .line 553
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lat/B;Lat/Y;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 299
    monitor-enter p0

    const/4 v0, 0x1

    .line 300
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lau/e;->a(Lat/B;Lat/Y;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 301
    monitor-exit p0

    return-void

    .line 299
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lat/B;Lat/Y;Lat/B;Landroid/graphics/Point;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v4

    .line 538
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    invoke-static {p1, v0}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 539
    iget-object v0, p0, Lau/e;->h:Ln/Q;

    invoke-static {p3, v0}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 540
    const/4 v5, 0x0

    .line 541
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    iget-object v1, p0, Lau/e;->g:Ln/Q;

    iget v2, p0, Lau/e;->j:F

    invoke-static {p2, v2}, Lau/e;->a(Lat/Y;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 547
    iget-object v1, p0, Lau/e;->h:Ln/Q;

    invoke-direct {p0, v1, v0, p4}, Lau/e;->a(Ln/Q;Lcom/google/android/maps/driveabout/vector/l;Landroid/graphics/Point;)V
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 548
    monitor-exit p0

    return-void

    .line 537
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Lat/Y;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 466
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lau/e;->j:F

    invoke-static {p1, v0}, Lau/e;->a(Lat/Y;F)F

    move-result v0

    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v1

    sub-float/2addr v0, v1

    .line 471
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lau/e;->a(ZZZ)V

    .line 472
    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    int-to-float v2, p2

    int-to-float v3, p3

    const/16 v4, 0x14a

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/dI;->a(FFFI)F
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 473
    monitor-exit p0

    return-void

    .line 466
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ln/B;)V
    .registers 3
    .parameter

    .prologue
    .line 608
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dI;->a(Ln/B;)V

    .line 609
    return-void
.end method

.method public a([Lat/B;IIILat/Y;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 445
    if-nez p1, :cond_3

    .line 449
    :goto_2
    return-void

    .line 448
    :cond_3
    aget-object v0, p1, p3

    invoke-virtual {p0, v0, p5}, Lau/e;->d(Lat/B;Lat/Y;)V

    goto :goto_2
.end method

.method public declared-synchronized b()I
    .registers 3

    .prologue
    .line 184
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 185
    invoke-direct {p0}, Lau/e;->h()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    .line 184
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lat/H;)I
    .registers 4
    .parameter

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p0, Lau/e;->j:F

    invoke-static {p1, v1}, Lau/e;->a(Lat/H;F)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 197
    invoke-direct {p0}, Lau/e;->h()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    move-result v0

    monitor-exit p0

    return v0

    .line 196
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(F)V
    .registers 3
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dI;->c(F)V

    .line 527
    return-void
.end method

.method protected declared-synchronized b(Lat/B;Lat/Y;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 293
    monitor-enter p0

    const/4 v0, 0x0

    .line 294
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lau/e;->a(Lat/B;Lat/Y;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 295
    monitor-exit p0

    return-void

    .line 293
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lat/B;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lau/e;->a(Lcom/google/android/maps/driveabout/vector/l;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized c(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2}, Lat/u;->c(II)V

    .line 158
    iget-object v0, p0, Lau/e;->e:Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p0, Lau/e;->j:F

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(IIF)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized c(Lat/B;Lat/Y;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 477
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v4

    .line 479
    iget-object v0, p0, Lau/e;->g:Ln/Q;

    invoke-static {p1, v0}, Lt/e;->a(Lat/B;Ln/Q;)V

    .line 480
    new-instance v0, Lcom/google/android/maps/driveabout/vector/l;

    iget-object v1, p0, Lau/e;->g:Ln/Q;

    iget v2, p0, Lau/e;->j:F

    invoke-static {p2, v2}, Lau/e;->a(Lat/Y;F)F

    move-result v2

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->d()F

    move-result v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/l;-><init>(Ln/Q;FFFF)V

    .line 486
    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/m;I)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 487
    monitor-exit p0

    return-void

    .line 477
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lat/Y;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-direct {p0, v0}, Lau/e;->b(Lcom/google/android/maps/driveabout/vector/l;)Lat/Y;

    move-result-object v0

    return-object v0
.end method

.method public e()F
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v0

    return v0
.end method

.method public e(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 589
    .line 590
    const/4 v2, 0x0

    move-object v0, p0

    move v3, v1

    move v4, p1

    move v5, p2

    .line 592
    invoke-virtual/range {v0 .. v5}, Lau/e;->a(ZZZII)V

    .line 593
    return-void
.end method

.method public f()Lat/H;
    .registers 7

    .prologue
    .line 279
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v2

    .line 280
    iget-object v0, p0, Lau/e;->d:Lau/a;

    invoke-virtual {v0}, Lau/a;->b()Lat/H;

    move-result-object v5

    .line 281
    new-instance v0, Lat/H;

    invoke-direct {p0, v2}, Lau/e;->a(Lcom/google/android/maps/driveabout/vector/l;)Lat/B;

    move-result-object v1

    invoke-direct {p0, v2}, Lau/e;->b(Lcom/google/android/maps/driveabout/vector/l;)Lat/Y;

    move-result-object v2

    invoke-virtual {v5}, Lat/H;->c()I

    move-result v3

    invoke-virtual {v5}, Lat/H;->g()Z

    move-result v4

    invoke-virtual {v5}, Lat/H;->h()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lat/H;-><init>(Lat/B;Lat/Y;IZZ)V

    return-object v0
.end method

.method public f(II)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 600
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, p1

    move v5, p2

    .line 603
    invoke-virtual/range {v0 .. v5}, Lau/e;->a(ZZZII)V

    .line 604
    return-void
.end method

.method public i()Z
    .registers 4

    .prologue
    .line 507
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    .line 508
    sget-object v1, Lau/j;->b:Lau/j;

    invoke-virtual {p0, v0, v1}, Lau/e;->a(FLau/j;)Lat/Y;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Lat/Y;->c()Lat/Y;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Lat/Y;->a()I

    move-result v1

    invoke-virtual {p0}, Lau/e;->c()Lat/B;

    move-result-object v2

    invoke-virtual {p0, v2}, Lau/e;->a(Lat/B;)I

    move-result v2

    if-ge v1, v2, :cond_2c

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dI;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2e

    :cond_2c
    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->f()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v0

    .line 517
    sget-object v1, Lau/j;->c:Lau/j;

    invoke-virtual {p0, v0, v1}, Lau/e;->a(FLau/j;)Lat/Y;

    move-result-object v1

    invoke-virtual {v1}, Lat/Y;->d()Lat/Y;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/dI;->e()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lau/e;->c:Lcom/google/android/maps/driveabout/vector/dI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/dI;->i()Z

    move-result v0

    return v0
.end method
