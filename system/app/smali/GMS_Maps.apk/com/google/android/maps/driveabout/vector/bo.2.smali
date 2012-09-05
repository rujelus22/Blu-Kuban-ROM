.class Lcom/google/android/maps/driveabout/vector/bo;
.super Ljava/lang/Thread;


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

.field private j:I

.field private k:I

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Ljava/util/ArrayList;

.field private p:Z

.field private q:Lcom/google/android/maps/driveabout/vector/bn;

.field private r:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->o:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->p:Z

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->j:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bo;->k:I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->m:Z

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->l:I

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bo;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bo;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Z

    return p1
.end method

.method private j()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bn;->e()V

    :cond_c
    return-void
.end method

.method private k()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->g:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bn;->f()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->g:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bp;->c(Lcom/google/android/maps/driveabout/vector/bo;)V

    :cond_13
    return-void
.end method

.method private l()V
    .registers 18

    new-instance v1, Lcom/google/android/maps/driveabout/vector/bn;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bo;->r:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/bn;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->g:Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v13, v4

    move v4, v6

    move v6, v1

    move/from16 v16, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v3

    move v3, v5

    move/from16 v5, v16

    :goto_30
    :try_start_30
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v14

    monitor-enter v14
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_1bc

    :goto_35
    :try_start_35
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->a:Z

    if-eqz v1, :cond_49

    monitor-exit v14
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_1b9

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v2

    monitor-enter v2

    :try_start_41
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->k()V

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_27c

    :goto_48
    return-void

    :cond_49
    :try_start_49
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->o:Ljava/util/ArrayList;

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

    :goto_68
    monitor-exit v14
    :try_end_69
    .catchall {:try_start_49 .. :try_end_69} :catchall_1b9

    if-eqz v4, :cond_1e0

    :try_start_6b
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_1bc

    const/4 v4, 0x0

    move v3, v5

    move v5, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v1

    move/from16 v16, v2

    move-object v2, v4

    move v4, v6

    move/from16 v6, v16

    goto :goto_30

    :cond_7d
    :try_start_7d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->d:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/maps/driveabout/vector/bo;->c:Z

    if-eq v1, v15, :cond_96

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->c:Z

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->d:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_96
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->i:Z

    if-eqz v1, :cond_a8

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->k()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->i:Z

    const/4 v5, 0x1

    :cond_a8
    if-eqz v9, :cond_b1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->k()V

    const/4 v9, 0x0

    :cond_b1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    if-eqz v1, :cond_ed

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->d:Z

    if-eqz v1, :cond_ed

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->j()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-nez v1, :cond_192

    const/4 v1, 0x0

    :goto_cd
    if-eqz v1, :cond_d9

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bp;->a()Z

    move-result v1

    if-eqz v1, :cond_dc

    :cond_d9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->k()V

    :cond_dc
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bp;->b()Z

    move-result v1

    if-eqz v1, :cond_ed

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->f()V

    :cond_ed
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->e:Z

    if-nez v1, :cond_10e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->f:Z

    if-nez v1, :cond_10e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    if-eqz v1, :cond_102

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->j()V

    :cond_102
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->f:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_10e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->e:Z

    if-eqz v1, :cond_126

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->f:Z

    if-eqz v1, :cond_126

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->f:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_126
    if-eqz v6, :cond_136

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->n:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_136
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->m()Z

    move-result v1

    if-eqz v1, :cond_1d7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->g:Z

    if-nez v1, :cond_145

    if-eqz v5, :cond_198

    const/4 v5, 0x0

    :cond_145
    :goto_145
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->g:Z

    if-eqz v1, :cond_28c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    if-nez v1, :cond_28c

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    const/4 v11, 0x1

    const/4 v10, 0x1

    const/4 v8, 0x1

    move v1, v8

    move v8, v10

    :goto_15b
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    if-eqz v10, :cond_1d5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/maps/driveabout/vector/bo;->p:Z

    if-eqz v10, :cond_282

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/bo;->j:I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->k:I

    const/4 v4, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/maps/driveabout/vector/bo;->p:Z

    :goto_177
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/maps/driveabout/vector/bo;->m:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->notifyAll()V

    move v11, v8

    move v8, v4

    move-object v4, v2

    move v2, v6

    move v6, v3

    move/from16 v16, v1

    move v1, v10

    move v10, v9

    move v9, v7

    move v7, v5

    move/from16 v5, v16

    goto/16 :goto_68

    :cond_192
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->g(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Z

    move-result v1

    goto/16 :goto_cd

    :cond_198
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bp;->b(Lcom/google/android/maps/driveabout/vector/bo;)Z
    :try_end_1a1
    .catchall {:try_start_7d .. :try_end_1a1} :catchall_1b9

    move-result v1

    if-eqz v1, :cond_145

    :try_start_1a4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->a()V
    :try_end_1ab
    .catchall {:try_start_1a4 .. :try_end_1ab} :catchall_1b9
    .catch Ljava/lang/RuntimeException; {:try_start_1a4 .. :try_end_1ab} :catch_1ca

    const/4 v1, 0x1

    :try_start_1ac
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->g:Z

    const/4 v12, 0x1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_145

    :catchall_1b9
    move-exception v1

    monitor-exit v14
    :try_end_1bb
    .catchall {:try_start_1ac .. :try_end_1bb} :catchall_1b9

    :try_start_1bb
    throw v1
    :try_end_1bc
    .catchall {:try_start_1bb .. :try_end_1bc} :catchall_1bc

    :catchall_1bc
    move-exception v1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v2

    monitor-enter v2

    :try_start_1c2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->k()V

    monitor-exit v2
    :try_end_1c9
    .catchall {:try_start_1c2 .. :try_end_1c9} :catchall_279

    throw v1

    :catch_1ca
    move-exception v1

    :try_start_1cb
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/bp;->c(Lcom/google/android/maps/driveabout/vector/bo;)V

    throw v1

    :cond_1d5
    move v10, v8

    move v8, v1

    :cond_1d7
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1de
    .catchall {:try_start_1cb .. :try_end_1de} :catchall_1b9

    goto/16 :goto_35

    :cond_1e0
    if-eqz v1, :cond_27f

    :try_start_1e2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->b()Z
    :try_end_1e9
    .catchall {:try_start_1e2 .. :try_end_1e9} :catchall_1bc

    move-result v1

    if-nez v1, :cond_1fd

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v2

    monitor-enter v2

    :try_start_1f1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bo;->k()V

    monitor-exit v2

    goto/16 :goto_48

    :catchall_1fa
    move-exception v1

    monitor-exit v2
    :try_end_1fc
    .catchall {:try_start_1f1 .. :try_end_1fc} :catchall_1fa

    throw v1

    :cond_1fd
    const/4 v1, 0x0

    move v3, v1

    :goto_1ff
    if-eqz v11, :cond_214

    :try_start_201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/google/android/maps/driveabout/vector/bp;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v11, 0x0

    move-object v13, v1

    :cond_214
    if-eqz v12, :cond_230

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-eqz v1, :cond_22f

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bs;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    iget-object v12, v12, Lcom/google/android/maps/driveabout/vector/bn;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v1, v13, v12}, Lcom/google/android/maps/driveabout/vector/bs;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    :cond_22f
    const/4 v12, 0x0

    :cond_230
    if-eqz v9, :cond_246

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-eqz v1, :cond_245

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bs;

    move-result-object v1

    invoke-interface {v1, v13, v6, v5}, Lcom/google/android/maps/driveabout/vector/bs;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    :cond_245
    const/4 v9, 0x0

    :cond_246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;

    if-eqz v1, :cond_259

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;)Lcom/google/android/maps/driveabout/vector/bs;

    move-result-object v1

    invoke-interface {v1, v13}, Lcom/google/android/maps/driveabout/vector/bs;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_259
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bo;->q:Lcom/google/android/maps/driveabout/vector/bn;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bn;->d()Z
    :try_end_263
    .catchall {:try_start_201 .. :try_end_263} :catchall_1bc

    move-result v1

    if-nez v1, :cond_267

    const/4 v10, 0x1

    :cond_267
    if-eqz v8, :cond_290

    const/4 v1, 0x1

    :goto_26a
    move-object v2, v4

    move v4, v6

    move v6, v1

    move/from16 v16, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v3

    move v3, v5

    move/from16 v5, v16

    goto/16 :goto_30

    :catchall_279
    move-exception v1

    :try_start_27a
    monitor-exit v2
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_279

    throw v1

    :catchall_27c
    move-exception v1

    :try_start_27d
    monitor-exit v2
    :try_end_27e
    .catchall {:try_start_27d .. :try_end_27e} :catchall_27c

    throw v1

    :cond_27f
    move v3, v1

    goto/16 :goto_1ff

    :cond_282
    move v10, v11

    move/from16 v16, v4

    move v4, v7

    move v7, v1

    move v1, v3

    move/from16 v3, v16

    goto/16 :goto_177

    :cond_28c
    move v1, v8

    move v8, v10

    goto/16 :goto_15b

    :cond_290
    move v1, v2

    goto :goto_26a
.end method

.method private m()Z
    .registers 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Z

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Z

    if-eqz v1, :cond_1a

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->j:I

    if-lez v1, :cond_1a

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->k:I

    if-lez v1, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->m:Z

    if-nez v1, :cond_19

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bo;->l:I

    if-ne v1, v0, :cond_1a

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public a(I)V
    .registers 4

    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    :try_start_12
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bo;->l:I

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public a(II)V
    .registers 5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bo;->j:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bo;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->n:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_19
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->n:Z

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bo;->a()Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_3c

    move-result v0

    if-eqz v0, :cond_3f

    :try_start_2b
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_19

    :catch_33
    move-exception v0

    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_19

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

    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->g:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->h:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bo;->m()Z

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

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->l:I

    monitor-exit v1

    return v0

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public c()V
    .registers 3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->m:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public d()V
    .registers 3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

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

    return-void
.end method

.method public e()V
    .registers 3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->e:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->f:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

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

    return-void
.end method

.method public f()V
    .registers 3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

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

    return-void
.end method

.method public g()V
    .registers 3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->n:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_15
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Z

    if-nez v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->d:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->n:Z
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_32

    if-nez v0, :cond_35

    :try_start_21
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_32
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_28} :catch_29

    goto :goto_15

    :catch_29
    move-exception v0

    :try_start_2a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_15

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

    return-void
.end method

.method public h()V
    .registers 3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->a:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->b:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v0, :cond_27

    :try_start_13
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    :catch_1b
    move-exception v0

    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

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

    return-void
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bo;->i:Z

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public run()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bo;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bo;->setName(Ljava/lang/String;)V

    :try_start_1a
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bo;->l()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2c
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_35

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    :goto_21
    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bp;->a(Lcom/google/android/maps/driveabout/vector/bo;)V

    return-void

    :catch_25
    move-exception v0

    :try_start_26
    const-string v1, "MAP"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/vector/bp;->a(Lcom/google/android/maps/driveabout/vector/bo;)V

    throw v0

    :catch_35
    move-exception v0

    :try_start_36
    const-string v1, "MAP"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_2c

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    goto :goto_21

    :catch_40
    move-exception v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLSurfaceView;->f()Lcom/google/android/maps/driveabout/vector/bp;

    move-result-object v0

    goto :goto_21
.end method
