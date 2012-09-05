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

    .line 1210
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1695
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1696
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1211
    iput v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1212
    iput v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1213
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1214
    iput v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1215
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1216
    return-void
.end method

.method static synthetic access$1102(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1208
    iput-boolean p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1257
    new-instance v17, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    .line 1258
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1259
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1261
    const/4 v8, 0x0

    .line 1262
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1263
    .local v3, createEglContext:Z
    const/4 v4, 0x0

    .line 1264
    .local v4, createEglSurface:Z
    const/4 v5, 0x0

    .line 1265
    .local v5, createGlInterface:Z
    const/4 v10, 0x0

    .line 1266
    .local v10, lostEglContext:Z
    const/4 v12, 0x0

    .line 1267
    .local v12, sizeChanged:Z
    const/16 v16, 0x0

    .line 1268
    .local v16, wantRenderNotification:Z
    const/4 v6, 0x0

    .line 1269
    .local v6, doRenderNotification:Z
    const/4 v2, 0x0

    .line 1270
    .local v2, askedToReleaseEglContext:Z
    const/4 v15, 0x0

    .line 1271
    .local v15, w:I
    const/4 v9, 0x0

    .line 1272
    .local v9, h:I
    const/4 v7, 0x0

    .line 1275
    .local v7, event:Ljava/lang/Runnable;
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v18

    monitor-enter v18
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_1bf

    .line 1277
    :goto_33
    :try_start_33
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4c

    .line 1278
    monitor-exit v18
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_1bc

    .line 1504
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v18

    monitor-enter v18

    .line 1505
    :try_start_41
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1506
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1507
    monitor-exit v18

    .line 1509
    :goto_48
    return-void

    .line 1507
    :catchall_49
    move-exception v17

    monitor-exit v18
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_49

    throw v17

    .line 1281
    :cond_4c
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_75

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1431
    :goto_6d
    monitor-exit v18
    :try_end_6e
    .catchall {:try_start_4c .. :try_end_6e} :catchall_1bc

    .line 1433
    if-eqz v7, :cond_212

    .line 1434
    :try_start_70
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_1bf

    .line 1435
    const/4 v7, 0x0

    .line 1436
    goto :goto_2e

    .line 1287
    :cond_75
    :try_start_75
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_9a

    .line 1288
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    .line 1289
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 1296
    :cond_9a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b1

    .line 1300
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1301
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1302
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1303
    const/4 v2, 0x1

    .line 1307
    :cond_b1
    if-eqz v10, :cond_ba

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1310
    const/4 v10, 0x0

    .line 1314
    :cond_ba
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v17, v0

    if-eqz v17, :cond_fe

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v17, v0

    if-eqz v17, :cond_fe

    .line 1318
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1320
    .local v14, view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-nez v14, :cond_1cd

    const/4 v11, 0x0

    .line 1322
    .local v11, preserveEglContextOnPause:Z
    :goto_dc
    if-eqz v11, :cond_e8

    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v17

    if-eqz v17, :cond_eb

    .line 1323
    :cond_e8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1328
    :cond_eb
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v17

    if-eqz v17, :cond_fe

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->finish()V

    .line 1337
    .end local v11           #preserveEglContextOnPause:Z
    .end local v14           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_fe
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v17, v0

    if-nez v17, :cond_128

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v17, v0

    if-nez v17, :cond_128

    .line 1341
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v17, v0

    if-eqz v17, :cond_119

    .line 1342
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1344
    :cond_119
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1345
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 1349
    :cond_128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v17, v0

    if-eqz v17, :cond_147

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v17, v0

    if-eqz v17, :cond_147

    .line 1353
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1354
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 1357
    :cond_147
    if-eqz v6, :cond_15b

    .line 1361
    const/16 v16, 0x0

    .line 1362
    const/4 v6, 0x0

    .line 1363
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1364
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    .line 1368
    :cond_15b
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v17

    if-eqz v17, :cond_209

    .line 1371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v17, v0

    if-nez v17, :cond_16c

    .line 1372
    if-eqz v2, :cond_1d3

    .line 1373
    const/4 v2, 0x0

    .line 1388
    :cond_16c
    :goto_16c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v17, v0

    if-eqz v17, :cond_187

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v17, v0

    if-nez v17, :cond_187

    .line 1389
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1390
    const/4 v4, 0x1

    .line 1391
    const/4 v5, 0x1

    .line 1392
    const/4 v12, 0x1

    .line 1395
    :cond_187
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v17, v0

    if-eqz v17, :cond_209

    .line 1396
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1ab

    .line 1397
    const/4 v12, 0x1

    .line 1398
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1399
    move-object/from16 v0, p0

    iget v9, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1400
    const/16 v16, 0x1

    .line 1406
    const/4 v4, 0x1

    .line 1408
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1410
    :cond_1ab
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1411
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_6d

    .line 1431
    :catchall_1bc
    move-exception v17

    monitor-exit v18
    :try_end_1be
    .catchall {:try_start_75 .. :try_end_1be} :catchall_1bc

    :try_start_1be
    throw v17
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1bf

    .line 1504
    :catchall_1bf
    move-exception v17

    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v18

    monitor-enter v18

    .line 1505
    :try_start_1c5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1506
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1507
    monitor-exit v18
    :try_end_1cc
    .catchall {:try_start_1c5 .. :try_end_1cc} :catchall_2b8

    throw v17

    .line 1320
    .restart local v14       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_1cd
    :try_start_1cd
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static {v14}, Lcom/google/android/opengl/common/GLSurfaceView;->access$900(Lcom/google/android/opengl/common/GLSurfaceView;)Z

    move-result v11

    goto/16 :goto_dc

    .line 1374
    .end local v14           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_1d3
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)Z
    :try_end_1de
    .catchall {:try_start_1cd .. :try_end_1de} :catchall_1bc

    move-result v17

    if-eqz v17, :cond_16c

    .line 1376
    :try_start_1e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->start()V
    :try_end_1ea
    .catchall {:try_start_1e1 .. :try_end_1ea} :catchall_1bc
    .catch Ljava/lang/RuntimeException; {:try_start_1e1 .. :try_end_1ea} :catch_1fc

    .line 1381
    const/16 v17, 0x1

    :try_start_1ec
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1382
    const/4 v3, 0x1

    .line 1384
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_16c

    .line 1377
    :catch_1fc
    move-exception v13

    .line 1378
    .local v13, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1379
    throw v13

    .line 1429
    .end local v13           #t:Ljava/lang/RuntimeException;
    :cond_209
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->wait()V
    :try_end_210
    .catchall {:try_start_1ec .. :try_end_210} :catchall_1bc

    goto/16 :goto_33

    .line 1439
    :cond_212
    if-eqz v4, :cond_232

    .line 1443
    :try_start_214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->createSurface()Z
    :try_end_21d
    .catchall {:try_start_214 .. :try_end_21d} :catchall_1bf

    move-result v17

    if-nez v17, :cond_231

    .line 1504
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v18

    monitor-enter v18

    .line 1505
    :try_start_225
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1506
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1507
    monitor-exit v18

    goto/16 :goto_48

    :catchall_22e
    move-exception v17

    monitor-exit v18
    :try_end_230
    .catchall {:try_start_225 .. :try_end_230} :catchall_22e

    throw v17

    .line 1447
    :cond_231
    const/4 v4, 0x0

    .line 1450
    :cond_232
    if-eqz v5, :cond_24d

    .line 1451
    :try_start_234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1453
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1454
    const/4 v5, 0x0

    .line 1457
    :cond_24d
    if-eqz v3, :cond_275

    .line 1461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1462
    .restart local v14       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-eqz v14, :cond_274

    .line 1463
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
    invoke-static {v14}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v8, v1}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1465
    :cond_274
    const/4 v3, 0x0

    .line 1468
    .end local v14           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_275
    if-eqz v12, :cond_28f

    .line 1472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1473
    .restart local v14       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-eqz v14, :cond_28e

    .line 1474
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
    invoke-static {v14}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v15, v9}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1476
    :cond_28e
    const/4 v12, 0x0

    .line 1483
    .end local v14           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1484
    .restart local v14       #view:Lcom/google/android/opengl/common/GLSurfaceView;
    if-eqz v14, :cond_2a6

    .line 1485
    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;
    invoke-static {v14}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1488
    :cond_2a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->swap()Z
    :try_end_2af
    .catchall {:try_start_234 .. :try_end_2af} :catchall_1bf

    move-result v17

    if-nez v17, :cond_2b3

    .line 1492
    const/4 v10, 0x1

    .line 1495
    :cond_2b3
    if-eqz v16, :cond_2e

    .line 1496
    const/4 v6, 0x1

    goto/16 :goto_2e

    .line 1507
    .end local v14           #view:Lcom/google/android/opengl/common/GLSurfaceView;
    :catchall_2b8
    move-exception v17

    :try_start_2b9
    monitor-exit v18
    :try_end_2ba
    .catchall {:try_start_2b9 .. :try_end_2ba} :catchall_2b8

    throw v17
.end method

.method private readyToDraw()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1516
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1a

    iget v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_19

    iget v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private stopEglContextLocked()V
    .registers 2

    .prologue
    .line 1250
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1251
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->finish()V

    .line 1252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1253
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1255
    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .prologue
    .line 1239
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1241
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1243
    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .prologue
    .line 1512
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
    .line 1532
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1533
    :try_start_5
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1534
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
    .line 1579
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1583
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1584
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1585
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1590
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1591
    :catch_1f
    move-exception v0

    .line 1592
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1595
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

    .line 1596
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 1599
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1603
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1604
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1605
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1606
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1607
    :goto_15
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_32

    if-nez v1, :cond_35

    .line 1612
    :try_start_21
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_15

    .line 1613
    :catch_29
    move-exception v0

    .line 1614
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15

    .line 1617
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

    .line 1618
    return-void
.end method

.method public onWindowResize(II)V
    .registers 6
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1621
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1622
    :try_start_5
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1623
    iput p2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1624
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1625
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1626
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1627
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1631
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

    .line 1636
    :try_start_2b
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_19

    .line 1637
    :catch_33
    move-exception v0

    .line 1638
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_19

    .line 1641
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

    .line 1642
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 1670
    if-nez p1, :cond_a

    .line 1671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1673
    :cond_a
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1674
    :try_start_f
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1675
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1676
    monitor-exit v1

    .line 1677
    return-void

    .line 1676
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
    .line 1647
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1648
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1649
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1650
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v1, :cond_27

    .line 1652
    :try_start_13
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 1653
    :catch_1b
    move-exception v0

    .line 1654
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1657
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

    .line 1658
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    .prologue
    .line 1661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1662
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1663
    return-void
.end method

.method public requestRender()V
    .registers 3

    .prologue
    .line 1538
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1539
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1540
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1541
    monitor-exit v1

    .line 1542
    return-void

    .line 1541
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
    .line 1220
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

    .line 1226
    :try_start_1a
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 1230
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1232
    :goto_24
    return-void

    .line 1227
    :catch_25
    move-exception v0

    .line 1230
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
    .line 1522
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    .line 1523
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1525
    :cond_d
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1526
    :try_start_12
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1527
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1528
    monitor-exit v1

    .line 1529
    return-void

    .line 1528
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
    .line 1545
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1549
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1550
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1551
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1553
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1554
    :catch_1f
    move-exception v0

    .line 1555
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1558
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

    .line 1559
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 4

    .prologue
    .line 1562
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1566
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1567
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1568
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1570
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1571
    :catch_1f
    move-exception v0

    .line 1572
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1575
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

    .line 1576
    return-void
.end method
