.class public Lcom/google/android/maps/driveabout/vector/bL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cY;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cY;

.field private final b:Ll/e;

.field private final c:Lr/Q;

.field private volatile d:Z

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/Set;

.field private h:Ljava/util/Set;

.field private i:Ln/p;

.field private j:Ln/C;

.field private final k:Lt/f;

.field private final l:Ll/q;

.field private m:J


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/vector/cY;Ll/e;Lr/Q;ILl/q;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->d:Z

    .line 72
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->i:Ln/p;

    .line 78
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->j:Ln/C;

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->m:J

    .line 104
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Lcom/google/android/maps/driveabout/vector/cY;

    .line 105
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:Ll/e;

    .line 106
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:Lr/Q;

    .line 107
    new-instance v0, Lt/f;

    invoke-direct {v0, p4}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->k:Lt/f;

    .line 108
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/bL;->l:Ll/q;

    .line 109
    return-void
.end method

.method private a(Ljava/util/List;Lcom/google/android/maps/driveabout/vector/k;)Ln/am;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 123
    invoke-virtual {v0}, Ln/am;->h()Ln/aa;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->c()Ln/Q;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln/aa;->a(Ln/Q;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private f(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 18
    .parameter

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->a:Lcom/google/android/maps/driveabout/vector/cY;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/google/android/maps/driveabout/vector/cY;->a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;

    move-result-object v6

    .line 133
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->d:Z

    if-nez v1, :cond_1d

    if-eqz v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->e:Ljava/util/List;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 216
    :goto_1c
    return-void

    .line 137
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->m:J

    .line 141
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->d:Z

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->l:Ll/q;

    invoke-virtual {v1}, Ll/q;->c()Ln/w;

    move-result-object v7

    .line 148
    if-eqz v7, :cond_105

    invoke-virtual {v7}, Ln/w;->a()Ln/p;

    move-result-object v1

    move-object v3, v1

    .line 149
    :goto_3c
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v8

    .line 150
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v9

    .line 151
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v10

    .line 153
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_136

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/am;

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bL;->k:Lt/f;

    invoke-virtual {v2, v1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 155
    if-nez v2, :cond_77

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/bL;->b:Ll/e;

    invoke-interface {v2, v1}, Ll/e;->a(Ln/am;)Ljava/util/Collection;

    move-result-object v2

    .line 159
    sget-object v4, Ll/e;->a:Ljava/util/Collection;

    if-eq v2, v4, :cond_77

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bL;->k:Lt/f;

    invoke-virtual {v4, v1, v2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    :cond_77
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/a;

    .line 164
    invoke-virtual {v2}, Ll/a;->a()Ln/p;

    move-result-object v4

    invoke-interface {v10, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/vector/bL;->l:Ll/q;

    invoke-virtual {v2}, Ll/a;->a()Ln/p;

    move-result-object v5

    invoke-virtual {v4, v5}, Ll/q;->b(Ln/p;)Ln/C;

    move-result-object v4

    .line 167
    if-eqz v4, :cond_ab

    .line 168
    new-instance v5, Ln/av;

    invoke-direct {v5}, Ln/av;-><init>()V

    .line 169
    invoke-virtual {v5, v4}, Ln/av;->a(Ln/ao;)V

    .line 170
    invoke-virtual {v1, v5}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_ab
    monitor-enter p0

    .line 173
    :try_start_ac
    invoke-virtual {v2}, Ll/a;->a()Ln/p;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/bL;->i:Ln/p;

    invoke-virtual {v5, v13}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cd

    .line 174
    new-instance v5, Ln/av;

    invoke-direct {v5}, Ln/av;-><init>()V

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/maps/driveabout/vector/bL;->j:Ln/C;

    invoke-virtual {v5, v13}, Ln/av;->a(Ln/ao;)V

    .line 176
    invoke-virtual {v1, v5}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_cd
    monitor-exit p0
    :try_end_ce
    .catchall {:try_start_ac .. :try_end_ce} :catchall_109

    .line 182
    if-eqz v4, :cond_7b

    invoke-virtual {v2}, Ll/a;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v2, v3}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 183
    invoke-virtual {v4}, Ln/C;->c()Ln/B;

    move-result-object v2

    invoke-virtual {v7, v2}, Ln/w;->b(Ln/B;)I

    move-result v13

    .line 184
    const/4 v2, -0x1

    if-eq v13, v2, :cond_7b

    .line 185
    invoke-virtual {v7}, Ln/w;->b()Ljava/util/List;

    move-result-object v14

    .line 186
    add-int/lit8 v2, v13, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 187
    add-int/lit8 v4, v13, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    move v5, v2

    .line 189
    :goto_fd
    if-ge v5, v15, :cond_7b

    .line 190
    if-ne v5, v13, :cond_10c

    .line 189
    :goto_101
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_fd

    .line 148
    :cond_105
    const/4 v1, 0x0

    move-object v3, v1

    goto/16 :goto_3c

    .line 178
    :catchall_109
    move-exception v1

    :try_start_10a
    monitor-exit p0
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    throw v1

    .line 193
    :cond_10c
    new-instance v4, Ln/av;

    invoke-direct {v4}, Ln/av;-><init>()V

    .line 194
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln/x;

    invoke-virtual {v2}, Ln/x;->a()Ln/B;

    move-result-object v2

    invoke-static {v2}, Ln/C;->a(Ln/B;)Ln/C;

    move-result-object v2

    invoke-virtual {v4, v2}, Ln/av;->a(Ln/ao;)V

    .line 196
    invoke-virtual {v1, v4}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v2

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/google/android/maps/driveabout/vector/bL;->a(Ln/am;Ln/Q;)Ln/am;

    move-result-object v4

    .line 199
    if-nez v4, :cond_14c

    .line 202
    :goto_132
    invoke-interface {v9, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_101

    .line 212
    :cond_136
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/google/android/maps/driveabout/vector/bL;->e:Ljava/util/List;

    .line 213
    invoke-static {v8}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/maps/driveabout/vector/bL;->f:Ljava/util/List;

    .line 214
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/google/android/maps/driveabout/vector/bL;->g:Ljava/util/Set;

    .line 215
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/maps/driveabout/vector/bL;->h:Ljava/util/Set;

    goto/16 :goto_1c

    :cond_14c
    move-object v2, v4

    goto :goto_132
.end method


# virtual methods
.method public a(Ln/Q;)F
    .registers 3
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/vector/cY;->a(Ln/Q;)F

    move-result v0

    return v0
.end method

.method public a()J
    .registers 3

    .prologue
    .line 226
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->m:J

    return-wide v0
.end method

.method public a(ILn/Q;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 340
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->f(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->f:Ljava/util/List;

    return-object v0
.end method

.method public a(Ln/am;Ln/Q;)Ln/am;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Lcom/google/android/maps/driveabout/vector/cY;

    invoke-interface {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cY;->a(Ln/am;Ln/Q;)Ln/am;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized a(Ln/p;Ln/B;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bL;->i:Ln/p;

    .line 312
    new-instance v0, Ln/D;

    invoke-direct {v0}, Ln/D;-><init>()V

    invoke-virtual {v0, p2}, Ln/D;->a(Ln/B;)Ln/D;

    move-result-object v0

    invoke-virtual {v0}, Ln/D;->a()Ln/C;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->j:Ln/C;

    .line 313
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bL;->b()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 314
    monitor-exit p0

    return-void

    .line 311
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->f(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 235
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->g:Ljava/util/Set;

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->d:Z

    .line 304
    return-void
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/k;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->f(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->h:Ljava/util/Set;

    return-object v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 317
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->i:Ln/p;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->j:Ln/C;

    .line 319
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bL;->b()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 320
    monitor-exit p0

    return-void

    .line 317
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/k;)D
    .registers 10
    .parameter

    .prologue
    const-wide/high16 v6, 0x4033

    .line 252
    const-wide/high16 v0, 0x4020

    .line 256
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->m()F

    move-result v2

    float-to-double v2, v2

    .line 257
    cmpl-double v4, v2, v6

    if-lez v4, :cond_15

    .line 258
    const-wide/high16 v4, 0x4000

    sub-double/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 259
    div-double/2addr v0, v2

    .line 262
    :cond_15
    return-wide v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->f:Ljava/util/List;

    return-object v0
.end method

.method public e(Lcom/google/android/maps/driveabout/vector/k;)Ln/p;
    .registers 6
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->f(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 271
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->e:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->a(Ljava/util/List;Lcom/google/android/maps/driveabout/vector/k;)Ln/am;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->k:Lt/f;

    invoke-virtual {v1, v0}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 274
    if-eqz v0, :cond_20

    .line 275
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->c()Ln/Q;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/bL;->d(Lcom/google/android/maps/driveabout/vector/k;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ll/a;->a(Ljava/util/Collection;Ln/Q;D)Ln/p;

    move-result-object v0

    .line 279
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
