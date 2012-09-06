.class public final Lcom/anddoes/launcher/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Poolable;


# static fields
.field private static final a:Landroid/util/Pool;

.field private static b:Lcom/anddoes/launcher/kz;

.field private static c:I


# instance fields
.field private d:Lcom/anddoes/launcher/kz;

.field private e:I

.field private f:I

.field private g:Lcom/anddoes/launcher/kx;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Lcom/anddoes/launcher/ky;

    invoke-direct {v0}, Lcom/anddoes/launcher/ky;-><init>()V

    .line 58
    const/4 v1, 0x2

    .line 47
    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/kx;->a:Landroid/util/Pool;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p0}, Lcom/anddoes/launcher/kx;->c()V

    .line 134
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/anddoes/launcher/kx;-><init>()V

    return-void
.end method

.method public static a()Lcom/anddoes/launcher/kx;
    .registers 1

    .prologue
    .line 93
    sget-object v0, Lcom/anddoes/launcher/kx;->a:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Lcom/anddoes/launcher/kx;

    return-object v0
.end method

.method private final c(I)Lcom/anddoes/launcher/kz;
    .registers 4
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    :goto_2
    if-nez v0, :cond_6

    .line 398
    const/4 v0, 0x0

    :cond_5
    return-object v0

    .line 394
    :cond_6
    iget v1, v0, Lcom/anddoes/launcher/kz;->b:I

    if-eq v1, p1, :cond_5

    .line 393
    iget-object v0, v0, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    goto :goto_2
.end method

.method private static final d()Lcom/anddoes/launcher/kz;
    .registers 3

    .prologue
    .line 402
    sget-object v1, Lcom/anddoes/launcher/kx;->a:Landroid/util/Pool;

    monitor-enter v1

    .line 403
    :try_start_3
    sget v0, Lcom/anddoes/launcher/kx;->c:I

    if-eqz v0, :cond_18

    .line 404
    sget-object v0, Lcom/anddoes/launcher/kx;->b:Lcom/anddoes/launcher/kz;

    .line 405
    sget v2, Lcom/anddoes/launcher/kx;->c:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/anddoes/launcher/kx;->c:I

    .line 406
    iget-object v2, v0, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    sput-object v2, Lcom/anddoes/launcher/kx;->b:Lcom/anddoes/launcher/kz;

    .line 407
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    .line 408
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_20

    .line 411
    :goto_17
    return-object v0

    .line 402
    :cond_18
    monitor-exit v1

    .line 411
    new-instance v0, Lcom/anddoes/launcher/kz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/anddoes/launcher/kz;-><init>(B)V

    goto :goto_17

    .line 402
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)F
    .registers 3
    .parameter

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/kx;->c(I)Lcom/anddoes/launcher/kz;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/anddoes/launcher/kz;->c:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final a(F)V
    .registers 22
    .parameter

    .prologue
    .line 272
    move-object/from16 v0, p0

    iget v8, v0, Lcom/anddoes/launcher/kx;->e:I

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    move-object v9, v2

    :goto_9
    if-nez v9, :cond_c

    .line 344
    return-void

    .line 275
    :cond_c
    iget-object v10, v9, Lcom/anddoes/launcher/kz;->g:[J

    .line 280
    const/4 v2, 0x1

    .line 281
    aget-wide v3, v10, v8

    const-wide/16 v5, 0xc8

    sub-long v4, v3, v5

    move v7, v8

    .line 282
    :goto_16
    const/16 v3, 0xa

    if-lt v2, v3, :cond_4b

    .line 294
    :cond_1a
    const/4 v3, 0x3

    if-le v2, v3, :cond_1f

    .line 295
    add-int/lit8 v2, v2, -0x1

    .line 299
    :cond_1f
    iget-object v11, v9, Lcom/anddoes/launcher/kz;->e:[F

    .line 300
    iget-object v12, v9, Lcom/anddoes/launcher/kz;->f:[F

    .line 302
    aget v13, v11, v7

    .line 303
    aget v14, v12, v7

    .line 304
    aget-wide v15, v10, v7

    .line 306
    const/4 v4, 0x0

    .line 307
    const/4 v5, 0x0

    .line 309
    const/4 v3, 0x1

    move v6, v3

    :goto_2d
    if-lt v6, v2, :cond_5b

    .line 324
    move/from16 v0, p1

    neg-float v2, v0

    cmpg-float v2, v4, v2

    if-gez v2, :cond_a2

    .line 325
    move/from16 v0, p1

    neg-float v4, v0

    .line 330
    :cond_39
    :goto_39
    move/from16 v0, p1

    neg-float v2, v0

    cmpg-float v2, v5, v2

    if-gez v2, :cond_a9

    .line 331
    move/from16 v0, p1

    neg-float v5, v0

    .line 336
    :cond_43
    :goto_43
    iput v4, v9, Lcom/anddoes/launcher/kz;->c:F

    .line 337
    iput v5, v9, Lcom/anddoes/launcher/kz;->d:F

    .line 274
    iget-object v2, v9, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    move-object v9, v2

    goto :goto_9

    .line 283
    :cond_4b
    add-int/lit8 v3, v7, 0xa

    add-int/lit8 v3, v3, -0x1

    rem-int/lit8 v3, v3, 0xa

    .line 284
    aget-wide v11, v10, v3

    .line 285
    cmp-long v6, v11, v4

    if-ltz v6, :cond_1a

    .line 289
    add-int/lit8 v2, v2, 0x1

    move v7, v3

    goto :goto_16

    .line 310
    :cond_5b
    add-int v3, v7, v6

    rem-int/lit8 v17, v3, 0xa

    .line 311
    aget-wide v18, v10, v17

    sub-long v18, v18, v15

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    .line 313
    if-eqz v18, :cond_b0

    .line 315
    aget v3, v11, v17

    sub-float/2addr v3, v13

    .line 316
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v3, v3, v19

    const/high16 v19, 0x447a

    mul-float v3, v3, v19

    .line 317
    const/16 v19, 0x0

    cmpl-float v19, v4, v19

    if-nez v19, :cond_98

    .line 319
    :goto_7e
    aget v4, v12, v17

    sub-float/2addr v4, v14

    .line 320
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v4, v4, v17

    const/high16 v17, 0x447a

    mul-float v4, v4, v17

    .line 321
    const/16 v17, 0x0

    cmpl-float v17, v5, v17

    if-nez v17, :cond_9d

    .line 309
    :goto_92
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    goto :goto_2d

    .line 317
    :cond_98
    add-float/2addr v3, v4

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    goto :goto_7e

    .line 321
    :cond_9d
    add-float/2addr v4, v5

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    goto :goto_92

    .line 326
    :cond_a2
    cmpl-float v2, v4, p1

    if-lez v2, :cond_39

    move/from16 v4, p1

    .line 327
    goto :goto_39

    .line 332
    :cond_a9
    cmpl-float v2, v5, p1

    if-lez v2, :cond_43

    move/from16 v5, p1

    .line 333
    goto :goto_43

    :cond_b0
    move v3, v4

    move v4, v5

    goto :goto_92
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .registers 18
    .parameter

    .prologue
    .line 156
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 158
    move-object/from16 v0, p0

    iget v7, v0, Lcom/anddoes/launcher/kx;->e:I

    .line 159
    add-int/lit8 v1, v7, 0x1

    rem-int/lit8 v8, v1, 0xa

    .line 160
    add-int v1, v8, v5

    rem-int/lit8 v9, v1, 0xa

    .line 161
    move-object/from16 v0, p0

    iget v10, v0, Lcom/anddoes/launcher/kx;->f:I

    add-int/lit8 v1, v10, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/anddoes/launcher/kx;->f:I

    .line 163
    move-object/from16 v0, p0

    iput v9, v0, Lcom/anddoes/launcher/kx;->e:I

    .line 166
    const/4 v2, 0x0

    .line 167
    const/4 v1, 0x0

    move v4, v1

    :goto_25
    if-lt v4, v6, :cond_2f

    .line 230
    const/4 v1, 0x0

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    :goto_2c
    if-nez v2, :cond_af

    .line 246
    return-void

    .line 168
    :cond_2f
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 175
    if-eqz v2, :cond_3b

    iget v1, v2, Lcom/anddoes/launcher/kz;->b:I

    if-ge v11, v1, :cond_6d

    .line 176
    :cond_3b
    const/4 v2, 0x0

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    move-object v3, v2

    .line 184
    :goto_41
    if-eqz v1, :cond_76

    .line 185
    iget v2, v1, Lcom/anddoes/launcher/kz;->b:I

    .line 186
    if-ne v2, v11, :cond_71

    .line 211
    :goto_47
    iput v10, v1, Lcom/anddoes/launcher/kz;->h:I

    .line 214
    iget-object v3, v1, Lcom/anddoes/launcher/kz;->e:[F

    .line 215
    iget-object v11, v1, Lcom/anddoes/launcher/kz;->f:[F

    .line 216
    iget-object v12, v1, Lcom/anddoes/launcher/kz;->g:[J

    .line 218
    const/4 v2, 0x0

    :goto_50
    if-lt v2, v5, :cond_90

    .line 224
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v3, v9

    .line 225
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    aput v2, v11, v9

    .line 226
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    aput-wide v2, v12, v9

    .line 167
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    goto :goto_25

    .line 179
    :cond_6d
    iget-object v1, v2, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    move-object v3, v2

    goto :goto_41

    .line 190
    :cond_71
    if-ge v2, v11, :cond_76

    .line 191
    iget-object v1, v1, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    goto :goto_41

    .line 199
    :cond_76
    invoke-static {}, Lcom/anddoes/launcher/kx;->d()Lcom/anddoes/launcher/kz;

    move-result-object v2

    .line 200
    iput v11, v2, Lcom/anddoes/launcher/kz;->b:I

    .line 201
    iget-object v11, v2, Lcom/anddoes/launcher/kz;->g:[J

    const-wide/high16 v12, -0x8000

    aput-wide v12, v11, v7

    .line 202
    iput-object v1, v2, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    .line 203
    if-nez v3, :cond_8c

    .line 204
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    move-object v1, v2

    goto :goto_47

    .line 206
    :cond_8c
    iput-object v2, v3, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    move-object v1, v2

    goto :goto_47

    .line 219
    :cond_90
    add-int v13, v8, v2

    rem-int/lit8 v13, v13, 0xa

    .line 220
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v14

    aput v14, v3, v13

    .line 221
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v14

    aput v14, v11, v13

    .line 222
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v14

    aput-wide v14, v12, v13

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 232
    :cond_af
    iget-object v3, v2, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    .line 233
    iget v4, v2, Lcom/anddoes/launcher/kz;->h:I

    if-eq v4, v10, :cond_da

    .line 235
    if-nez v1, :cond_d4

    .line 236
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    .line 240
    :goto_bb
    sget-object v4, Lcom/anddoes/launcher/kx;->a:Landroid/util/Pool;

    monitor-enter v4

    :try_start_be
    sget v5, Lcom/anddoes/launcher/kx;->c:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_d0

    sget-object v5, Lcom/anddoes/launcher/kx;->b:Lcom/anddoes/launcher/kz;

    iput-object v5, v2, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    sget v5, Lcom/anddoes/launcher/kx;->c:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/anddoes/launcher/kx;->c:I

    sput-object v2, Lcom/anddoes/launcher/kx;->b:Lcom/anddoes/launcher/kz;

    :cond_d0
    monitor-exit v4
    :try_end_d1
    .catchall {:try_start_be .. :try_end_d1} :catchall_d7

    :goto_d1
    move-object v2, v3

    .line 244
    goto/16 :goto_2c

    .line 238
    :cond_d4
    iput-object v3, v1, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    goto :goto_bb

    .line 240
    :catchall_d7
    move-exception v1

    monitor-exit v4

    throw v1

    :cond_da
    move-object v1, v2

    .line 242
    goto :goto_d1
.end method

.method public final b(I)F
    .registers 3
    .parameter

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/kx;->c(I)Lcom/anddoes/launcher/kz;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_9

    iget v0, v0, Lcom/anddoes/launcher/kz;->d:F

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 101
    sget-object v0, Lcom/anddoes/launcher/kx;->a:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    .line 102
    return-void
.end method

.method public final c()V
    .registers 7

    .prologue
    const/16 v5, 0x14

    .line 140
    iget-object v1, p0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    if-eqz v1, :cond_e

    sget-object v4, Lcom/anddoes/launcher/kx;->a:Landroid/util/Pool;

    monitor-enter v4

    :try_start_9
    sget v0, Lcom/anddoes/launcher/kx;->c:I

    if-lt v0, v5, :cond_15

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_2c

    .line 142
    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anddoes/launcher/kx;->d:Lcom/anddoes/launcher/kz;

    .line 143
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/kx;->e:I

    .line 144
    return-void

    :cond_15
    move v2, v0

    move-object v0, v1

    .line 140
    :goto_17
    add-int/lit8 v3, v2, 0x1

    if-ge v3, v5, :cond_22

    :try_start_1b
    iget-object v2, v0, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    if-eqz v2, :cond_22

    move-object v0, v2

    move v2, v3

    goto :goto_17

    :cond_22
    sget-object v2, Lcom/anddoes/launcher/kx;->b:Lcom/anddoes/launcher/kz;

    iput-object v2, v0, Lcom/anddoes/launcher/kz;->a:Lcom/anddoes/launcher/kz;

    sput v3, Lcom/anddoes/launcher/kx;->c:I

    sput-object v1, Lcom/anddoes/launcher/kx;->b:Lcom/anddoes/launcher/kz;

    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_2c

    goto :goto_e

    :catchall_2c
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final bridge synthetic getNextPoolable()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/kx;->g:Lcom/anddoes/launcher/kx;

    return-object v0
.end method

.method public final isPooled()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/anddoes/launcher/kx;->h:Z

    return v0
.end method

.method public final bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/anddoes/launcher/kx;

    iput-object p1, p0, Lcom/anddoes/launcher/kx;->g:Lcom/anddoes/launcher/kx;

    return-void
.end method

.method public final setPooled(Z)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/anddoes/launcher/kx;->h:Z

    .line 130
    return-void
.end method
