.class public abstract Lcom/google/googlenav/friend/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/g;


# static fields
.field protected static d:Z


# instance fields
.field private final a:Ljava/util/Vector;

.field protected final b:Lcom/google/googlenav/android/Y;

.field protected final c:Lcom/google/googlenav/ui/wizard/ju;

.field private final e:Lcom/google/googlenav/friend/d;

.field private volatile f:Z

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/friend/bk;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/d;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/bk;->a:Ljava/util/Vector;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/bk;->f:Z

    .line 107
    iput-object p1, p0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    .line 108
    iput-object p2, p0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    .line 109
    iput-object p3, p0, Lcom/google/googlenav/friend/bk;->e:Lcom/google/googlenav/friend/d;

    .line 110
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/bk;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/googlenav/friend/bk;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/friend/bk;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/googlenav/friend/bk;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static a(ILjava/lang/String;Lcom/google/googlenav/friend/be;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 527
    invoke-static {p0}, Lcom/google/googlenav/common/util/e;->a(I)[B

    move-result-object v0

    .line 528
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 536
    new-instance v0, Lcom/google/googlenav/friend/br;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/google/googlenav/friend/br;-><init>(LY/c;Lcom/google/googlenav/friend/be;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/br;->g()V

    .line 546
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/bk;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/google/googlenav/friend/bk;->f:Z

    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 277
    if-nez p0, :cond_4

    .line 280
    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Lcom/google/googlenav/friend/bk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 479
    .line 480
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v1

    .line 481
    if-eqz v1, :cond_1b

    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    .line 483
    invoke-static {v1}, Lcom/google/googlenav/common/util/e;->a([B)I

    move-result v1

    .line 485
    :goto_17
    if-lez v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    :cond_1b
    move v1, v0

    goto :goto_17
.end method

.method private declared-synchronized i()V
    .registers 4

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/friend/bk;->f:Z

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    if-eqz v0, :cond_13

    .line 179
    const/4 v0, 0x0

    .line 180
    iget-object v1, p0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    new-instance v2, Lcom/google/googlenav/friend/bn;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/bn;-><init>(Lcom/google/googlenav/friend/bk;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 188
    :cond_13
    monitor-exit p0

    return-void

    .line 177
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()Ljava/util/List;
    .registers 3

    .prologue
    .line 256
    .line 260
    iget-object v1, p0, Lcom/google/googlenav/friend/bk;->a:Ljava/util/Vector;

    monitor-enter v1

    .line 261
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->a:Ljava/util/Vector;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 262
    monitor-exit v1

    .line 263
    return-object v0

    .line 262
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method protected C_()V
    .registers 1

    .prologue
    .line 220
    return-void
.end method

.method public declared-synchronized D_()V
    .registers 5

    .prologue
    .line 304
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/googlenav/friend/bk;->f:Z

    .line 305
    new-instance v0, Lcom/google/googlenav/friend/bu;

    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->h()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/friend/bs;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/friend/bs;-><init>(Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/friend/bl;)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/bu;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/bv;)V

    .line 307
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    .line 308
    monitor-exit p0

    return-void

    .line 304
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public E_()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/googlenav/friend/bk;->a(ZLjava/lang/String;Lcom/google/googlenav/friend/be;)V

    .line 359
    invoke-direct {p0}, Lcom/google/googlenav/friend/bk;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 360
    invoke-interface {v0}, Las/h;->E_()V

    goto :goto_11

    .line 365
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    if-eqz v0, :cond_2f

    .line 367
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    new-instance v1, Lcom/google/googlenav/friend/bq;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/bq;-><init>(Lcom/google/googlenav/friend/bk;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 375
    :cond_2f
    return-void
.end method

.method public declared-synchronized F_()V
    .registers 3

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/bk;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 382
    invoke-direct {p0}, Lcom/google/googlenav/friend/bk;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 383
    invoke-interface {v0}, Las/h;->F_()V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_13

    .line 381
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    .line 386
    :cond_26
    monitor-exit p0

    return-void
.end method

.method protected G_()V
    .registers 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->u()Lcom/google/googlenav/friend/d;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 150
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->u()Lcom/google/googlenav/friend/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/friend/d;->b()V

    .line 154
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    new-instance v1, Lcom/google/googlenav/friend/bm;

    invoke-direct {v1, p0}, Lcom/google/googlenav/friend/bm;-><init>(Lcom/google/googlenav/friend/bk;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 170
    return-void
.end method

.method public declared-synchronized L_()V
    .registers 4

    .prologue
    .line 317
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/friend/bo;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/bo;-><init>(Lcom/google/googlenav/friend/bk;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/friend/bk;->a(ZLjava/lang/String;Lcom/google/googlenav/friend/be;)V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    .line 350
    monitor-exit p0

    return-void

    .line 317
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized M_()V
    .registers 3

    .prologue
    .line 396
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/googlenav/friend/bk;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las/h;

    .line 397
    invoke-interface {v0}, Las/h;->M_()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 396
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    .line 399
    :cond_1c
    monitor-exit p0

    return-void
.end method

.method protected abstract a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)Lcom/google/googlenav/friend/bt;
.end method

.method public a(Las/h;)V
    .registers 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public a(ZLjava/lang/String;Lcom/google/googlenav/friend/be;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->p()I

    move-result v0

    .line 511
    :goto_6
    invoke-static {v0, p2, p3}, Lcom/google/googlenav/friend/bk;->a(ILjava/lang/String;Lcom/google/googlenav/friend/be;)V

    .line 512
    return-void

    .line 510
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b(Las/h;)V
    .registers 3
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 215
    return-void
.end method

.method public b_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 192
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-nez v0, :cond_e

    .line 196
    invoke-direct {p0}, Lcom/google/googlenav/friend/bk;->i()V

    .line 210
    :goto_d
    return-void

    .line 201
    :cond_e
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/bk;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/googlenav/friend/bk;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 205
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->s()V

    goto :goto_d

    .line 208
    :cond_1b
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/friend/bk;->b:Lcom/google/googlenav/android/Y;

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/googlenav/friend/bk;->a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)Lcom/google/googlenav/friend/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bt;->a()V

    goto :goto_d
.end method

.method protected abstract c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method protected abstract g()I
.end method

.method protected h()Ljava/util/List;
    .registers 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method protected p()I
    .registers 2

    .prologue
    .line 448
    const/4 v0, 0x1

    return v0
.end method

.method protected r()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected declared-synchronized s()V
    .registers 4

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->C_()V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/friend/bl;

    invoke-direct {v2, p0}, Lcom/google/googlenav/friend/bl;-><init>(Lcom/google/googlenav/friend/bk;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/friend/bk;->a(ZLjava/lang/String;Lcom/google/googlenav/friend/be;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 135
    monitor-exit p0

    return-void

    .line 126
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/googlenav/friend/bk;->f:Z

    return v0
.end method

.method protected u()Lcom/google/googlenav/friend/d;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/googlenav/friend/bk;->e:Lcom/google/googlenav/friend/d;

    return-object v0
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/bk;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected w()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->u()Lcom/google/googlenav/friend/d;

    move-result-object v1

    if-nez v1, :cond_8

    .line 577
    :cond_7
    :goto_7
    return v0

    .line 573
    :cond_8
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bk;->t()Z

    move-result v1

    if-nez v1, :cond_7

    .line 577
    const/4 v0, 0x1

    goto :goto_7
.end method
