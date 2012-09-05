.class Lcom/google/android/opengl/common/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/common/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/google/android/opengl/common/GLSurfaceView;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/common/GLSurfaceView;Lcom/google/android/opengl/common/GLSurfaceView$Renderer;)V
    .registers 6
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1178
    iput-object p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    .line 1179
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1650
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1180
    iput v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1181
    iput v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1182
    iput-boolean v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1183
    iput v2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1184
    iput-object p2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    .line 1185
    return-void
.end method

.method static synthetic access$1202(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1177
    iput-boolean p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1226
    new-instance v14, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    invoke-direct {v14, v15}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;-><init>(Lcom/google/android/opengl/common/GLSurfaceView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    .line 1227
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1228
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1230
    const/4 v7, 0x0

    .line 1231
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v2, 0x0

    .line 1232
    .local v2, createEglContext:Z
    const/4 v3, 0x0

    .line 1233
    .local v3, createEglSurface:Z
    const/4 v4, 0x0

    .line 1234
    .local v4, createGlInterface:Z
    const/4 v9, 0x0

    .line 1235
    .local v9, lostEglContext:Z
    const/4 v10, 0x0

    .line 1236
    .local v10, sizeChanged:Z
    const/4 v13, 0x0

    .line 1237
    .local v13, wantRenderNotification:Z
    const/4 v5, 0x0

    .line 1238
    .local v5, doRenderNotification:Z
    const/4 v1, 0x0

    .line 1239
    .local v1, askedToReleaseEglContext:Z
    const/4 v12, 0x0

    .line 1240
    .local v12, w:I
    const/4 v8, 0x0

    .line 1241
    .local v8, h:I
    const/4 v6, 0x0

    .line 1244
    .local v6, event:Ljava/lang/Runnable;
    :cond_23
    :goto_23
    :try_start_23
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_173

    .line 1246
    :goto_28
    :try_start_28
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v14, :cond_3f

    .line 1247
    monitor-exit v15
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_170

    .line 1459
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 1460
    :try_start_34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1461
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1462
    monitor-exit v15

    .line 1464
    :goto_3b
    return-void

    .line 1462
    :catchall_3c
    move-exception v14

    monitor-exit v15
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3c

    throw v14

    .line 1250
    :cond_3f
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_61

    .line 1251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/Runnable;

    move-object v6, v0

    .line 1397
    :goto_59
    monitor-exit v15
    :try_end_5a
    .catchall {:try_start_3f .. :try_end_5a} :catchall_170

    .line 1399
    if-eqz v6, :cond_1b6

    .line 1400
    :try_start_5c
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_173

    .line 1401
    const/4 v6, 0x0

    .line 1402
    goto :goto_23

    .line 1256
    :cond_61
    :try_start_61
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_7e

    .line 1257
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    .line 1258
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1265
    :cond_7e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    if-eqz v14, :cond_90

    .line 1269
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1271
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1272
    const/4 v1, 0x1

    .line 1276
    :cond_90
    if-eqz v9, :cond_99

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1278
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1279
    const/4 v9, 0x0

    .line 1283
    :cond_99
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v14, :cond_d0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v14, :cond_d0

    .line 1287
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1288
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static {v14}, Lcom/google/android/opengl/common/GLSurfaceView;->access$900(Lcom/google/android/opengl/common/GLSurfaceView;)Z

    move-result v14

    if-eqz v14, :cond_bc

    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v14

    if-eqz v14, :cond_bf

    .line 1289
    :cond_bc
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1294
    :cond_bf
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v14

    if-eqz v14, :cond_d0

    .line 1295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v14}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->finish()V

    .line 1303
    :cond_d0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v14, :cond_f1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v14, :cond_f1

    .line 1307
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v14, :cond_e5

    .line 1308
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1310
    :cond_e5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1311
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1315
    :cond_f1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v14, :cond_109

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v14, :cond_109

    .line 1319
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1320
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1323
    :cond_109
    if-eqz v5, :cond_119

    .line 1327
    const/4 v13, 0x0

    .line 1328
    const/4 v5, 0x0

    .line 1329
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1330
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1334
    :cond_119
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v14

    if-eqz v14, :cond_1ad

    .line 1337
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v14, :cond_128

    .line 1338
    if-eqz v1, :cond_181

    .line 1339
    const/4 v1, 0x0

    .line 1354
    :cond_128
    :goto_128
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v14, :cond_13c

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v14, :cond_13c

    .line 1355
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1356
    const/4 v3, 0x1

    .line 1357
    const/4 v4, 0x1

    .line 1358
    const/4 v10, 0x1

    .line 1361
    :cond_13c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v14, :cond_1ad

    .line 1362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v14}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1000(Lcom/google/android/opengl/common/GLSurfaceView;)Z

    move-result v14

    if-eqz v14, :cond_162

    .line 1363
    const/4 v10, 0x1

    .line 1364
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1365
    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1366
    const/4 v13, 0x1

    .line 1372
    const/4 v3, 0x1

    .line 1374
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    const/16 v16, 0x0

    move/from16 v0, v16

    #setter for: Lcom/google/android/opengl/common/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v14, v0}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1002(Lcom/google/android/opengl/common/GLSurfaceView;Z)Z

    .line 1376
    :cond_162
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1377
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_59

    .line 1397
    :catchall_170
    move-exception v14

    monitor-exit v15
    :try_end_172
    .catchall {:try_start_61 .. :try_end_172} :catchall_170

    :try_start_172
    throw v14
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_173

    .line 1459
    :catchall_173
    move-exception v14

    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 1460
    :try_start_179
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1461
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1462
    monitor-exit v15
    :try_end_180
    .catchall {:try_start_179 .. :try_end_180} :catchall_223

    throw v14

    .line 1340
    :cond_181
    :try_start_181
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)Z
    :try_end_18a
    .catchall {:try_start_181 .. :try_end_18a} :catchall_170

    move-result v14

    if-eqz v14, :cond_128

    .line 1342
    :try_start_18d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v14}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->start()V
    :try_end_194
    .catchall {:try_start_18d .. :try_end_194} :catchall_170
    .catch Ljava/lang/RuntimeException; {:try_start_18d .. :try_end_194} :catch_1a2

    .line 1347
    const/4 v14, 0x1

    :try_start_195
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1348
    const/4 v2, 0x1

    .line 1350
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    goto :goto_128

    .line 1343
    :catch_1a2
    move-exception v11

    .line 1344
    .local v11, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1345
    throw v11

    .line 1395
    .end local v11           #t:Ljava/lang/RuntimeException;
    :cond_1ad
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_1b4
    .catchall {:try_start_195 .. :try_end_1b4} :catchall_170

    goto/16 :goto_28

    .line 1405
    :cond_1b6
    if-eqz v3, :cond_1dc

    .line 1409
    :try_start_1b8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    invoke-virtual {v15}, Lcom/google/android/opengl/common/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Z
    :try_end_1c7
    .catchall {:try_start_1b8 .. :try_end_1c7} :catchall_173

    move-result v14

    if-nez v14, :cond_1db

    .line 1459
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 1460
    :try_start_1cf
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1461
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1462
    monitor-exit v15

    goto/16 :goto_3b

    :catchall_1d8
    move-exception v14

    monitor-exit v15
    :try_end_1da
    .catchall {:try_start_1cf .. :try_end_1da} :catchall_1d8

    throw v14

    .line 1413
    :cond_1db
    const/4 v3, 0x0

    .line 1416
    :cond_1dc
    if-eqz v4, :cond_1f2

    .line 1417
    :try_start_1de
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v14}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v7, v0

    .line 1419
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1420
    const/4 v4, 0x0

    .line 1423
    :cond_1f2
    if-eqz v2, :cond_202

    .line 1427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    iget-object v15, v15, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v14, v7, v15}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1428
    const/4 v2, 0x0

    .line 1431
    :cond_202
    if-eqz v10, :cond_20c

    .line 1435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    invoke-interface {v14, v7, v12, v8}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1436
    const/4 v10, 0x0

    .line 1442
    :cond_20c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/common/GLSurfaceView$Renderer;

    invoke-interface {v14, v7}, Lcom/google/android/opengl/common/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v14}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->swap()Z
    :try_end_21a
    .catchall {:try_start_1de .. :try_end_21a} :catchall_173

    move-result v14

    if-nez v14, :cond_21e

    .line 1447
    const/4 v9, 0x1

    .line 1450
    :cond_21e
    if-eqz v13, :cond_23

    .line 1451
    const/4 v5, 0x1

    goto/16 :goto_23

    .line 1462
    :catchall_223
    move-exception v14

    :try_start_224
    monitor-exit v15
    :try_end_225
    .catchall {:try_start_224 .. :try_end_225} :catchall_223

    throw v14
.end method

.method private readyToDraw()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1471
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
    .line 1219
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_13

    .line 1220
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->finish()V

    .line 1221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1222
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1224
    :cond_13
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .registers 2

    .prologue
    .line 1208
    iget-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_c

    .line 1209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1210
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/common/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1212
    :cond_c
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .registers 2

    .prologue
    .line 1467
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
    .line 1487
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1488
    :try_start_5
    iget v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1489
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
    .line 1534
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1538
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1539
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1540
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1545
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1546
    :catch_1f
    move-exception v0

    .line 1547
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1550
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

    .line 1551
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 1554
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1558
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1559
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1560
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1561
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1562
    :goto_15
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_35

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_32

    if-nez v1, :cond_35

    .line 1567
    :try_start_21
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_15

    .line 1568
    :catch_29
    move-exception v0

    .line 1569
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15

    .line 1572
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

    .line 1573
    return-void
.end method

.method public onWindowResize(II)V
    .registers 7
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1576
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1577
    :try_start_5
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWidth:I

    .line 1578
    iput p2, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHeight:I

    .line 1579
    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/opengl/common/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v1, v3}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1002(Lcom/google/android/opengl/common/GLSurfaceView;Z)Z

    .line 1580
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1581
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1582
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1586
    :goto_1c
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_50

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_50

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_50

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;
    invoke-static {v1}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1100(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/common/GLSurfaceView;

    #getter for: Lcom/google/android/opengl/common/GLSurfaceView;->mGLThread:Lcom/google/android/opengl/common/GLSurfaceView$GLThread;
    invoke-static {v1}, Lcom/google/android/opengl/common/GLSurfaceView;->access$1100(Lcom/google/android/opengl/common/GLSurfaceView;)Lcom/google/android/opengl/common/GLSurfaceView$GLThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_4d

    move-result v1

    if-eqz v1, :cond_50

    .line 1591
    :try_start_3c
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_4d
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_1c

    .line 1592
    :catch_44
    move-exception v0

    .line 1593
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1c

    .line 1596
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

    .line 1597
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .registers 4
    .parameter "r"

    .prologue
    .line 1625
    if-nez p1, :cond_a

    .line 1626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1628
    :cond_a
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1629
    :try_start_f
    iget-object v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1630
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1631
    monitor-exit v1

    .line 1632
    return-void

    .line 1631
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
    .line 1602
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1603
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1604
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1605
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v1, :cond_27

    .line 1607
    :try_start_13
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 1608
    :catch_1b
    move-exception v0

    .line 1609
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1612
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

    .line 1613
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .registers 2

    .prologue
    .line 1616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1617
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1618
    return-void
.end method

.method public requestRender()V
    .registers 3

    .prologue
    .line 1493
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1494
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1495
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1496
    monitor-exit v1

    .line 1497
    return-void

    .line 1496
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
    .line 1189
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

    .line 1195
    :try_start_1a
    invoke-direct {p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2e
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25

    .line 1199
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/common/GLSurfaceView$GLThread;)V

    .line 1201
    :goto_24
    return-void

    .line 1196
    :catch_25
    move-exception v0

    .line 1199
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
    .line 1477
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    .line 1478
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1480
    :cond_d
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1481
    :try_start_12
    iput p1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1482
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1483
    monitor-exit v1

    .line 1484
    return-void

    .line 1483
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
    .line 1500
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1504
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1505
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1506
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1508
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1509
    :catch_1f
    move-exception v0

    .line 1510
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1513
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

    .line 1514
    return-void
.end method

.method public surfaceDestroyed()V
    .registers 4

    .prologue
    .line 1517
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1521
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1522
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1523
    :goto_f
    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/opengl/common/GLSurfaceView$GLThread;->mExited:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v1, :cond_2b

    .line 1525
    :try_start_17
    invoke-static {}, Lcom/google/android/opengl/common/GLSurfaceView;->access$800()Lcom/google/android/opengl/common/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1526
    :catch_1f
    move-exception v0

    .line 1527
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1530
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

    .line 1531
    return-void
.end method
