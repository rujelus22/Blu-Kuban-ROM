.class Lcom/google/android/maps/driveabout/vector/bp;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;

.field private q:Z

.field private r:Lcom/google/android/maps/driveabout/vector/bo;

.field private s:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1300
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1869
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->p:Ljava/util/ArrayList;

    .line 1870
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->q:Z

    .line 1301
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bp;->k:I

    .line 1302
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bp;->l:I

    .line 1303
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->n:Z

    .line 1304
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->m:I

    .line 1305
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bp;->s:Ljava/lang/ref/WeakReference;

    .line 1306
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bp;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1298
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z

    return p1
.end method

.method private k()V
    .registers 2

    .prologue
    .line 1337
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    if-eqz v0, :cond_c

    .line 1338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    .line 1339
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->e()V

    .line 1341
    :cond_c
    return-void
.end method

.method private l()V
    .registers 2

    .prologue
    .line 1348
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    if-eqz v0, :cond_13

    .line 1349
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bo;->f()V

    .line 1350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    .line 1351
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bq;->c(Lcom/google/android/maps/driveabout/vector/bp;)V

    .line 1353
    :cond_13
    return-void
.end method

.method private m()V
    .registers 19

    .prologue
    .line 1355
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bp;->s:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/bo;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    .line 1356
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    .line 1357
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    .line 1359
    const/4 v3, 0x0

    .line 1360
    const/4 v12, 0x0

    .line 1361
    const/4 v1, 0x0

    .line 1362
    const/4 v11, 0x0

    .line 1363
    const/4 v10, 0x0

    .line 1364
    const/4 v9, 0x0

    .line 1365
    const/4 v8, 0x0

    .line 1366
    const/4 v2, 0x0

    .line 1367
    const/4 v7, 0x0

    .line 1368
    const/4 v6, 0x0

    .line 1369
    const/4 v5, 0x0

    .line 1370
    const/4 v4, 0x0

    move-object v14, v3

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v1

    move/from16 v17, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v17

    .line 1373
    :goto_31
    :try_start_31
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v15

    monitor-enter v15
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_1d5

    .line 1375
    :goto_36
    :try_start_36
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->a:Z

    if-eqz v1, :cond_4d

    .line 1376
    monitor-exit v15
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_1d2

    .line 1650
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v2

    monitor-enter v2

    .line 1651
    :try_start_42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->k()V

    .line 1652
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->l()V

    .line 1653
    monitor-exit v2

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v1

    .line 1379
    :cond_4d
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    .line 1380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->p:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    move v2, v6

    move v6, v4

    move-object v4, v1

    move v1, v11

    move v11, v10

    move v10, v9

    move v9, v8

    move v8, v7

    move v7, v5

    move v5, v3

    .line 1543
    :goto_6c
    monitor-exit v15
    :try_end_6d
    .catchall {:try_start_4d .. :try_end_6d} :catchall_1d2

    .line 1545
    if-eqz v4, :cond_1f9

    .line 1546
    :try_start_6f
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_1d5

    .line 1547
    const/4 v4, 0x0

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v1

    move/from16 v17, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v17

    .line 1548
    goto :goto_31

    .line 1385
    :cond_81
    const/4 v1, 0x0

    .line 1386
    :try_start_82
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bp;->c:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_2db

    .line 1387
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->c:Z

    .line 1388
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bp;->c:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z

    .line 1389
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    move v13, v1

    .line 1396
    :goto_a4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->j:Z

    if-eqz v1, :cond_b6

    .line 1400
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->k()V

    .line 1401
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->l()V

    .line 1402
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->j:Z

    .line 1403
    const/4 v5, 0x1

    .line 1407
    :cond_b6
    if-eqz v9, :cond_bf

    .line 1408
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->k()V

    .line 1409
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->l()V

    .line 1410
    const/4 v9, 0x0

    .line 1414
    :cond_bf
    if-eqz v13, :cond_ca

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    if-eqz v1, :cond_ca

    .line 1418
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->k()V

    .line 1422
    :cond_ca
    if-eqz v13, :cond_ee

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    if-eqz v1, :cond_ee

    .line 1423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1424
    if-nez v1, :cond_1ab

    const/4 v1, 0x0

    .line 1426
    :goto_df
    if-eqz v1, :cond_eb

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bq;->a()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1427
    :cond_eb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->l()V

    .line 1435
    :cond_ee
    if-eqz v13, :cond_101

    .line 1436
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bq;->b()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 1437
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bo;->f()V

    .line 1445
    :cond_101
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    if-nez v1, :cond_127

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->g:Z

    if-nez v1, :cond_127

    .line 1449
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    if-eqz v1, :cond_116

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->k()V

    .line 1452
    :cond_116
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->g:Z

    .line 1453
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->f:Z

    .line 1454
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1458
    :cond_127
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    if-eqz v1, :cond_13f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->g:Z

    if-eqz v1, :cond_13f

    .line 1462
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->g:Z

    .line 1463
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1466
    :cond_13f
    if-eqz v6, :cond_14f

    .line 1470
    const/4 v7, 0x0

    .line 1471
    const/4 v6, 0x0

    .line 1472
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->o:Z

    .line 1473
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1477
    :cond_14f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->n()Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 1480
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    if-nez v1, :cond_15e

    .line 1481
    if-eqz v5, :cond_1b1

    .line 1482
    const/4 v5, 0x0

    .line 1497
    :cond_15e
    :goto_15e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    if-eqz v1, :cond_2d7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    if-nez v1, :cond_2d7

    .line 1498
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    .line 1499
    const/4 v11, 0x1

    .line 1500
    const/4 v10, 0x1

    .line 1501
    const/4 v8, 0x1

    move v1, v8

    move v8, v10

    .line 1504
    :goto_174
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    if-eqz v10, :cond_1ee

    .line 1505
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/maps/driveabout/vector/bp;->q:Z

    if-eqz v10, :cond_2cd

    .line 1506
    const/4 v7, 0x1

    .line 1507
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/bp;->k:I

    .line 1508
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->l:I

    .line 1509
    const/4 v4, 0x1

    .line 1517
    const/4 v10, 0x1

    .line 1519
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/maps/driveabout/vector/bp;->q:Z

    .line 1521
    :goto_190
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/maps/driveabout/vector/bp;->n:Z

    .line 1522
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    move v11, v8

    move v8, v4

    move-object v4, v2

    move v2, v6

    move v6, v3

    move/from16 v17, v1

    move v1, v10

    move v10, v9

    move v9, v7

    move v7, v5

    move/from16 v5, v17

    .line 1523
    goto/16 :goto_6c

    .line 1424
    :cond_1ab
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z

    move-result v1

    goto/16 :goto_df

    .line 1483
    :cond_1b1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bq;->b(Lcom/google/android/maps/driveabout/vector/bp;)Z
    :try_end_1ba
    .catchall {:try_start_82 .. :try_end_1ba} :catchall_1d2

    move-result v1

    if-eqz v1, :cond_15e

    .line 1485
    :try_start_1bd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bo;->a()V
    :try_end_1c4
    .catchall {:try_start_1bd .. :try_end_1c4} :catchall_1d2
    .catch Ljava/lang/RuntimeException; {:try_start_1bd .. :try_end_1c4} :catch_1e3

    .line 1490
    const/4 v1, 0x1

    :try_start_1c5
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    .line 1491
    const/4 v12, 0x1

    .line 1493
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_15e

    .line 1543
    :catchall_1d2
    move-exception v1

    monitor-exit v15
    :try_end_1d4
    .catchall {:try_start_1c5 .. :try_end_1d4} :catchall_1d2

    :try_start_1d4
    throw v1
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d5

    .line 1650
    :catchall_1d5
    move-exception v1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v2

    monitor-enter v2

    .line 1651
    :try_start_1db
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->k()V

    .line 1652
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bp;->l()V

    .line 1653
    monitor-exit v2
    :try_end_1e2
    .catchall {:try_start_1db .. :try_end_1e2} :catchall_2c4

    throw v1

    .line 1486
    :catch_1e3
    move-exception v1

    .line 1487
    :try_start_1e4
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/bq;->c(Lcom/google/android/maps/driveabout/vector/bp;)V

    .line 1488
    throw v1

    :cond_1ee
    move v10, v8

    move v8, v1

    .line 1541
    :cond_1f0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1f7
    .catchall {:try_start_1e4 .. :try_end_1f7} :catchall_1d2

    goto/16 :goto_36

    .line 1551
    :cond_1f9
    if-eqz v1, :cond_2ca

    .line 1555
    :try_start_1fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bo;->b()Z

    move-result v3

    if-nez v3, :cond_229

    .line 1556
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v3

    monitor-enter v3
    :try_end_20a
    .catchall {:try_start_1fb .. :try_end_20a} :catchall_1d5

    .line 1557
    const/4 v13, 0x1

    :try_start_20b
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bp;->f:Z

    .line 1558
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1559
    monitor-exit v3

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v1

    move/from16 v17, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v17

    .line 1560
    goto/16 :goto_31

    .line 1559
    :catchall_226
    move-exception v1

    monitor-exit v3
    :try_end_228
    .catchall {:try_start_20b .. :try_end_228} :catchall_226

    :try_start_228
    throw v1

    .line 1562
    :cond_229
    const/4 v1, 0x0

    move v3, v1

    .line 1565
    :goto_22b
    if-eqz v11, :cond_2c7

    .line 1566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bo;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 1568
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1569
    const/4 v11, 0x0

    move-object v13, v1

    .line 1572
    :goto_240
    if-eqz v12, :cond_25c

    .line 1576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1577
    if-eqz v1, :cond_25b

    .line 1578
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bt;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    iget-object v12, v12, Lcom/google/android/maps/driveabout/vector/bo;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v13, v12}, Lcom/google/android/maps/driveabout/vector/bt;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1580
    :cond_25b
    const/4 v12, 0x0

    .line 1583
    :cond_25c
    if-eqz v9, :cond_272

    .line 1587
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1588
    if-eqz v1, :cond_271

    .line 1589
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bt;

    move-result-object v1

    invoke-interface {v1, v13, v6, v5}, Lcom/google/android/maps/driveabout/vector/bt;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1591
    :cond_271
    const/4 v9, 0x0

    .line 1598
    :cond_272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    .line 1599
    if-eqz v1, :cond_285

    .line 1600
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bt;

    move-result-object v1

    invoke-interface {v1, v13}, Lcom/google/android/maps/driveabout/vector/bt;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1606
    :cond_285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1609
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->r:Lcom/google/android/maps/driveabout/vector/bo;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bo;->d()I

    move-result v1

    .line 1610
    sparse-switch v1, :sswitch_data_2e0

    .line 1624
    const-string v14, "GLThread"

    const-string v15, "eglSwapBuffers"

    invoke-static {v14, v15, v1}, Lcom/google/android/maps/driveabout/vector/bo;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1626
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v14

    monitor-enter v14
    :try_end_29f
    .catchall {:try_start_228 .. :try_end_29f} :catchall_1d5

    .line 1627
    const/4 v1, 0x1

    :try_start_2a0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bp;->f:Z

    .line 1628
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1629
    monitor-exit v14

    .line 1641
    :goto_2ac
    :sswitch_2ac
    if-eqz v8, :cond_2de

    .line 1642
    const/4 v1, 0x1

    :goto_2af
    move-object v2, v4

    move-object v14, v13

    move v4, v6

    move v6, v1

    move/from16 v17, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v3

    move v3, v5

    move/from16 v5, v17

    .line 1644
    goto/16 :goto_31

    .line 1617
    :sswitch_2bf
    const/4 v10, 0x1

    .line 1618
    goto :goto_2ac

    .line 1629
    :catchall_2c1
    move-exception v1

    monitor-exit v14
    :try_end_2c3
    .catchall {:try_start_2a0 .. :try_end_2c3} :catchall_2c1

    :try_start_2c3
    throw v1
    :try_end_2c4
    .catchall {:try_start_2c3 .. :try_end_2c4} :catchall_1d5

    .line 1653
    :catchall_2c4
    move-exception v1

    :try_start_2c5
    monitor-exit v2
    :try_end_2c6
    .catchall {:try_start_2c5 .. :try_end_2c6} :catchall_2c4

    throw v1

    :cond_2c7
    move-object v13, v14

    goto/16 :goto_240

    :cond_2ca
    move v3, v1

    goto/16 :goto_22b

    :cond_2cd
    move v10, v11

    move/from16 v17, v4

    move v4, v7

    move v7, v1

    move v1, v3

    move/from16 v3, v17

    goto/16 :goto_190

    :cond_2d7
    move v1, v8

    move v8, v10

    goto/16 :goto_174

    :cond_2db
    move v13, v1

    goto/16 :goto_a4

    :cond_2de
    move v1, v2

    goto :goto_2af

    .line 1610
    :sswitch_data_2e0
    .sparse-switch
        0x3000 -> :sswitch_2ac
        0x300e -> :sswitch_2bf
    .end sparse-switch
.end method

.method private n()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1662
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->f:Z

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->k:I

    if-lez v1, :cond_1e

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->l:I

    if-lez v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->n:Z

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bp;->m:I

    if-ne v1, v0, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 1668
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    .line 1669
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1671
    :cond_d
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1672
    :try_start_12
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bp;->m:I

    .line 1673
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1674
    monitor-exit v1

    .line 1675
    return-void

    .line 1674
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1786
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1787
    :try_start_5
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bp;->k:I

    .line 1788
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bp;->l:I

    .line 1789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->q:Z

    .line 1790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->n:Z

    .line 1791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->o:Z

    .line 1792
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1796
    :goto_19
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->o:Z

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bp;->a()Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_3c

    move-result v0

    if-eqz v0, :cond_3f

    .line 1801
    :try_start_2b
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_19

    .line 1802
    :catch_33
    move-exception v0

    .line 1803
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_19

    .line 1806
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v0

    :cond_3f
    :try_start_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 1807
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1658
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->i:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bp;->n()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b()I
    .registers 3

    .prologue
    .line 1678
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1679
    :try_start_5
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->m:I

    monitor-exit v1

    return v0

    .line 1680
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 1684
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1685
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->n:Z

    .line 1686
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1687
    monitor-exit v1

    .line 1688
    return-void

    .line 1687
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public d()V
    .registers 3

    .prologue
    .line 1691
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1695
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    .line 1696
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1697
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    .line 1699
    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1700
    :catch_1f
    move-exception v0

    .line 1701
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1704
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1705
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 1708
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1712
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->e:Z

    .line 1713
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1714
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->g:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    .line 1716
    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1717
    :catch_1f
    move-exception v0

    .line 1718
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1721
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1722
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 1725
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1729
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->c:Z

    .line 1749
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1750
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    .line 1755
    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1756
    :catch_1f
    move-exception v0

    .line 1757
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1760
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v0

    :cond_2b
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1761
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 1764
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1768
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->c:Z

    .line 1769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->n:Z

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->o:Z

    .line 1771
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1772
    :goto_15
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->d:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->o:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_32

    if-nez v0, :cond_35

    .line 1777
    :try_start_21
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_15

    .line 1778
    :catch_29
    move-exception v0

    .line 1779
    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15

    .line 1782
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 1783
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 1812
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1813
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->a:Z

    .line 1814
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1815
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v0, :cond_27

    .line 1817
    :try_start_13
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 1818
    :catch_1b
    move-exception v0

    .line 1819
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1822
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 1823
    return-void
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 1828
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    monitor-enter v1

    .line 1829
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->b:Z

    monitor-exit v1

    return v0

    .line 1830
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 1834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bp;->j:Z

    .line 1835
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1836
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bp;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bp;->setName(Ljava/lang/String;)V

    .line 1316
    :try_start_1a
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bp;->m()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_3e

    .line 1328
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/bp;)V

    .line 1330
    :goto_24
    return-void

    .line 1317
    :catch_25
    move-exception v0

    .line 1328
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/bp;)V

    goto :goto_24

    .line 1319
    :catch_2e
    move-exception v0

    .line 1322
    :try_start_2f
    const-string v1, "MAP"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1323
    throw v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_35

    .line 1328
    :catchall_35
    move-exception v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/bp;)V

    throw v0

    .line 1324
    :catch_3e
    move-exception v0

    .line 1326
    :try_start_3f
    const-string v1, "MAP"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_35

    .line 1328
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/bp;)V

    goto :goto_24
.end method
