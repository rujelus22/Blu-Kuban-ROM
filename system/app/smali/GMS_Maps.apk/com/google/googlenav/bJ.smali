.class public Lcom/google/googlenav/bj;
.super Lcom/google/googlenav/friend/bk;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static e:Lcom/google/googlenav/bj;

.field private static final i:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final f:Ljava/util/concurrent/Future;

.field private volatile g:Ljava/util/concurrent/Future;

.field private volatile h:Lcom/google/googlenav/br;

.field private j:Lcom/google/googlenav/bo;

.field private final k:Lcom/google/googlenav/J;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/google/googlenav/bj;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/bj;->a:Z

    .line 74
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/bj;->i:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 47
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lcom/google/googlenav/friend/d;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/friend/bk;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/d;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bj;->j:Lcom/google/googlenav/bo;

    .line 82
    iput-object p3, p0, Lcom/google/googlenav/bj;->k:Lcom/google/googlenav/J;

    .line 86
    sget-object v0, Lcom/google/googlenav/bj;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/googlenav/bk;

    invoke-direct {v1, p0}, Lcom/google/googlenav/bk;-><init>(Lcom/google/googlenav/bj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bj;->f:Ljava/util/concurrent/Future;

    .line 92
    return-void
.end method

.method public static declared-synchronized a()Lcom/google/googlenav/bj;
    .registers 2

    .prologue
    .line 121
    const-class v0, Lcom/google/googlenav/bj;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/googlenav/bj;->e:Lcom/google/googlenav/bj;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/bj;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const-class v1, Lcom/google/googlenav/bj;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/googlenav/bj;

    new-instance v2, Lcom/google/googlenav/friend/e;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/googlenav/friend/e;-><init>(I)V

    invoke-direct {v0, p0, p1, p2, v2}, Lcom/google/googlenav/bj;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;Lcom/google/googlenav/friend/d;)V

    sput-object v0, Lcom/google/googlenav/bj;->e:Lcom/google/googlenav/bj;

    .line 101
    sget-object v0, Lcom/google/googlenav/bj;->e:Lcom/google/googlenav/bj;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/br;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/bj;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/googlenav/bj;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    if-nez v0, :cond_5

    .line 218
    :goto_4
    return-void

    .line 216
    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/br;->a(Z)V

    .line 217
    invoke-direct {p0}, Lcom/google/googlenav/bj;->k()V

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/googlenav/bj;)Lcom/google/googlenav/bo;
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/googlenav/bj;->m()Lcom/google/googlenav/bo;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b()Z
    .registers 2

    .prologue
    .line 125
    const-class v1, Lcom/google/googlenav/bj;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/bj;->e:Lcom/google/googlenav/bj;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/google/googlenav/bj;)V
    .registers 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/googlenav/bj;->s()V

    return-void
.end method

.method public static e()Lcom/google/googlenav/br;
    .registers 1

    .prologue
    .line 260
    invoke-static {}, Lcom/google/googlenav/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/google/googlenav/bj;->a()Lcom/google/googlenav/bj;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/googlenav/bj;->l()Lcom/google/googlenav/br;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 397
    invoke-static {}, Lcom/google/googlenav/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 398
    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_32

    iget-object v1, v0, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 401
    iget-object v0, v0, Lcom/google/googlenav/br;->c:Ljava/lang/String;

    .line 403
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 411
    :cond_31
    :goto_31
    return-object v0

    :cond_32
    const-string v0, ""

    goto :goto_31
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 421
    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 424
    iget-object v0, v0, Lcom/google/googlenav/br;->b:Ljava/lang/String;

    .line 427
    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method private k()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    if-eqz v0, :cond_11

    .line 223
    sget-object v0, Lcom/google/googlenav/bj;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/googlenav/bm;

    invoke-direct {v1, p0}, Lcom/google/googlenav/bm;-><init>(Lcom/google/googlenav/bj;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bj;->g:Ljava/util/concurrent/Future;

    .line 231
    :cond_11
    return-void
.end method

.method private l()Lcom/google/googlenav/br;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    if-eqz v0, :cond_7

    .line 269
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    .line 278
    :goto_6
    return-object v0

    .line 272
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/google/googlenav/bj;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/br;

    iput-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    .line 273
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_6

    .line 274
    :catch_14
    move-exception v0

    .line 278
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private m()Lcom/google/googlenav/bo;
    .registers 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/googlenav/bj;->j:Lcom/google/googlenav/bo;

    return-object v0
.end method


# virtual methods
.method public B_()V
    .registers 8

    .prologue
    const/16 v3, 0x419

    .line 132
    sget-boolean v0, Lcom/google/googlenav/bj;->a:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/googlenav/bj;->j:Lcom/google/googlenav/bo;

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 133
    :cond_10
    invoke-virtual {p0}, Lcom/google/googlenav/bj;->r()Z

    move-result v0

    if-nez v0, :cond_17

    .line 179
    :goto_16
    return-void

    .line 137
    :cond_17
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-nez v0, :cond_44

    .line 140
    const-string v0, ""

    .line 141
    sget-object v1, Lcom/google/googlenav/bn;->a:[I

    iget-object v2, p0, Lcom/google/googlenav/bj;->j:Lcom/google/googlenav/bo;

    invoke-virtual {v2}, Lcom/google/googlenav/bo;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    .line 153
    :goto_30
    iget-object v1, p0, Lcom/google/googlenav/bj;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    goto :goto_16

    .line 143
    :pswitch_3a
    const/16 v0, 0x410

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 148
    :pswitch_41
    const-string v0, ""

    goto :goto_30

    .line 158
    :cond_44
    new-instance v2, Lcom/google/googlenav/bl;

    invoke-direct {v2, p0}, Lcom/google/googlenav/bl;-><init>(Lcom/google/googlenav/bj;)V

    .line 175
    iget-object v0, p0, Lcom/google/googlenav/bj;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/wizard/z;->a:Lcom/google/googlenav/ui/wizard/A;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Lac/d;Lcom/google/googlenav/ui/wizard/A;JZ)V

    .line 177
    invoke-virtual {p0}, Lcom/google/googlenav/bj;->D_()V

    goto :goto_16

    .line 141
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_41
        :pswitch_41
    .end packed-switch
.end method

.method public declared-synchronized L_()V
    .registers 2

    .prologue
    .line 313
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/googlenav/bj;->a_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;

    .line 314
    invoke-super {p0}, Lcom/google/googlenav/friend/bk;->L_()V

    .line 315
    invoke-static {}, Lcom/google/googlenav/aC;->a()Lcom/google/googlenav/aC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aC;->b()V

    .line 316
    invoke-static {}, Las/j;->a()Las/j;

    move-result-object v0

    invoke-virtual {v0}, Las/j;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 317
    iget-object v0, p0, Lcom/google/googlenav/bj;->k:Lcom/google/googlenav/J;

    check-cast v0, Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ak()LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->f()V
    :try_end_24
    .catchall {:try_start_2 .. :try_end_24} :catchall_26

    .line 319
    :cond_24
    monitor-exit p0

    return-void

    .line 313
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)Lcom/google/googlenav/friend/bt;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 324
    new-instance v0, Lcom/google/googlenav/bp;

    invoke-static {}, Lcom/google/googlenav/bj;->e()Lcom/google/googlenav/br;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/bp;-><init>(Lcom/google/googlenav/bj;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;Lcom/google/googlenav/br;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bo;)V
    .registers 2
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/googlenav/bj;->j:Lcom/google/googlenav/bo;

    .line 189
    invoke-virtual {p0}, Lcom/google/googlenav/bj;->B_()V

    .line 190
    return-void
.end method

.method public a_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;
    .registers 3
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/googlenav/br;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    .line 202
    invoke-direct {p0}, Lcom/google/googlenav/bj;->k()V

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/bj;->h:Lcom/google/googlenav/br;

    return-object v0
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 289
    invoke-super {p0, p1}, Lcom/google/googlenav/friend/bk;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/google/googlenav/bj;->a_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;

    .line 291
    return-void
.end method

.method protected c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 3
    .parameter

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/google/googlenav/bj;->a_(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/br;

    move-result-object v0

    .line 301
    if-nez v0, :cond_8

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_7
    return v0

    :cond_8
    iget-boolean v0, v0, Lcom/google/googlenav/br;->j:Z

    goto :goto_7
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    const-string v0, "SPICY_TERMS_ACCEPTED_2"

    return-object v0
.end method

.method protected g()I
    .registers 2

    .prologue
    .line 330
    const/4 v0, 0x6

    return v0
.end method

.method public h()Ljava/util/List;
    .registers 4

    .prologue
    .line 335
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
