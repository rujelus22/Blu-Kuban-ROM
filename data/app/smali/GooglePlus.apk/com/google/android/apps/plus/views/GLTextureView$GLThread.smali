.class Lcom/google/android/apps/plus/views/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

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

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/google/android/apps/plus/views/GLTextureView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/GLTextureView;Lcom/google/android/apps/plus/views/GLTextureView$Renderer;)V
    .registers 6
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1213
    iput-object p1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    .line 1214
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1704
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1215
    iput v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWidth:I

    .line 1216
    iput v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHeight:I

    .line 1217
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestRender:Z

    .line 1218
    iput v2, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderMode:I

    .line 1219
    iput-object p2, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

    .line 1220
    return-void
.end method

.method static synthetic access$1202(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1212
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .line 1261
    new-instance v13, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    invoke-direct {v13, v14}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;-><init>(Lcom/google/android/apps/plus/views/GLTextureView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    .line 1262
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1263
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1265
    const/4 v6, 0x0

    .line 1266
    .local v6, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v2, 0x0

    .line 1267
    .local v2, createEglContext:Z
    const/4 v3, 0x0

    .line 1268
    .local v3, createEglSurface:Z
    const/4 v8, 0x0

    .line 1269
    .local v8, lostEglContext:Z
    const/4 v9, 0x0

    .line 1270
    .local v9, sizeChanged:Z
    const/4 v12, 0x0

    .line 1271
    .local v12, wantRenderNotification:Z
    const/4 v4, 0x0

    .line 1272
    .local v4, doRenderNotification:Z
    const/4 v1, 0x0

    .line 1273
    .local v1, askedToReleaseEglContext:Z
    const/4 v11, 0x0

    .line 1274
    .local v11, w:I
    const/4 v7, 0x0

    .line 1275
    .local v7, h:I
    const/4 v5, 0x0

    .line 1278
    .local v5, event:Ljava/lang/Runnable;
    :cond_21
    :goto_21
    :try_start_21
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v14

    monitor-enter v14
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_160

    .line 1280
    :goto_26
    :try_start_26
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v13, :cond_3d

    .line 1281
    monitor-exit v14
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_15d

    .line 1510
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1511
    :try_start_32
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1512
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1513
    monitor-exit v14

    .line 1515
    :goto_39
    return-void

    .line 1513
    :catchall_3a
    move-exception v13

    monitor-exit v14
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_3a

    throw v13

    .line 1284
    :cond_3d
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5c

    .line 1285
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/lang/Runnable;

    move-object v5, v0

    .line 1451
    :goto_54
    monitor-exit v14
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_15d

    .line 1453
    if-eqz v5, :cond_1a9

    .line 1454
    :try_start_57
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_160

    .line 1455
    const/4 v5, 0x0

    .line 1456
    goto :goto_21

    .line 1290
    :cond_5c
    :try_start_5c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestPaused:Z

    if-eq v13, v15, :cond_75

    .line 1291
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mPaused:Z

    .line 1292
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1300
    :cond_75
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v13, :cond_87

    .line 1306
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1307
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1308
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1309
    const/4 v1, 0x1

    .line 1313
    :cond_87
    if-eqz v8, :cond_90

    .line 1314
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1315
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1316
    const/4 v8, 0x0

    .line 1320
    :cond_90
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_c7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mPaused:Z

    if-eqz v13, :cond_c7

    .line 1325
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mPreserveEGLContextOnPause:Z
    invoke-static {v13}, Lcom/google/android/apps/plus/views/GLTextureView;->access$900(Lcom/google/android/apps/plus/views/GLTextureView;)Z

    move-result v13

    if-eqz v13, :cond_b3

    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_b6

    .line 1328
    :cond_b3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1335
    :cond_b6
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v13

    if-eqz v13, :cond_c7

    .line 1336
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->finish()V

    .line 1345
    :cond_c7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v13, :cond_e8

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v13, :cond_e8

    .line 1350
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_dc

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1353
    :cond_dc
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1354
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1358
    :cond_e8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v13, :cond_100

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v13, :cond_100

    .line 1363
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWaitingForSurface:Z

    .line 1364
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1367
    :cond_100
    if-eqz v4, :cond_110

    .line 1372
    const/4 v12, 0x0

    .line 1373
    const/4 v4, 0x0

    .line 1374
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1375
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1379
    :cond_110
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->readyToDraw()Z

    move-result v13

    if-eqz v13, :cond_1a0

    .line 1382
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglContext:Z

    if-nez v13, :cond_11f

    .line 1383
    if-eqz v1, :cond_16e

    .line 1384
    const/4 v1, 0x0

    .line 1399
    :cond_11f
    :goto_11f
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v13, :cond_132

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v13, :cond_132

    .line 1400
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1401
    const/4 v3, 0x1

    .line 1402
    const/4 v9, 0x1

    .line 1405
    :cond_132
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v13, :cond_1a0

    .line 1406
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mSizeChanged:Z
    invoke-static {v13}, Lcom/google/android/apps/plus/views/GLTextureView;->access$1000(Lcom/google/android/apps/plus/views/GLTextureView;)Z

    move-result v13

    if-eqz v13, :cond_19a

    .line 1407
    const/4 v9, 0x1

    .line 1408
    move-object/from16 v0, p0

    iget v11, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWidth:I

    .line 1409
    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHeight:I

    .line 1410
    const/4 v12, 0x1

    .line 1426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    const/4 v15, 0x0

    #setter for: Lcom/google/android/apps/plus/views/GLTextureView;->mSizeChanged:Z
    invoke-static {v13, v15}, Lcom/google/android/apps/plus/views/GLTextureView;->access$1002(Lcom/google/android/apps/plus/views/GLTextureView;Z)Z

    .line 1430
    :goto_154
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_54

    .line 1451
    :catchall_15d
    move-exception v13

    monitor-exit v14
    :try_end_15f
    .catchall {:try_start_5c .. :try_end_15f} :catchall_15d

    :try_start_15f
    throw v13
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_160

    .line 1510
    :catchall_160
    move-exception v13

    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1511
    :try_start_166
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1512
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1513
    monitor-exit v14
    :try_end_16d
    .catchall {:try_start_166 .. :try_end_16d} :catchall_212

    throw v13

    .line 1385
    :cond_16e
    :try_start_16e
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)Z
    :try_end_177
    .catchall {:try_start_16e .. :try_end_177} :catchall_15d

    move-result v13

    if-eqz v13, :cond_11f

    .line 1387
    :try_start_17a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->start()V
    :try_end_181
    .catchall {:try_start_17a .. :try_end_181} :catchall_15d
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_181} :catch_18f

    .line 1392
    const/4 v13, 0x1

    :try_start_182
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1393
    const/4 v2, 0x1

    .line 1395
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    goto :goto_11f

    .line 1388
    :catch_18f
    move-exception v10

    .line 1389
    .local v10, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)V

    .line 1390
    throw v10

    .line 1428
    .end local v10           #t:Ljava/lang/RuntimeException;
    :cond_19a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestRender:Z

    goto :goto_154

    .line 1449
    :cond_1a0
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V
    :try_end_1a7
    .catchall {:try_start_182 .. :try_end_1a7} :catchall_15d

    goto/16 :goto_26

    .line 1459
    :cond_1a9
    if-eqz v3, :cond_1da

    .line 1464
    :try_start_1ab
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/views/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->createSurface(Landroid/graphics/SurfaceTexture;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v6, v0
    :try_end_1bf
    .catchall {:try_start_1ab .. :try_end_1bf} :catchall_160

    .line 1465
    if-nez v6, :cond_1d2

    .line 1510
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1511
    :try_start_1c6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    .line 1512
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->stopEglContextLocked()V

    .line 1513
    monitor-exit v14

    goto/16 :goto_39

    :catchall_1cf
    move-exception v13

    monitor-exit v14
    :try_end_1d1
    .catchall {:try_start_1c6 .. :try_end_1d1} :catchall_1cf

    throw v13

    .line 1469
    :cond_1d2
    :try_start_1d2
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1470
    const/4 v3, 0x0

    .line 1473
    :cond_1da
    if-eqz v2, :cond_1ea

    .line 1477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    iget-object v14, v14, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v13, v6, v14}, Lcom/google/android/apps/plus/views/GLTextureView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1478
    const/4 v2, 0x0

    .line 1481
    :cond_1ea
    if-eqz v9, :cond_1fb

    .line 1485
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->purgeBuffers()V

    .line 1486
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

    invoke-interface {v13, v6, v11, v7}, Lcom/google/android/apps/plus/views/GLTextureView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1487
    const/4 v9, 0x0

    .line 1493
    :cond_1fb
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderer:Lcom/google/android/apps/plus/views/GLTextureView$Renderer;

    invoke-interface {v13, v6}, Lcom/google/android/apps/plus/views/GLTextureView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->swap()Z
    :try_end_209
    .catchall {:try_start_1d2 .. :try_end_209} :catchall_160

    move-result v13

    if-nez v13, :cond_20d

    .line 1498
    const/4 v8, 0x1

    .line 1501
    :cond_20d
    if-eqz v12, :cond_21

    .line 1502
    const/4 v4, 0x1

    goto/16 :goto_21

    .line 1513
    :catchall_212
    move-exception v13

    :try_start_213
    monitor-exit v14
    :try_end_214
    .catchall {:try_start_213 .. :try_end_214} :catchall_212

    throw v13
.end method

.method private readyToDraw()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1522
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWidth:I

    if-lez v1, :cond_1a

    iget v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHeight:I

    if-lez v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_19

    iget v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderMode:I

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
    .line 1254
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1255
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->finish()V

    .line 1256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglContext:Z

    .line 1257
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)V

    .line 1259
    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .prologue
    .line 1243
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    .line 1245
    iget-object v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mEglHelper:Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/GLTextureView$EglHelper;->destroySurface()V

    .line 1247
    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .prologue
    .line 1518
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->readyToDraw()Z

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
    .line 1539
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1540
    :try_start_5
    iget v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1541
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
    .line 1586
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1590
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1591
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1592
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1597
    :try_start_17
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1598
    :catch_1f
    move-exception v0

    .line 1599
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1602
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

    .line 1603
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 1606
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1610
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestPaused:Z

    .line 1611
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestRender:Z

    .line 1612
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1613
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1614
    :goto_15
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mPaused:Z

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderComplete:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_32

    if-nez v1, :cond_35

    .line 1619
    :try_start_21
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_15

    .line 1620
    :catch_29
    move-exception v0

    .line 1621
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15

    .line 1624
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

    .line 1625
    return-void
.end method

.method public onWindowResize(II)V
    .registers 7
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1628
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1629
    :try_start_5
    iput p1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWidth:I

    .line 1630
    iput p2, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHeight:I

    .line 1631
    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/apps/plus/views/GLTextureView;->mSizeChanged:Z
    invoke-static {v1, v3}, Lcom/google/android/apps/plus/views/GLTextureView;->access$1002(Lcom/google/android/apps/plus/views/GLTextureView;Z)Z

    .line 1632
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestRender:Z

    .line 1633
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderComplete:Z

    .line 1634
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1638
    :goto_1c
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z

    if-nez v1, :cond_50

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mPaused:Z

    if-nez v1, :cond_50

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/GLTextureView;->access$1100(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->this$0:Lcom/google/android/apps/plus/views/GLTextureView;

    #getter for: Lcom/google/android/apps/plus/views/GLTextureView;->mGLThread:Lcom/google/android/apps/plus/views/GLTextureView$GLThread;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/GLTextureView;->access$1100(Lcom/google/android/apps/plus/views/GLTextureView;)Lcom/google/android/apps/plus/views/GLTextureView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->ableToDraw()Z
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_4d

    move-result v1

    if-eqz v1, :cond_50

    .line 1645
    :try_start_3c
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4d
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_1c

    .line 1646
    :catch_44
    move-exception v0

    .line 1647
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1c

    .line 1650
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v1

    :cond_50
    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4d

    .line 1651
    return-void
.end method

.method public requestExitAndWait()V
    .registers 4

    .prologue
    .line 1656
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1657
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mShouldExit:Z

    .line 1658
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1659
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v1, :cond_27

    .line 1661
    :try_start_13
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 1662
    :catch_1b
    move-exception v0

    .line 1663
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1666
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

    .line 1667
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    .prologue
    .line 1670
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mShouldReleaseEglContext:Z

    .line 1671
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1672
    return-void
.end method

.method public requestRender()V
    .registers 3

    .prologue
    .line 1545
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1546
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRequestRender:Z

    .line 1547
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1548
    monitor-exit v1

    .line 1549
    return-void

    .line 1548
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
    .line 1224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->setName(Ljava/lang/String;)V

    .line 1230
    :try_start_1a
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->guardedRun()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 1234
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->threadExiting(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)V

    .line 1236
    :goto_24
    return-void

    .line 1231
    :catch_25
    move-exception v0

    .line 1234
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->threadExiting(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)V

    goto :goto_24

    :catchall_2e
    move-exception v0

    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;->threadExiting(Lcom/google/android/apps/plus/views/GLTextureView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .registers 4
    .parameter "renderMode"

    .prologue
    .line 1528
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    .line 1530
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1532
    :cond_d
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1533
    :try_start_12
    iput p1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mRenderMode:I

    .line 1534
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1535
    monitor-exit v1

    .line 1536
    return-void

    .line 1535
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
    .line 1552
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1556
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHasSurface:Z

    .line 1557
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1558
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1560
    :try_start_17
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1561
    :catch_1f
    move-exception v0

    .line 1562
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1565
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

    .line 1566
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 4

    .prologue
    .line 1569
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1573
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mHasSurface:Z

    .line 1574
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1575
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/GLTextureView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1577
    :try_start_17
    invoke-static {}, Lcom/google/android/apps/plus/views/GLTextureView;->access$800()Lcom/google/android/apps/plus/views/GLTextureView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1578
    :catch_1f
    move-exception v0

    .line 1579
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1582
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

    .line 1583
    return-void
.end method
