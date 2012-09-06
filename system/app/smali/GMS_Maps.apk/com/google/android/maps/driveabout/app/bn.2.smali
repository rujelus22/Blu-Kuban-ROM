.class public Lcom/google/android/maps/driveabout/app/bN;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile l:I


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cl;

.field private final b:Ln/P;

.field private c:F

.field private d:J

.field private e:Lm/b;

.field private f:Ln/U;

.field private g:I

.field private h:F

.field private i:J

.field private j:D

.field private final k:Lcom/google/googlenav/common/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const/16 v0, 0x7d0

    sput v0, Lcom/google/android/maps/driveabout/app/bN;->l:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/cl;Lcom/google/googlenav/common/a;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ln/P;

    invoke-direct {v0}, Ln/P;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    .line 65
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/vector/cl;

    .line 66
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bN;->k:Lcom/google/googlenav/common/a;

    .line 67
    return-void
.end method

.method private a(Ln/U;Ln/Q;)I
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .line 289
    new-instance v5, Ln/Q;

    invoke-direct {v5}, Ln/Q;-><init>()V

    .line 290
    new-instance v6, Ln/Q;

    invoke-direct {v6}, Ln/Q;-><init>()V

    .line 291
    new-instance v7, Ln/Q;

    invoke-direct {v7}, Ln/Q;-><init>()V

    .line 292
    const v3, 0x7f7fffff

    .line 293
    const/4 v0, -0x1

    .line 294
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v4, :cond_31

    .line 295
    invoke-virtual {p1, v1, v5}, Ln/U;->a(ILn/Q;)V

    .line 296
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v6}, Ln/U;->a(ILn/Q;)V

    .line 297
    invoke-static {v5, v6, p2, v7}, Ln/Q;->b(Ln/Q;Ln/Q;Ln/Q;Ln/Q;)F

    move-result v2

    .line 298
    cmpg-float v8, v2, v3

    if-gez v8, :cond_32

    move v0, v1

    .line 294
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1a

    .line 303
    :cond_31
    return v0

    :cond_32
    move v2, v3

    goto :goto_2d
.end method

.method public static a(I)V
    .registers 1
    .parameter

    .prologue
    .line 70
    sput p0, Lcom/google/android/maps/driveabout/app/bN;->l:I

    .line 71
    return-void
.end method

.method private static b(Lm/b;)Z
    .registers 3
    .parameter

    .prologue
    .line 284
    invoke-virtual {p0}, Lm/b;->f()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method a(Ln/U;IFIF)F
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    if-ne p2, p4, :cond_14

    .line 320
    invoke-virtual {p1, p2}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v0

    sub-float v1, p5, p3

    mul-float/2addr v0, v1

    .line 347
    :goto_13
    return v0

    .line 324
    :cond_14
    const/4 v0, 0x0

    .line 326
    if-le p2, p4, :cond_53

    .line 335
    const/4 v0, 0x1

    .line 337
    :goto_18
    const/4 v1, 0x0

    .line 338
    invoke-virtual {p1, p4}, Ln/U;->a(I)Ln/Q;

    move-result-object v3

    .line 339
    add-int/lit8 v2, p4, 0x1

    invoke-virtual {p1, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v2

    .line 340
    invoke-virtual {v3, v2}, Ln/Q;->c(Ln/Q;)F

    move-result v3

    const/high16 v4, 0x3f80

    sub-float/2addr v4, p5

    mul-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 341
    add-int/lit8 v1, p4, 0x1

    move v4, v3

    :goto_2f
    if-ge v1, p2, :cond_41

    .line 343
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ln/U;->a(I)Ln/Q;

    move-result-object v3

    .line 344
    invoke-virtual {v2, v3}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    add-float/2addr v2, v4

    .line 341
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    move-object v2, v3

    goto :goto_2f

    .line 346
    :cond_41
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    invoke-virtual {v2, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v1

    mul-float/2addr v1, p3

    add-float/2addr v1, v4

    .line 347
    if-eqz v0, :cond_51

    neg-float v0, v1

    goto :goto_13

    :cond_51
    move v0, v1

    goto :goto_13

    :cond_53
    move v5, p5

    move p5, p3

    move p3, v5

    move v6, p4

    move p4, p2

    move p2, v6

    goto :goto_18
.end method

.method public declared-synchronized a()I
    .registers 5

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bN;->b()Z

    move-result v2

    if-eqz v2, :cond_13

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/bN;->d:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_18

    .line 97
    :cond_13
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bN;->i:J
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_24

    .line 98
    const/4 v0, 0x0

    .line 104
    :goto_16
    monitor-exit p0

    return v0

    .line 101
    :cond_18
    :try_start_18
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/app/bN;->i:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 102
    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/bN;->i:J

    .line 104
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/bN;->b(I)I
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_24

    move-result v0

    goto :goto_16

    .line 95
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lm/b;)V
    .registers 7
    .parameter

    .prologue
    .line 160
    monitor-enter p0

    const/4 v0, 0x0

    .line 161
    :try_start_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bN;->e:Lm/b;

    if-eqz v1, :cond_12

    .line 162
    invoke-virtual {p1}, Lm/b;->o()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/bN;->e:Lm/b;

    invoke-virtual {v2}, Lm/b;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 164
    :cond_12
    invoke-virtual {p1}, Lm/b;->o()J

    move-result-wide v1

    sget v3, Lcom/google/android/maps/driveabout/app/bN;->l:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/maps/driveabout/app/bN;->d:J

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/bN;->a(Lm/b;I)V

    .line 166
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bN;->e:Lm/b;
    :try_end_25
    .catchall {:try_start_2 .. :try_end_25} :catchall_27

    .line 167
    monitor-exit p0

    return-void

    .line 160
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lm/b;I)V
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual/range {p1 .. p1}, Lm/b;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cl;->c(I)V

    .line 182
    invoke-virtual/range {p1 .. p1}, Lm/b;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ln/Q;->a(D)D

    move-result-wide v12

    .line 183
    invoke-static {}, Lt/m;->a()Lt/k;

    move-result-object v2

    invoke-virtual {v2}, Lt/k;->f()I

    move-result v2

    int-to-double v4, v2

    .line 185
    invoke-virtual/range {p1 .. p1}, Lm/b;->j()Lo/B;

    move-result-object v7

    .line 187
    const/4 v3, 0x0

    .line 188
    const/4 v6, 0x0

    .line 189
    const/4 v2, 0x0

    .line 190
    invoke-virtual/range {p1 .. p1}, Lm/b;->k()Z

    move-result v8

    if-eqz v8, :cond_152

    if-eqz v7, :cond_152

    invoke-virtual {v7}, Lo/B;->d()D

    move-result-wide v8

    div-double/2addr v8, v12

    cmpg-double v4, v8, v4

    if-gez v4, :cond_152

    .line 193
    invoke-virtual {v7}, Lo/B;->a()Lo/x;

    move-result-object v2

    invoke-virtual {v2}, Lo/x;->n()Ln/U;

    move-result-object v3

    .line 194
    invoke-virtual {v7}, Lo/B;->e()I

    move-result v6

    .line 195
    invoke-virtual {v7}, Lo/B;->b()Ln/Q;

    move-result-object v2

    move-object v11, v2

    .line 212
    :goto_45
    if-eqz v3, :cond_1af

    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/app/bN;->b(Lm/b;)Z

    move-result v2

    if-eqz v2, :cond_1af

    .line 213
    invoke-virtual {v3, v6}, Ln/U;->a(I)Ln/Q;

    move-result-object v14

    .line 214
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v3, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v15

    .line 215
    invoke-static {v14, v15}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v16

    .line 216
    const-wide/16 v4, 0x0

    .line 217
    invoke-virtual/range {p1 .. p1}, Lm/b;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_1d4

    .line 220
    invoke-virtual/range {p1 .. p1}, Lm/b;->getSpeed()F

    move-result v2

    float-to-double v4, v2

    mul-double/2addr v4, v12

    const-wide v7, 0x408f400000000000L

    div-double/2addr v4, v7

    invoke-virtual/range {p1 .. p1}, Lm/b;->getBearing()F

    move-result v2

    sub-float v2, v16, v2

    float-to-double v7, v2

    const-wide v9, 0x3f91df46a2529d39L

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v4, v7

    move-wide v8, v4

    .line 225
    :goto_82
    const/4 v10, 0x0

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    if-ne v3, v2, :cond_19b

    .line 227
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    invoke-static {v14, v15, v11}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/maps/driveabout/app/bN;->a(Ln/U;IFIF)F

    move-result v2

    .line 230
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual/range {p1 .. p1}, Lm/b;->getAccuracy()F

    move-result v7

    float-to-double v0, v7

    move-wide/from16 v17, v0

    mul-double v12, v12, v17

    cmpg-double v4, v4, v12

    if-gez v4, :cond_197

    .line 231
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    invoke-virtual {v3, v4}, Ln/U;->d(I)F

    move-result v4

    sub-float v4, v4, v16

    float-to-double v4, v4

    const-wide v12, 0x3f91df46a2529d39L

    mul-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    .line 235
    if-lez p2, :cond_cb

    .line 236
    move/from16 v0, p2

    int-to-float v7, v0

    div-float/2addr v2, v7

    float-to-double v7, v2

    add-double/2addr v4, v7

    .line 238
    :cond_cb
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    .line 239
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    const-wide v12, 0x3f847ae147ae147bL

    cmpl-double v2, v7, v12

    if-ltz v2, :cond_1d1

    .line 240
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/bN;->c:F

    move v2, v10

    .line 249
    :goto_e3
    if-eqz v2, :cond_12f

    .line 250
    invoke-static {v14, v15, v11}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    .line 251
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    .line 252
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    .line 253
    move-object/from16 v0, p0

    iput v6, v0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    .line 254
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    const-wide v4, 0x3f847ae147ae147bL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_19f

    .line 255
    invoke-virtual/range {p1 .. p1}, Lm/b;->getBearing()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/app/bN;->c:F

    .line 259
    :goto_10e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->k:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->d()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/maps/driveabout/app/bN;->i:J

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/app/bN;->b()Z

    move-result v2

    if-eqz v2, :cond_1a7

    .line 261
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/google/android/maps/driveabout/app/bN;->i:J

    invoke-virtual/range {p1 .. p1}, Lm/b;->o()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/bN;->b(I)I

    .line 272
    :cond_12f
    :goto_12f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/app/bN;->c:F

    invoke-virtual {v2, v3}, Ln/P;->a(F)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual/range {p1 .. p1}, Lm/b;->getAccuracy()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ln/P;->a(I)V

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/vector/cl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 275
    return-void

    .line 196
    :cond_152
    invoke-virtual/range {p1 .. p1}, Lm/b;->e()Z

    move-result v4

    if-eqz v4, :cond_1db

    .line 197
    invoke-virtual/range {p1 .. p1}, Lm/b;->h()Ln/ac;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ln/ac;->b()Ln/U;

    move-result-object v4

    .line 199
    invoke-virtual/range {p1 .. p1}, Lm/b;->i()Ln/Q;

    move-result-object v3

    .line 200
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/google/android/maps/driveabout/app/bN;->a(Ln/U;Ln/Q;)I

    move-result v6

    .line 201
    invoke-virtual {v4, v6}, Ln/U;->d(I)F

    move-result v2

    .line 202
    invoke-virtual/range {p1 .. p1}, Lm/b;->getBearing()F

    move-result v5

    sub-float v2, v5, v2

    .line 203
    const/high16 v5, -0x3ccc

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_17d

    .line 204
    const/high16 v5, 0x43b4

    add-float/2addr v2, v5

    .line 206
    :cond_17d
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x42b4

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1d7

    .line 207
    invoke-virtual {v4}, Ln/U;->g()Ln/U;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Ln/U;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    sub-int v6, v4, v6

    move-object v11, v3

    move-object v3, v2

    goto/16 :goto_45

    .line 243
    :cond_197
    const/4 v2, 0x1

    move-wide v4, v8

    goto/16 :goto_e3

    .line 246
    :cond_19b
    const/4 v2, 0x1

    move-wide v4, v8

    goto/16 :goto_e3

    .line 257
    :cond_19f
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/driveabout/app/bN;->c:F

    goto/16 :goto_10e

    .line 263
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual {v2, v11}, Ln/P;->a(Ln/Q;)V

    goto :goto_12f

    .line 267
    :cond_1af
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    .line 268
    invoke-virtual/range {p1 .. p1}, Lm/b;->getBearing()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/app/bN;->c:F

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual/range {p1 .. p1}, Lm/b;->getLatitude()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lm/b;->getLongitude()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ln/Q;->a(DD)Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/P;->a(Ln/Q;)V

    goto/16 :goto_12f

    :cond_1d1
    move v2, v10

    goto/16 :goto_e3

    :cond_1d4
    move-wide v8, v4

    goto/16 :goto_82

    :cond_1d7
    move-object v11, v3

    move-object v3, v4

    goto/16 :goto_45

    :cond_1db
    move-object v11, v2

    goto/16 :goto_45
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual {v0, p1}, Ln/P;->a(Z)V

    .line 85
    return-void
.end method

.method b(I)I
    .registers 14
    .parameter

    .prologue
    const/high16 v11, 0x3f80

    const/4 v3, 0x0

    .line 117
    if-ltz p1, :cond_9

    sget v0, Lcom/google/android/maps/driveabout/app/bN;->l:I

    if-le p1, v0, :cond_a

    .line 152
    :cond_9
    :goto_9
    return v3

    .line 120
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    .line 121
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    iget v2, p0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    .line 122
    iget v2, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    float-to-double v4, v2

    iget-wide v6, p0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-virtual {v1, v0}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    float-to-double v8, v2

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v2, v4

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    move-object v2, v1

    .line 123
    :goto_2e
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_a7

    .line 124
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    invoke-virtual {v4}, Ln/U;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v1, v4, :cond_59

    .line 125
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual {v1, v0}, Ln/P;->a(Ln/Q;)V

    .line 126
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-static {v2, v0}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v0

    invoke-virtual {v1, v0}, Ln/P;->a(F)V

    .line 127
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    goto :goto_9

    .line 131
    :cond_59
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    sub-float/2addr v1, v11

    iput v1, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    .line 132
    iget v1, p0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    .line 133
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bN;->g:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ln/U;->a(I)Ln/Q;

    move-result-object v1

    .line 134
    invoke-static {v0, v1}, Ln/S;->b(Ln/Q;Ln/Q;)F

    move-result v4

    .line 135
    iget v5, p0, Lcom/google/android/maps/driveabout/app/bN;->c:F

    sub-float/2addr v5, v4

    float-to-double v5, v5

    const-wide v7, 0x3f91df46a2529d39L

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 137
    iget v7, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    float-to-double v7, v7

    invoke-virtual {v2, v0}, Ln/Q;->c(Ln/Q;)F

    move-result v2

    invoke-virtual {v0, v1}, Ln/Q;->c(Ln/Q;)F

    move-result v9

    div-float/2addr v2, v9

    float-to-double v9, v2

    mul-double/2addr v9, v5

    mul-double/2addr v7, v9

    double-to-float v2, v7

    iput v2, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    .line 140
    iget-wide v7, p0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    mul-double/2addr v5, v7

    iput-wide v5, p0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    .line 141
    iget-wide v5, p0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    const-wide v7, 0x3f847ae147ae147bL

    cmpl-double v2, v5, v7

    if-ltz v2, :cond_a4

    .line 142
    iput v4, p0, Lcom/google/android/maps/driveabout/app/bN;->c:F

    :cond_a4
    move-object v2, v0

    move-object v0, v1

    .line 146
    goto :goto_2e

    .line 148
    :cond_a7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    iget v4, p0, Lcom/google/android/maps/driveabout/app/bN;->h:F

    invoke-virtual {v2, v0, v4}, Ln/Q;->a(Ln/Q;F)Ln/Q;

    move-result-object v0

    invoke-virtual {v1, v0}, Ln/P;->a(Ln/Q;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/bN;->c:F

    invoke-virtual {v0, v1}, Ln/P;->a(F)V

    .line 150
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bN;->b:Ln/P;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->a(Ln/P;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/bN;->b()Z

    move-result v0

    if-eqz v0, :cond_ca

    const/4 v0, 0x1

    :goto_c7
    move v3, v0

    goto/16 :goto_9

    :cond_ca
    move v0, v3

    goto :goto_c7
.end method

.method public b()Z
    .registers 5

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->f:Ln/U;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/bN;->j:D

    const-wide v2, 0x3f847ae147ae147bL

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public c()Ln/P;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bN;->a:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cl;->p()Ln/P;

    move-result-object v0

    return-object v0
.end method
