.class Lcom/google/android/maps/driveabout/vector/bD;
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

.field private r:Lcom/google/android/maps/driveabout/vector/bC;

.field private s:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1025
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->p:Ljava/util/ArrayList;

    .line 1595
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    .line 1026
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->k:I

    .line 1027
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bD;->l:I

    .line 1028
    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->n:Z

    .line 1029
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->m:I

    .line 1030
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->s:Ljava/lang/ref/WeakReference;

    .line 1031
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/bD;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1023
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Z

    return p1
.end method

.method private h()V
    .registers 2

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    if-eqz v0, :cond_c

    .line 1063
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    .line 1064
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bC;->e()V

    .line 1066
    :cond_c
    return-void
.end method

.method private i()V
    .registers 2

    .prologue
    .line 1073
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    if-eqz v0, :cond_13

    .line 1074
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bC;->f()V

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    .line 1076
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bE;->c(Lcom/google/android/maps/driveabout/vector/bD;)V

    .line 1078
    :cond_13
    return-void
.end method

.method private j()V
    .registers 19

    .prologue
    .line 1080
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bC;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bD;->s:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/google/android/maps/driveabout/vector/bC;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    .line 1081
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    .line 1082
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    .line 1084
    const/4 v3, 0x0

    .line 1085
    const/4 v12, 0x0

    .line 1086
    const/4 v1, 0x0

    .line 1087
    const/4 v11, 0x0

    .line 1088
    const/4 v10, 0x0

    .line 1089
    const/4 v9, 0x0

    .line 1090
    const/4 v8, 0x0

    .line 1091
    const/4 v2, 0x0

    .line 1092
    const/4 v7, 0x0

    .line 1093
    const/4 v6, 0x0

    .line 1094
    const/4 v5, 0x0

    .line 1095
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

    .line 1098
    :goto_31
    :try_start_31
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v15

    monitor-enter v15
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_1d5

    .line 1100
    :goto_36
    :try_start_36
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->a:Z

    if-eqz v1, :cond_4d

    .line 1101
    monitor-exit v15
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_1d2

    .line 1375
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v2

    monitor-enter v2

    .line 1376
    :try_start_42
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->h()V

    .line 1377
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->i()V

    .line 1378
    monitor-exit v2

    return-void

    :catchall_4a
    move-exception v1

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4a

    throw v1

    .line 1104
    :cond_4d
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_81

    .line 1105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->p:Ljava/util/ArrayList;

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

    .line 1268
    :goto_6c
    monitor-exit v15
    :try_end_6d
    .catchall {:try_start_4d .. :try_end_6d} :catchall_1d2

    .line 1270
    if-eqz v4, :cond_1f9

    .line 1271
    :try_start_6f
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_1d5

    .line 1272
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

    .line 1273
    goto :goto_31

    .line 1110
    :cond_81
    const/4 v1, 0x0

    .line 1111
    :try_start_82
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bD;->d:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/bD;->c:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_2db

    .line 1112
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->c:Z

    .line 1113
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bD;->c:Z

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bD;->d:Z

    .line 1114
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    move v13, v1

    .line 1121
    :goto_a4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->j:Z

    if-eqz v1, :cond_b6

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->h()V

    .line 1126
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->i()V

    .line 1127
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->j:Z

    .line 1128
    const/4 v5, 0x1

    .line 1132
    :cond_b6
    if-eqz v9, :cond_bf

    .line 1133
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->h()V

    .line 1134
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->i()V

    .line 1135
    const/4 v9, 0x0

    .line 1139
    :cond_bf
    if-eqz v13, :cond_ca

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    if-eqz v1, :cond_ca

    .line 1143
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->h()V

    .line 1147
    :cond_ca
    if-eqz v13, :cond_ee

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    if-eqz v1, :cond_ee

    .line 1148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 1149
    if-nez v1, :cond_1ab

    const/4 v1, 0x0

    .line 1151
    :goto_df
    if-eqz v1, :cond_eb

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bE;->a()Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1152
    :cond_eb
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->i()V

    .line 1160
    :cond_ee
    if-eqz v13, :cond_101

    .line 1161
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bE;->b()Z

    move-result v1

    if-eqz v1, :cond_101

    .line 1162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bC;->f()V

    .line 1170
    :cond_101
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->e:Z

    if-nez v1, :cond_127

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->g:Z

    if-nez v1, :cond_127

    .line 1174
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    if-eqz v1, :cond_116

    .line 1175
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->h()V

    .line 1177
    :cond_116
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->g:Z

    .line 1178
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->f:Z

    .line 1179
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1183
    :cond_127
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->e:Z

    if-eqz v1, :cond_13f

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->g:Z

    if-eqz v1, :cond_13f

    .line 1187
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->g:Z

    .line 1188
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1191
    :cond_13f
    if-eqz v6, :cond_14f

    .line 1195
    const/4 v7, 0x0

    .line 1196
    const/4 v6, 0x0

    .line 1197
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->o:Z

    .line 1198
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1202
    :cond_14f
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->k()Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 1205
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    if-nez v1, :cond_15e

    .line 1206
    if-eqz v5, :cond_1b1

    .line 1207
    const/4 v5, 0x0

    .line 1222
    :cond_15e
    :goto_15e
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    if-eqz v1, :cond_2d7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    if-nez v1, :cond_2d7

    .line 1223
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    .line 1224
    const/4 v11, 0x1

    .line 1225
    const/4 v10, 0x1

    .line 1226
    const/4 v8, 0x1

    move v1, v8

    move v8, v10

    .line 1229
    :goto_174
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    if-eqz v10, :cond_1ee

    .line 1230
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    if-eqz v10, :cond_2cd

    .line 1231
    const/4 v7, 0x1

    .line 1232
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/maps/driveabout/vector/bD;->k:I

    .line 1233
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->l:I

    .line 1234
    const/4 v4, 0x1

    .line 1242
    const/4 v10, 0x1

    .line 1244
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    .line 1246
    :goto_190
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/google/android/maps/driveabout/vector/bD;->n:Z

    .line 1247
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

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

    .line 1248
    goto/16 :goto_6c

    .line 1149
    :cond_1ab
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->g(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Z

    move-result v1

    goto/16 :goto_df

    .line 1208
    :cond_1b1
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bE;->b(Lcom/google/android/maps/driveabout/vector/bD;)Z
    :try_end_1ba
    .catchall {:try_start_82 .. :try_end_1ba} :catchall_1d2

    move-result v1

    if-eqz v1, :cond_15e

    .line 1210
    :try_start_1bd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bC;->a()V
    :try_end_1c4
    .catchall {:try_start_1bd .. :try_end_1c4} :catchall_1d2
    .catch Ljava/lang/RuntimeException; {:try_start_1bd .. :try_end_1c4} :catch_1e3

    .line 1215
    const/4 v1, 0x1

    :try_start_1c5
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    .line 1216
    const/4 v12, 0x1

    .line 1218
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_15e

    .line 1268
    :catchall_1d2
    move-exception v1

    monitor-exit v15
    :try_end_1d4
    .catchall {:try_start_1c5 .. :try_end_1d4} :catchall_1d2

    :try_start_1d4
    throw v1
    :try_end_1d5
    .catchall {:try_start_1d4 .. :try_end_1d5} :catchall_1d5

    .line 1375
    :catchall_1d5
    move-exception v1

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v2

    monitor-enter v2

    .line 1376
    :try_start_1db
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->h()V

    .line 1377
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bD;->i()V

    .line 1378
    monitor-exit v2
    :try_end_1e2
    .catchall {:try_start_1db .. :try_end_1e2} :catchall_2c4

    throw v1

    .line 1211
    :catch_1e3
    move-exception v1

    .line 1212
    :try_start_1e4
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/bE;->c(Lcom/google/android/maps/driveabout/vector/bD;)V

    .line 1213
    throw v1

    :cond_1ee
    move v10, v8

    move v8, v1

    .line 1266
    :cond_1f0
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1f7
    .catchall {:try_start_1e4 .. :try_end_1f7} :catchall_1d2

    goto/16 :goto_36

    .line 1276
    :cond_1f9
    if-eqz v1, :cond_2ca

    .line 1280
    :try_start_1fb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bC;->b()Z

    move-result v3

    if-nez v3, :cond_229

    .line 1281
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v3

    monitor-enter v3
    :try_end_20a
    .catchall {:try_start_1fb .. :try_end_20a} :catchall_1d5

    .line 1282
    const/4 v13, 0x1

    :try_start_20b
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/google/android/maps/driveabout/vector/bD;->f:Z

    .line 1283
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->notifyAll()V

    .line 1284
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

    .line 1285
    goto/16 :goto_31

    .line 1284
    :catchall_226
    move-exception v1

    monitor-exit v3
    :try_end_228
    .catchall {:try_start_20b .. :try_end_228} :catchall_226

    :try_start_228
    throw v1

    .line 1287
    :cond_229
    const/4 v1, 0x0

    move v3, v1

    .line 1290
    :goto_22b
    if-eqz v11, :cond_2c7

    .line 1291
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bC;->c()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 1293
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/google/android/maps/driveabout/vector/bE;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1294
    const/4 v11, 0x0

    move-object v13, v1

    .line 1297
    :goto_240
    if-eqz v12, :cond_25c

    .line 1301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 1302
    if-eqz v1, :cond_25b

    .line 1303
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    iget-object v12, v12, Lcom/google/android/maps/driveabout/vector/bC;->d:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1, v13, v12}, Lcom/google/android/maps/driveabout/vector/cy;->a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1305
    :cond_25b
    const/4 v12, 0x0

    .line 1308
    :cond_25c
    if-eqz v9, :cond_272

    .line 1312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 1313
    if-eqz v1, :cond_271

    .line 1314
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v1

    invoke-virtual {v1, v13, v6, v5}, Lcom/google/android/maps/driveabout/vector/cy;->a(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1316
    :cond_271
    const/4 v9, 0x0

    .line 1323
    :cond_272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->s:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;

    .line 1324
    if-eqz v1, :cond_285

    .line 1325
    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->h(Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;)Lcom/google/android/maps/driveabout/vector/cy;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/google/android/maps/driveabout/vector/cy;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1331
    :cond_285
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 1334
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->r:Lcom/google/android/maps/driveabout/vector/bC;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bC;->d()I

    move-result v1

    .line 1335
    sparse-switch v1, :sswitch_data_2e0

    .line 1349
    const-string v14, "GLThread"

    const-string v15, "eglSwapBuffers"

    invoke-static {v14, v15, v1}, Lcom/google/android/maps/driveabout/vector/bC;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1351
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v14

    monitor-enter v14
    :try_end_29f
    .catchall {:try_start_228 .. :try_end_29f} :catchall_1d5

    .line 1352
    const/4 v1, 0x1

    :try_start_2a0
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bD;->f:Z

    .line 1353
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1354
    monitor-exit v14

    .line 1366
    :goto_2ac
    :sswitch_2ac
    if-eqz v8, :cond_2de

    .line 1367
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

    .line 1369
    goto/16 :goto_31

    .line 1342
    :sswitch_2bf
    const/4 v10, 0x1

    .line 1343
    goto :goto_2ac

    .line 1354
    :catchall_2c1
    move-exception v1

    monitor-exit v14
    :try_end_2c3
    .catchall {:try_start_2a0 .. :try_end_2c3} :catchall_2c1

    :try_start_2c3
    throw v1
    :try_end_2c4
    .catchall {:try_start_2c3 .. :try_end_2c4} :catchall_1d5

    .line 1378
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

    .line 1335
    :sswitch_data_2e0
    .sparse-switch
        0x3000 -> :sswitch_2ac
        0x300e -> :sswitch_2bf
    .end sparse-switch
.end method

.method private k()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1387
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->d:Z

    if-nez v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->e:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->f:Z

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->k:I

    if-lez v1, :cond_1e

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->l:I

    if-lez v1, :cond_1e

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->n:Z

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bD;->m:I

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
    .line 1393
    if-ltz p1, :cond_5

    const/4 v0, 0x1

    if-le p1, v0, :cond_d

    .line 1394
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_d
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    monitor-enter v1

    .line 1397
    :try_start_12
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->m:I

    .line 1398
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1399
    monitor-exit v1

    .line 1400
    return-void

    .line 1399
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
    .line 1511
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    monitor-enter v1

    .line 1512
    :try_start_5
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bD;->k:I

    .line 1513
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bD;->l:I

    .line 1514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->q:Z

    .line 1515
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->n:Z

    .line 1516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->o:Z

    .line 1517
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1521
    :goto_19
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->d:Z

    if-nez v0, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->o:Z

    if-nez v0, :cond_3f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bD;->a()Z
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_3c

    move-result v0

    if-eqz v0, :cond_3f

    .line 1526
    :try_start_2b
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_3c
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_32} :catch_33

    goto :goto_19

    .line 1527
    :catch_33
    move-exception v0

    .line 1528
    :try_start_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_19

    .line 1531
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

    .line 1532
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->h:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->i:Z

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bD;->k()Z

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
    .line 1403
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    monitor-enter v1

    .line 1404
    :try_start_5
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->m:I

    monitor-exit v1

    return v0

    .line 1405
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
    .line 1416
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    monitor-enter v1

    .line 1420
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->e:Z

    .line 1421
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1422
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Z

    if-eqz v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    .line 1424
    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1425
    :catch_1f
    move-exception v0

    .line 1426
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1429
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

    .line 1430
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 1433
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    monitor-enter v1

    .line 1437
    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->e:Z

    .line 1438
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1439
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->g:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Z
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_28

    if-nez v0, :cond_2b

    .line 1441
    :try_start_17
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_28
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 1442
    :catch_1f
    move-exception v0

    .line 1443
    :try_start_20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1446
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

    .line 1447
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    .line 1537
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    monitor-enter v1

    .line 1538
    const/4 v0, 0x1

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->a:Z

    .line 1539
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1540
    :goto_f
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_24

    if-nez v0, :cond_27

    .line 1542
    :try_start_13
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_f

    .line 1543
    :catch_1b
    move-exception v0

    .line 1544
    :try_start_1c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_f

    .line 1547
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

    .line 1548
    return-void
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 1553
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    monitor-enter v1

    .line 1554
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->b:Z

    monitor-exit v1

    return v0

    .line 1555
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 1559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bD;->j:Z

    .line 1560
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1561
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bD;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bD;->setName(Ljava/lang/String;)V

    .line 1041
    :try_start_1a
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bD;->j()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_35
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_2e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_3e

    .line 1053
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    .line 1055
    :goto_24
    return-void

    .line 1042
    :catch_25
    move-exception v0

    .line 1053
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    goto :goto_24

    .line 1044
    :catch_2e
    move-exception v0

    .line 1047
    :try_start_2f
    const-string v1, "MAP"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1048
    throw v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_35

    .line 1053
    :catchall_35
    move-exception v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    throw v0

    .line 1049
    :catch_3e
    move-exception v0

    .line 1051
    :try_start_3f
    const-string v1, "MAP"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_35

    .line 1053
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/GmmGLTextureView;->a()Lcom/google/android/maps/driveabout/vector/bE;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    goto :goto_24
.end method
