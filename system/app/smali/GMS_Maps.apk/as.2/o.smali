.class public LaS/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:LaS/b;

.field b:LaS/h;

.field private final c:Ljava/util/Set;

.field private d:Z

.field private final e:Ljava/util/Queue;

.field private final f:Ljava/lang/Object;

.field private final g:Lcom/google/googlenav/ai;

.field private final h:LaS/j;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ai;LaS/j;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, LaS/o;->c:Ljava/util/Set;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, LaS/o;->d:Z

    .line 76
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, LaS/o;->e:Ljava/util/Queue;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaS/o;->f:Ljava/lang/Object;

    .line 93
    iput-object p2, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    .line 94
    iput-object p3, p0, LaS/o;->h:LaS/j;

    .line 95
    invoke-virtual {p0, p1}, LaS/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 96
    return-void
.end method

.method static synthetic a(LaS/o;)Lcom/google/googlenav/ai;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ai;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->Y()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bT()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 492
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->bT()Ljava/lang/String;

    move-result-object v0

    .line 494
    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {p0}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private a(LaS/h;LaS/f;ILaS/e;)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 171
    if-nez p2, :cond_4

    .line 180
    :goto_3
    return v1

    .line 175
    :cond_4
    invoke-virtual {p1}, LaS/h;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS/d;

    .line 176
    iget-object v3, v0, LaS/d;->a:LaS/e;

    if-ne v3, p4, :cond_c

    iget v3, v0, LaS/d;->b:I

    if-lez v3, :cond_c

    .line 177
    iget p3, v0, LaS/d;->b:I

    goto :goto_c

    .line 180
    :cond_23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, LaS/f;->a(J)I

    move-result v0

    if-ge v0, p3, :cond_30

    const/4 v0, 0x1

    :goto_2e
    move v1, v0

    goto :goto_3

    :cond_30
    move v0, v1

    goto :goto_2e
.end method

.method private m()V
    .registers 4

    .prologue
    .line 416
    iget-object v1, p0, LaS/o;->c:Ljava/util/Set;

    monitor-enter v1

    .line 417
    :try_start_3
    iget-object v0, p0, LaS/o;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 418
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    .line 420
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 421
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, LaS/o;->b:LaS/h;

    if-eqz v0, :cond_a

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, LaS/o;->b:LaS/h;

    .line 128
    invoke-direct {p0}, LaS/o;->m()V

    .line 130
    :cond_a
    return-void
.end method

.method public a(LaM/m;)V
    .registers 3
    .parameter

    .prologue
    .line 441
    new-instance v0, LaS/q;

    invoke-direct {v0, p0, p1}, LaS/q;-><init>(LaS/o;LaM/m;)V

    invoke-virtual {p0, v0}, LaS/o;->a(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 104
    iget-object v1, p0, LaS/o;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_3
    new-instance v0, LaS/b;

    invoke-direct {v0, p1}, LaS/b;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v0, p0, LaS/o;->a:LaS/b;

    .line 106
    invoke-virtual {p0}, LaS/o;->a()V

    .line 107
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1d

    .line 112
    if-eqz p1, :cond_1c

    .line 113
    new-instance v0, LaS/p;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LaS/p;-><init>(LaS/o;LY/c;)V

    invoke-virtual {v0}, LaS/p;->g()V

    .line 120
    :cond_1c
    return-void

    .line 107
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method a(Ljava/lang/Runnable;)V
    .registers 5
    .parameter

    .prologue
    .line 406
    iget-object v1, p0, LaS/o;->e:Ljava/util/Queue;

    monitor-enter v1

    .line 407
    :try_start_3
    iget-boolean v0, p0, LaS/o;->d:Z

    if-nez v0, :cond_e

    .line 408
    iget-object v0, p0, LaS/o;->e:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 412
    :goto_c
    monitor-exit v1

    .line 413
    return-void

    .line 410
    :cond_e
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    invoke-direct {v0, v2, p1}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    goto :goto_c

    .line 412
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public b()V
    .registers 5

    .prologue
    .line 139
    iget-object v1, p0, LaS/o;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_3
    invoke-virtual {p0}, LaS/o;->j()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    monitor-exit v1

    .line 164
    :goto_a
    return-void

    .line 145
    :cond_b
    invoke-virtual {p0}, LaS/o;->c()V

    .line 148
    invoke-virtual {p0}, LaS/o;->j()Z

    move-result v0

    if-nez v0, :cond_17

    .line 149
    invoke-virtual {p0}, LaS/o;->f()V

    .line 153
    :cond_17
    invoke-virtual {p0}, LaS/o;->j()Z

    move-result v0

    if-nez v0, :cond_20

    .line 154
    invoke-virtual {p0}, LaS/o;->i()V

    .line 158
    :cond_20
    invoke-virtual {p0}, LaS/o;->j()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 159
    invoke-virtual {p0}, LaS/o;->k()LaS/h;

    move-result-object v0

    .line 160
    iget-object v2, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, LaS/a;->a(Lcom/google/googlenav/ai;LaS/h;Z)V

    .line 161
    invoke-direct {p0}, LaS/o;->m()V

    .line 163
    :cond_33
    monitor-exit v1

    goto :goto_a

    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public b(LaM/m;)V
    .registers 5
    .parameter

    .prologue
    .line 455
    new-instance v0, LaS/r;

    invoke-direct {v0, p0, p1}, LaS/r;-><init>(LaS/o;LaM/m;)V

    invoke-virtual {p0, v0}, LaS/o;->a(Ljava/lang/Runnable;)V

    .line 466
    iget-object v0, p0, LaS/o;->h:LaS/j;

    if-eqz v0, :cond_1d

    .line 467
    iget-object v0, p0, LaS/o;->h:LaS/j;

    iget-object v1, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->J()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaS/j;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_1d
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .registers 4
    .parameter

    .prologue
    .line 427
    iget-object v1, p0, LaS/o;->c:Ljava/util/Set;

    monitor-enter v1

    .line 428
    :try_start_3
    iget-object v0, p0, LaS/o;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 429
    monitor-exit v1

    .line 430
    return-void

    .line 429
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method c()V
    .registers 7

    .prologue
    .line 190
    iget-object v0, p0, LaS/o;->a:LaS/b;

    sget-object v1, LaS/e;->c:LaS/e;

    invoke-virtual {v0, v1}, LaS/b;->a(LaS/e;)LaS/h;

    move-result-object v0

    .line 191
    if-eqz v0, :cond_45

    .line 192
    iget-object v1, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, LaS/o;->h:LaS/j;

    invoke-virtual {v2, v1}, LaS/j;->a(Ljava/lang/String;)LaS/g;

    move-result-object v2

    .line 194
    const/16 v3, 0xe

    sget-object v4, LaS/e;->c:LaS/e;

    invoke-direct {p0, v0, v2, v3, v4}, LaS/o;->a(LaS/h;LaS/f;ILaS/e;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 196
    invoke-virtual {v2}, LaS/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laa/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    iget-object v4, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-virtual {v4}, Lcom/google/googlenav/ai;->J()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, p0, LaS/o;->h:LaS/j;

    invoke-virtual {v0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_46

    .line 200
    invoke-virtual {v0, v2}, LaS/h;->a(LaS/g;)V

    .line 201
    iput-object v0, p0, LaS/o;->b:LaS/h;

    .line 214
    :cond_45
    :goto_45
    return-void

    .line 202
    :cond_46
    invoke-virtual {v0}, LaS/h;->l()Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, LaS/o;->h:LaS/j;

    invoke-virtual {v0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, LaS/h;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laa/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-virtual {v0}, LaS/h;->p()LaS/h;

    move-result-object v2

    if-eqz v2, :cond_45

    iget-object v2, p0, LaS/o;->h:LaS/j;

    invoke-virtual {v0}, LaS/h;->p()LaS/h;

    move-result-object v3

    invoke-virtual {v3}, LaS/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 210
    invoke-virtual {v0}, LaS/h;->p()LaS/h;

    move-result-object v0

    iput-object v0, p0, LaS/o;->b:LaS/h;

    goto :goto_45
.end method

.method public c(LaM/m;)V
    .registers 4
    .parameter

    .prologue
    .line 473
    new-instance v0, LaS/s;

    invoke-direct {v0, p0, p1}, LaS/s;-><init>(LaS/o;LaM/m;)V

    invoke-virtual {p0, v0}, LaS/o;->a(Ljava/lang/Runnable;)V

    .line 484
    iget-object v0, p0, LaS/o;->h:LaS/j;

    if-eqz v0, :cond_17

    .line 485
    iget-object v0, p0, LaS/o;->h:LaS/j;

    iget-object v1, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v1}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LaS/j;->c(Ljava/lang/String;)V

    .line 487
    :cond_17
    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .registers 4
    .parameter

    .prologue
    .line 433
    iget-object v1, p0, LaS/o;->c:Ljava/util/Set;

    monitor-enter v1

    .line 434
    :try_start_3
    iget-object v0, p0, LaS/o;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 435
    monitor-exit v1

    .line 436
    return-void

    .line 435
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public d()LaS/h;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v2, p0, LaS/o;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 223
    :try_start_4
    iget-object v0, p0, LaS/o;->a:LaS/b;

    sget-object v3, LaS/e;->c:LaS/e;

    invoke-virtual {v0, v3}, LaS/b;->a(LaS/e;)LaS/h;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_28

    iget-object v3, p0, LaS/o;->h:LaS/j;

    iget-object v4, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v4}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 226
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaS/h;->a(LaS/g;)V

    .line 227
    iput-object v0, p0, LaS/o;->b:LaS/h;

    .line 228
    monitor-exit v2

    .line 230
    :goto_27
    return-object v0

    :cond_28
    monitor-exit v2

    move-object v0, v1

    goto :goto_27

    .line 232
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method public e()V
    .registers 6

    .prologue
    .line 240
    iget-object v1, p0, LaS/o;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_3
    iget-object v0, p0, LaS/o;->a:LaS/b;

    sget-object v2, LaS/e;->c:LaS/e;

    invoke-virtual {v0, v2}, LaS/b;->a(LaS/e;)LaS/h;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2f

    invoke-virtual {v0}, LaS/h;->p()LaS/h;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, LaS/o;->h:LaS/j;

    iget-object v3, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v3}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LaS/h;->p()LaS/h;

    move-result-object v4

    invoke-virtual {v4}, LaS/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 247
    invoke-virtual {v0}, LaS/h;->p()LaS/h;

    move-result-object v0

    iput-object v0, p0, LaS/o;->b:LaS/h;

    .line 251
    :cond_2f
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method

.method f()V
    .registers 5

    .prologue
    .line 260
    iget-object v0, p0, LaS/o;->a:LaS/b;

    sget-object v1, LaS/e;->f:LaS/e;

    invoke-virtual {v0, v1}, LaS/b;->a(LaS/e;)LaS/h;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_37

    iget-object v1, p0, LaS/o;->h:LaS/j;

    iget-object v2, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v2}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 263
    iget-object v1, p0, LaS/o;->h:LaS/j;

    iget-object v2, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v2}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LaS/j;->b(Ljava/lang/String;)LaS/f;

    move-result-object v1

    .line 264
    const/16 v2, 0xe

    sget-object v3, LaS/e;->f:LaS/e;

    invoke-direct {p0, v0, v1, v2, v3}, LaS/o;->a(LaS/h;LaS/f;ILaS/e;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 266
    invoke-virtual {v0, v1}, LaS/h;->a(LaS/f;)V

    .line 267
    iput-object v0, p0, LaS/o;->b:LaS/h;

    .line 270
    :cond_37
    return-void
.end method

.method public g()LaS/h;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 278
    iget-object v2, p0, LaS/o;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    :try_start_4
    iget-object v0, p0, LaS/o;->a:LaS/b;

    sget-object v3, LaS/e;->f:LaS/e;

    invoke-virtual {v0, v3}, LaS/b;->a(LaS/e;)LaS/h;

    move-result-object v0

    .line 280
    if-eqz v0, :cond_28

    iget-object v3, p0, LaS/o;->h:LaS/j;

    iget-object v4, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v4}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 282
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaS/h;->a(LaS/f;)V

    .line 283
    iput-object v0, p0, LaS/o;->b:LaS/h;

    .line 284
    monitor-exit v2

    .line 286
    :goto_27
    return-object v0

    :cond_28
    monitor-exit v2

    move-object v0, v1

    goto :goto_27

    .line 288
    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method h()LaS/h;
    .registers 6

    .prologue
    .line 297
    iget-object v1, p0, LaS/o;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_3
    iget-object v0, p0, LaS/o;->a:LaS/b;

    sget-object v2, LaS/e;->e:LaS/e;

    invoke-virtual {v0, v2}, LaS/b;->a(LaS/e;)LaS/h;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_23

    iget-object v2, p0, LaS/o;->h:LaS/j;

    iget-object v3, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v3}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, LaS/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 301
    iput-object v0, p0, LaS/o;->b:LaS/h;

    .line 302
    monitor-exit v1

    .line 304
    :goto_22
    return-object v0

    :cond_23
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_22

    .line 306
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method i()V
    .registers 7

    .prologue
    .line 313
    iget-object v0, p0, LaS/o;->a:LaS/b;

    sget-object v1, LaS/e;->d:LaS/e;

    invoke-virtual {v0, v1}, LaS/b;->a(LaS/e;)LaS/h;

    move-result-object v1

    .line 314
    if-eqz v1, :cond_4e

    iget-object v0, p0, LaS/o;->h:LaS/j;

    iget-object v2, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-static {v2}, LaS/o;->a(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LaS/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, LaS/j;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 316
    invoke-static {}, Lan/l;->p()Lan/h;

    move-result-object v0

    .line 317
    iget-object v2, p0, LaS/o;->g:Lcom/google/googlenav/ai;

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v2

    invoke-static {v0, v2}, LaB/g;->a(Lan/h;Lat/B;)I

    move-result v2

    .line 319
    const/4 v0, -0x1

    if-eq v2, v0, :cond_4e

    .line 320
    invoke-virtual {v1}, LaS/h;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaS/d;

    .line 321
    iget-object v4, v0, LaS/d;->a:LaS/e;

    sget-object v5, LaS/e;->d:LaS/e;

    if-ne v4, v5, :cond_35

    iget v0, v0, LaS/d;->b:I

    if-lt v0, v2, :cond_35

    .line 323
    iput-object v1, p0, LaS/o;->b:LaS/h;

    goto :goto_35

    .line 328
    :cond_4e
    return-void
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 364
    invoke-virtual {p0}, LaS/o;->k()LaS/h;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public k()LaS/h;
    .registers 3

    .prologue
    .line 368
    iget-object v1, p0, LaS/o;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_3
    iget-object v0, p0, LaS/o;->b:LaS/h;

    monitor-exit v1

    return-object v0

    .line 370
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method l()V
    .registers 3

    .prologue
    .line 384
    :goto_0
    iget-object v1, p0, LaS/o;->e:Ljava/util/Queue;

    monitor-enter v1

    .line 385
    :try_start_3
    iget-object v0, p0, LaS/o;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 386
    if-nez v0, :cond_15

    .line 387
    const/4 v0, 0x1

    iput-boolean v0, p0, LaS/o;->d:Z

    .line 388
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1a

    .line 396
    invoke-virtual {p0}, LaS/o;->b()V

    .line 397
    return-void

    .line 390
    :cond_15
    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_1a

    .line 391
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 390
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method
