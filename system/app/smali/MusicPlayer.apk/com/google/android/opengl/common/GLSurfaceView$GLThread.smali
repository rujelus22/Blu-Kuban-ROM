.class Lcom/google/android/opengl/common/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/common/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/opengl/common/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/opengl/common/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, glSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/opengl/common/GLSurfaceView;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1216
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1737
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1217
    iput v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1218
    iput v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1219
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1220
    iput v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1221
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1222
    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1214
    iput-boolean p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1263
    new-instance v19, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    .line 1264
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1265
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1267
    const/4 v8, 0x0

    .line 1268
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1269
    .local v3, createEglContext:Z
    const/4 v4, 0x0

    .line 1270
    .local v4, createEglSurface:Z
    const/4 v5, 0x0

    .line 1271
    .local v5, createGlInterface:Z
    const/4 v10, 0x0

    .line 1272
    .local v10, lostEglContext:Z
    const/4 v13, 0x0

    .line 1273
    .local v13, sizeChanged:Z
    const/16 v18, 0x0

    .line 1274
    .local v18, wantRenderNotification:Z
    const/4 v6, 0x0

    .line 1275
    .local v6, doRenderNotification:Z
    const/4 v2, 0x0

    .line 1276
    .local v2, askedToReleaseEglContext:Z
    const/16 v17, 0x0

    .line 1277
    .local v17, w:I
    const/4 v9, 0x0

    .line 1278
    .local v9, h:I
    const/4 v7, 0x0

    .line 1281
    .local v7, event:Ljava/lang/Runnable;
    :cond_2f
    :goto_2f
    :try_start_2f
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_1d5

    .line 1283
    :goto_34
    :try_start_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4d

    .line 1284
    monitor-exit v20
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_1d2

    .line 1544
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1545
    :try_start_42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1546
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1547
    monitor-exit v20

    return-void

    :catchall_4a
    move-exception v19

    monitor-exit v20
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v19

    .line 1287
    :cond_4d
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_76

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1451
    :goto_6e
    monitor-exit v20
    :try_end_6f
    .catchall {:try_start_4d .. :try_end_6f} :catchall_1d2

    .line 1453
    if-eqz v7, :cond_228

    .line 1454
    :try_start_71
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_1d5

    .line 1455
    const/4 v7, 0x0

    .line 1456
    goto :goto_2f

    .line 1293
    :cond_76
    const/4 v11, 0x0

    .line 1294
    .local v11, pausing:Z
    :try_start_77
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_a0

    .line 1295
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1296
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    .line 1297
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1304
    :cond_a0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b7

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1310
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1311
    const/4 v2, 0x1

    .line 1315
    :cond_b7
    if-eqz v10, :cond_c0

    .line 1316
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1317
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1318
    const/4 v10, 0x0

    .line 1322
    :cond_c0
    if-eqz v11, :cond_cd

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_cd

    .line 1326
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1330
    :cond_cd
    if-eqz v11, :cond_f5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f5

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1332
    .local v16, view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-nez v16, :cond_1e3

    const/4 v12, 0x0

    .line 1334
    .local v12, preserveEglContextOnPause:Z
    :goto_e6
    if-eqz v12, :cond_f2

    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_f5

    .line 1335
    :cond_f2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1343
    .end local v12           #preserveEglContextOnPause:Z
    .end local v16           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_f5
    if-eqz v11, :cond_10a

    .line 1344
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v19

    if-eqz v19, :cond_10a

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->finish()V

    .line 1353
    :cond_10a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_13c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_13c

    .line 1357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_125

    .line 1358
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1360
    :cond_125
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1361
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1362
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1366
    :cond_13c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_15b

    .line 1370
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1371
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1374
    :cond_15b
    if-eqz v6, :cond_16f

    .line 1378
    const/16 v18, 0x0

    .line 1379
    const/4 v6, 0x0

    .line 1380
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1381
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1385
    :cond_16f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v19

    if-eqz v19, :cond_21f

    .line 1388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-nez v19, :cond_180

    .line 1389
    if-eqz v2, :cond_1e9

    .line 1390
    const/4 v2, 0x0

    .line 1405
    :cond_180
    :goto_180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v19, v0

    if-eqz v19, :cond_19b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-nez v19, :cond_19b

    .line 1406
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1407
    const/4 v4, 0x1

    .line 1408
    const/4 v5, 0x1

    .line 1409
    const/4 v13, 0x1

    .line 1412
    :cond_19b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v19, v0

    if-eqz v19, :cond_21f

    .line 1413
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1c1

    .line 1414
    const/4 v13, 0x1

    .line 1415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v17, v0

    .line 1416
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1417
    const/16 v18, 0x1

    .line 1425
    const/4 v4, 0x1

    .line 1427
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1429
    :cond_1c1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1430
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_6e

    .line 1451
    .end local v11           #pausing:Z
    :catchall_1d2
    move-exception v19

    monitor-exit v20
    :try_end_1d4
    .catchall {:try_start_77 .. :try_end_1d4} :catchall_1d2

    :try_start_1d4
    throw v19
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d5

    .line 1544
    :catchall_1d5
    move-exception v19

    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20

    .line 1545
    :try_start_1db
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1546
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1547
    monitor-exit v20
    :try_end_1e2
    .catchall {:try_start_1db .. :try_end_1e2} :catchall_2fe

    throw v19

    .line 1332
    .restart local v11       #pausing:Z
    .restart local v16       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_1e3
    :try_start_1e3
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/common/GLSurfaceView;->access$900(Lcom/google/android/opengl/common/GLSurfaceView;)Z

    move-result v12

    goto/16 :goto_e6

    .line 1391
    .end local v16           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_1e9
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)Z
    :try_end_1f4
    .catchall {:try_start_1e3 .. :try_end_1f4} :catchall_1d2

    move-result v19

    if-eqz v19, :cond_180

    .line 1393
    :try_start_1f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->start()V
    :try_end_200
    .catchall {:try_start_1f7 .. :try_end_200} :catchall_1d2
    .catch Ljava/lang/RuntimeException; {:try_start_1f7 .. :try_end_200} :catch_212

    .line 1398
    const/16 v19, 0x1

    :try_start_202
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1399
    const/4 v3, 0x1

    .line 1401
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_180

    .line 1394
    :catch_212
    move-exception v15

    .line 1395
    .local v15, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1396
    throw v15

    .line 1449
    .end local v15           #t:Ljava/lang/RuntimeException;
    :cond_21f
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->wait()V
    :try_end_226
    .catchall {:try_start_202 .. :try_end_226} :catchall_1d2

    goto/16 :goto_34

    .line 1459
    .end local v11           #pausing:Z
    :cond_228
    if-eqz v4, :cond_251

    .line 1463
    :try_start_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v19

    if-nez v19, :cond_250

    .line 1464
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_23b
    .catchall {:try_start_22a .. :try_end_23b} :catchall_1d5

    .line 1465
    const/16 v19, 0x1

    :try_start_23d
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1466
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1467
    monitor-exit v20

    goto/16 :goto_2f

    :catchall_24d
    move-exception v19

    monitor-exit v20
    :try_end_24f
    .catchall {:try_start_23d .. :try_end_24f} :catchall_24d

    :try_start_24f
    throw v19

    .line 1470
    :cond_250
    const/4 v4, 0x0

    .line 1473
    :cond_251
    if-eqz v5, :cond_26c

    .line 1474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1476
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1477
    const/4 v5, 0x0

    .line 1480
    :cond_26c
    if-eqz v3, :cond_294

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1485
    .restart local v16       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-eqz v16, :cond_293

    .line 1486
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v8, v1}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1488
    :cond_293
    const/4 v3, 0x0

    .line 1491
    .end local v16           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_294
    if-eqz v13, :cond_2b0

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1496
    .restart local v16       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-eqz v16, :cond_2af

    .line 1497
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v8, v1, v9}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1499
    :cond_2af
    const/4 v13, 0x0

    .line 1506
    .end local v16           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_2b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1507
    .restart local v16       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-eqz v16, :cond_2c7

    .line 1508
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
    invoke-static/range {v16 .. v16}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1511
    :cond_2c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->swap()I

    move-result v14

    .line 1512
    .local v14, swapError:I
    sparse-switch v14, :sswitch_data_302

    .line 1526
    const-string v19, "GLThread"

    const-string v20, "eglSwapBuffers"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1528
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v20

    monitor-enter v20
    :try_end_2e4
    .catchall {:try_start_24f .. :try_end_2e4} :catchall_1d5

    .line 1529
    const/16 v19, 0x1

    :try_start_2e6
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1530
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 1531
    monitor-exit v20

    .line 1535
    :goto_2f4
    :sswitch_2f4
    if-eqz v18, :cond_2f

    .line 1536
    const/4 v6, 0x1

    goto/16 :goto_2f

    .line 1519
    :sswitch_2f9
    const/4 v10, 0x1

    .line 1520
    goto :goto_2f4

    .line 1531
    :catchall_2fb
    move-exception v19

    monitor-exit v20
    :try_end_2fd
    .catchall {:try_start_2e6 .. :try_end_2fd} :catchall_2fb

    :try_start_2fd
    throw v19
    :try_end_2fe
    .catchall {:try_start_2fd .. :try_end_2fe} :catchall_1d5

    .line 1547
    .end local v14           #swapError:I
    .end local v16           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :catchall_2fe
    move-exception v19

    :try_start_2ff
    monitor-exit v20
    :try_end_300
    .catchall {:try_start_2ff .. :try_end_300} :catchall_2fe

    throw v19

    .line 1512
    nop

    :sswitch_data_302
    .sparse-switch
        0x3000 -> :sswitch_2f4
        0x300e -> :sswitch_2f9
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1556
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1e

    iget v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private stopEglContextLocked()V
    .registers 2

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1257
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->finish()V

    .line 1258
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1259
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1261
    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .prologue
    .line 1245
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1247
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1249
    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .prologue
    .line 1552
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public getRenderMode()I
    .registers 3

    .prologue
    .line 1572
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1573
    :try_start_5
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1574
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 1619
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1623
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1624
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1625
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1630
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1631
    :catch_1f
    move-exception v0

    .line 1632
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1635
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1

    :cond_2b
    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1636
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 1639
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1643
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1644
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1645
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1646
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1647
    :goto_15
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_32

    if-nez v1, :cond_35

    .line 1652
    :try_start_21
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_15

    .line 1653
    :catch_29
    move-exception v0

    .line 1654
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15

    .line 1657
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_32
    move-exception v1

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_32

    throw v1

    :cond_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 1658
    return-void
.end method

.method public onWindowResize(II)V
    .registers 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1661
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1662
    :try_start_5
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1663
    iput p2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1664
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1665
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1666
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1667
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1671
    :goto_19
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_3f

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_3c

    move-result v1

    if-eqz v1, :cond_3f

    .line 1676
    :try_start_2b
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_19

    .line 1677
    :catch_33
    move-exception v0

    .line 1678
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_19

    .line 1681
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_3c
    move-exception v1

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v1

    :cond_3f
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3c

    .line 1682
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 1710
    if-nez p1, :cond_a

    .line 1711
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1713
    :cond_a
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1714
    :try_start_f
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1716
    monitor-exit v1

    .line 1717
    return-void

    .line 1716
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public requestExitAndWait()V
    .registers 4

    .prologue
    .line 1687
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1688
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1689
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1690
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v1, :cond_27

    .line 1692
    :try_start_13
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 1693
    :catch_1b
    move-exception v0

    .line 1694
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1697
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v1

    :cond_27
    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    .line 1698
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    .prologue
    .line 1701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1702
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1703
    return-void
.end method

.method public requestRender()V
    .registers 3

    .prologue
    .line 1578
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1579
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1580
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1581
    monitor-exit v1

    .line 1582
    return-void

    .line 1581
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1232
    :try_start_1a
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 1236
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1238
    :goto_24
    return-void

    .line 1233
    :catch_25
    move-exception v0

    .line 1236
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    goto :goto_24

    :catchall_2e
    move-exception v0

    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .registers 4
    .parameter "renderMode"

    .prologue
    .line 1562
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    .line 1563
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1565
    :cond_d
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1566
    :try_start_12
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1567
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1568
    monitor-exit v1

    .line 1569
    return-void

    .line 1568
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public surfaceCreated()V
    .registers 4

    .prologue
    .line 1585
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1589
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1590
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1591
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1593
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1594
    :catch_1f
    move-exception v0

    .line 1595
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1598
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1

    :cond_2b
    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1599
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 4

    .prologue
    .line 1602
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1606
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1607
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1608
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1610
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1611
    :catch_1f
    move-exception v0

    .line 1612
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1615
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_28

    throw v1

    :cond_2b
    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 1616
    return-void
.end method
