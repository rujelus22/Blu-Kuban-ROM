.class Lcom/google/android/maps/driveabout/vector/dM;
.super Lcom/google/android/maps/driveabout/vector/c;
.source "SourceFile"


# instance fields
.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z

.field private volatile i:Z

.field private final j:Lcom/google/android/maps/driveabout/vector/n;

.field private final k:[F


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/n;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1222
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/c;-><init>(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1219
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->k:[F

    .line 1223
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/dM;->j:Lcom/google/android/maps/driveabout/vector/n;

    .line 1224
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1364
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->i:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/m;
    .registers 14
    .parameter

    .prologue
    const/high16 v10, 0x42c8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v11, 0x0

    .line 1269
    monitor-enter p0

    .line 1270
    :try_start_6
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/dM;->d:F

    .line 1271
    iget v5, p0, Lcom/google/android/maps/driveabout/vector/dM;->e:F

    .line 1272
    iget v8, p0, Lcom/google/android/maps/driveabout/vector/dM;->f:F

    .line 1273
    iget v9, p0, Lcom/google/android/maps/driveabout/vector/dM;->g:F

    .line 1274
    iget-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/dM;->h:Z

    .line 1276
    if-eqz v6, :cond_46

    .line 1279
    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    .line 1280
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    move v7, v2

    .line 1312
    :goto_17
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    .line 1313
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    sub-float/2addr v2, v7

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    .line 1314
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->d:F

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->f:F

    .line 1315
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->e:F

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->g:F

    .line 1316
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->h:Z

    .line 1319
    cmpl-float v2, v3, v11

    if-nez v2, :cond_93

    cmpl-float v2, v7, v11

    if-nez v2, :cond_93

    if-nez v6, :cond_3e

    cmpl-float v2, v4, v8

    if-nez v2, :cond_93

    cmpl-float v2, v5, v9

    if-nez v2, :cond_93

    .line 1321
    :cond_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->i:Z

    .line 1322
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    monitor-exit p0

    move-object p0, v0

    .line 1359
    :cond_45
    :goto_45
    return-object p0

    .line 1289
    :cond_46
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_72

    .line 1290
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    mul-float/2addr v3, v7

    mul-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1302
    :goto_5b
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_82

    .line 1303
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    iget v10, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    mul-float/2addr v7, v10

    const v10, -0x42333333

    mul-float/2addr v7, v10

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    move v7, v2

    goto :goto_17

    .line 1293
    :cond_72
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    mul-float/2addr v3, v7

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    mul-float/2addr v3, v7

    mul-float/2addr v3, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_5b

    .line 1306
    :cond_82
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    iget v10, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    mul-float/2addr v7, v10

    const v10, 0x3dcccccd

    mul-float/2addr v7, v10

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move v7, v2

    goto :goto_17

    .line 1324
    :cond_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_6 .. :try_end_94} :catchall_e3

    .line 1327
    if-nez v6, :cond_e6

    cmpl-float v2, v4, v8

    if-nez v2, :cond_9e

    cmpl-float v2, v5, v9

    if-eqz v2, :cond_e6

    :cond_9e
    move v6, v0

    .line 1328
    :goto_9f
    cmpl-float v2, v7, v11

    if-eqz v2, :cond_e8

    move v2, v0

    .line 1329
    :goto_a4
    cmpl-float v10, v3, v11

    if-eqz v10, :cond_ea

    .line 1332
    :goto_a8
    if-eqz v6, :cond_bf

    .line 1333
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    sub-float v6, v8, v4

    sub-float v8, v9, v5

    invoke-static {v1, p1, v6, v8}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;FF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 1336
    if-nez v2, :cond_ba

    if-eqz v0, :cond_bf

    .line 1337
    :cond_ba
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1342
    :cond_bf
    if-eqz v2, :cond_d4

    .line 1344
    invoke-virtual {p1, v4, v5}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v1

    .line 1347
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->j:Lcom/google/android/maps/driveabout/vector/n;

    invoke-static {p1, v2, v1, v7}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/n;Ln/Q;F)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    .line 1350
    if-eqz v0, :cond_d4

    .line 1351
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1356
    :cond_d4
    if-eqz v0, :cond_45

    .line 1357
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->j:Lcom/google/android/maps/driveabout/vector/n;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/dI;->a(Lcom/google/android/maps/driveabout/vector/l;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/n;FFF)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    goto/16 :goto_45

    .line 1324
    :catchall_e3
    move-exception v0

    :try_start_e4
    monitor-exit p0
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e3

    throw v0

    :cond_e6
    move v6, v1

    .line 1327
    goto :goto_9f

    :cond_e8
    move v2, v1

    .line 1328
    goto :goto_a4

    :cond_ea
    move v0, v1

    .line 1329
    goto :goto_a8
.end method

.method declared-synchronized a(FFFFFFZ)[F
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1234
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    .line 1235
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    .line 1242
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/dM;->d:F

    .line 1243
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/dM;->e:F

    .line 1247
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->h:Z

    if-nez v0, :cond_15

    if-nez p7, :cond_51

    .line 1248
    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->h:Z

    .line 1249
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/dM;->f:F

    .line 1250
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/dM;->g:F

    .line 1255
    :cond_1c
    :goto_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->i:Z

    .line 1258
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->k:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->a()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dM;->b:F

    add-float/2addr v2, v3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dI;->j()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, v0, v1

    .line 1260
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->k:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/dM;->a:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/l;->e()F

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/dM;->c:F

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/dI;->e(F)F

    move-result v2

    aput v2, v0, v1

    .line 1261
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->k:[F
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_5a

    monitor-exit p0

    return-object v0

    .line 1251
    :cond_51
    :try_start_51
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/dM;->i:Z

    if-nez v0, :cond_1c

    .line 1252
    iput p5, p0, Lcom/google/android/maps/driveabout/vector/dM;->f:F

    .line 1253
    iput p6, p0, Lcom/google/android/maps/driveabout/vector/dM;->g:F
    :try_end_59
    .catchall {:try_start_51 .. :try_end_59} :catchall_5a

    goto :goto_1c

    .line 1234
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
