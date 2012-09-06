.class public Lcom/google/googlenav/intersectionexplorer/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Lr/ao;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private c:Lcom/google/googlenav/intersectionexplorer/c;

.field private d:Ljava/util/TreeSet;

.field private final e:Ljava/util/Set;

.field private f:Ln/aa;

.field private final g:Lcom/google/googlenav/intersectionexplorer/m;

.field private final h:Ljava/lang/Object;

.field private final i:Lcom/google/googlenav/intersectionexplorer/p;

.field private j:Z

.field private volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/intersectionexplorer/k;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/googlenav/intersectionexplorer/m;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/intersectionexplorer/m;-><init>(Lcom/google/googlenav/intersectionexplorer/k;Lcom/google/googlenav/intersectionexplorer/l;)V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->g:Lcom/google/googlenav/intersectionexplorer/m;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    .line 110
    iput-boolean v2, p0, Lcom/google/googlenav/intersectionexplorer/k;->j:Z

    .line 144
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->e:Ljava/util/Set;

    .line 145
    iput-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    .line 146
    invoke-static {}, Lcom/google/common/collect/dm;->c()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    .line 147
    iput-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    .line 148
    new-instance v0, Lcom/google/googlenav/intersectionexplorer/p;

    const-string v1, "Graph Loader"

    invoke-direct {v0, v1}, Lcom/google/googlenav/intersectionexplorer/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->i:Lcom/google/googlenav/intersectionexplorer/p;

    .line 149
    sput-boolean v2, Lcom/google/googlenav/intersectionexplorer/k;->a:Z

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/intersectionexplorer/k;Lcom/google/googlenav/intersectionexplorer/c;)Lcom/google/googlenav/intersectionexplorer/c;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    return-object p1
.end method

.method static synthetic a(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/intersectionexplorer/k;Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    return-object p1
.end method

.method static a(Ljava/util/TreeSet;)Ljava/util/TreeSet;
    .registers 6
    .parameter

    .prologue
    .line 584
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 585
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 589
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->d()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 595
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->b(Lcom/google/googlenav/intersectionexplorer/c;)Z

    goto :goto_4

    .line 597
    :cond_2e
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->f()Z

    goto :goto_4

    .line 602
    :cond_32
    invoke-static {}, Lcom/google/common/collect/dm;->c()Ljava/util/TreeSet;

    move-result-object v2

    .line 603
    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 604
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->a()Z

    move-result v1

    if-nez v1, :cond_50

    .line 605
    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 607
    :cond_50
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/intersectionexplorer/c;

    .line 608
    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->e(Lcom/google/googlenav/intersectionexplorer/c;)V

    goto :goto_58

    .line 613
    :cond_68
    return-object v2
.end method

.method static synthetic a(Lcom/google/googlenav/intersectionexplorer/k;Ln/aa;)Ln/aa;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    return-object p1
.end method

.method static synthetic a(Lr/ao;)Lr/ao;
    .registers 1
    .parameter

    .prologue
    .line 38
    sput-object p0, Lcom/google/googlenav/intersectionexplorer/k;->b:Lr/ao;

    return-object p0
.end method

.method static synthetic a(Lcom/google/googlenav/intersectionexplorer/k;Ln/Q;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/googlenav/intersectionexplorer/k;->c(Ln/Q;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/intersectionexplorer/k;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/googlenav/intersectionexplorer/k;->j:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .registers 1
    .parameter

    .prologue
    .line 38
    sput-boolean p0, Lcom/google/googlenav/intersectionexplorer/k;->a:Z

    return p0
.end method

.method static synthetic b(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/util/TreeSet;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/intersectionexplorer/k;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/googlenav/intersectionexplorer/k;->l:Z

    return p1
.end method

.method static synthetic c(Lcom/google/googlenav/intersectionexplorer/k;)Lcom/google/googlenav/intersectionexplorer/c;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    return-object v0
.end method

.method private c(Ln/Q;)V
    .registers 5
    .parameter

    .prologue
    .line 289
    invoke-virtual {p0, p1}, Lcom/google/googlenav/intersectionexplorer/k;->b(Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 306
    :goto_6
    return-void

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_a
    iget-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->j:Z

    if-nez v0, :cond_20

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->j:Z

    .line 297
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->g:Lcom/google/googlenav/intersectionexplorer/m;

    iput-object p1, v0, Lcom/google/googlenav/intersectionexplorer/m;->a:Ln/Q;

    .line 298
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->i:Lcom/google/googlenav/intersectionexplorer/p;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/p;->a()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/k;->g:Lcom/google/googlenav/intersectionexplorer/m;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_a .. :try_end_21} :catchall_25

    .line 305
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/k;->h()V

    goto :goto_6

    .line 302
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method static synthetic d(Lcom/google/googlenav/intersectionexplorer/k;)Ln/aa;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/intersectionexplorer/k;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->e:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/k;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g()Lr/ao;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/k;->b:Lr/ao;

    return-object v0
.end method

.method private h()V
    .registers 3

    .prologue
    .line 312
    sget-object v1, Lcom/google/googlenav/intersectionexplorer/k;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_3
    sget-boolean v0, Lcom/google/googlenav/intersectionexplorer/k;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v0, :cond_c

    .line 316
    :try_start_7
    sget-object v0, Lcom/google/googlenav/intersectionexplorer/k;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_14

    .line 321
    :cond_c
    :goto_c
    const/4 v0, 0x0

    :try_start_d
    sput-boolean v0, Lcom/google/googlenav/intersectionexplorer/k;->a:Z

    .line 323
    monitor-exit v1

    .line 324
    return-void

    .line 323
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v0

    .line 317
    :catch_14
    move-exception v0

    goto :goto_c
.end method


# virtual methods
.method public a(D)Lcom/google/googlenav/intersectionexplorer/c;
    .registers 5
    .parameter

    .prologue
    .line 720
    const-wide v0, 0x3fd921fb54442d18L

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/googlenav/intersectionexplorer/k;->b(DD)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Set;Ln/Q;)Lcom/google/googlenav/intersectionexplorer/c;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 657
    const/4 v5, 0x0

    .line 658
    const-wide v3, 0x7fefffffffffffffL

    .line 659
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 660
    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v1

    invoke-virtual {v1, p2}, Ln/Q;->c(Ln/Q;)F

    move-result v1

    float-to-double v1, v1

    .line 661
    cmpg-double v7, v1, v3

    if-gez v7, :cond_2a

    move-wide v8, v1

    move-object v2, v0

    move-wide v0, v8

    :goto_26
    move-wide v3, v0

    move-object v5, v2

    .line 665
    goto :goto_a

    .line 666
    :cond_29
    return-object v5

    :cond_2a
    move-wide v0, v3

    move-object v2, v5

    goto :goto_26
.end method

.method a(Ljava/util/Set;Ln/Q;Z)Lcom/google/googlenav/intersectionexplorer/c;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 626
    if-nez p1, :cond_4

    .line 645
    :cond_3
    :goto_3
    return-object v0

    .line 630
    :cond_4
    const-wide/high16 v1, 0x4000

    invoke-virtual {p2}, Ln/Q;->e()D

    move-result-wide v3

    mul-double v2, v1, v3

    .line 632
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v1

    .line 635
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v4

    invoke-virtual {v4, p2}, Ln/Q;->c(Ln/Q;)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v2, v4, v2

    if-lez v2, :cond_2c

    .line 641
    :goto_1f
    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    .line 642
    new-instance v0, Lcom/google/googlenav/intersectionexplorer/c;

    invoke-direct {v0, p2}, Lcom/google/googlenav/intersectionexplorer/c;-><init>(Ln/Q;)V

    .line 643
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2c
    move-object v0, v1

    goto :goto_1f
.end method

.method public a(Lcom/google/googlenav/intersectionexplorer/c;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 246
    if-eqz p1, :cond_32

    .line 247
    invoke-virtual {p1}, Lcom/google/googlenav/intersectionexplorer/c;->b()Ln/Q;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/intersectionexplorer/k;->c(Ln/Q;)V

    .line 248
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 249
    :try_start_c
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->c(Lcom/google/googlenav/intersectionexplorer/c;)Ljava/lang/String;

    move-result-object v1

    .line 250
    iput-object p1, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    .line 251
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/o;

    .line 252
    iget-object v4, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-interface {v0, v4}, Lcom/google/googlenav/intersectionexplorer/o;->b(Lcom/google/googlenav/intersectionexplorer/c;)V

    goto :goto_1a

    .line 255
    :catchall_2c
    move-exception v0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_2c

    throw v0

    .line 254
    :cond_2f
    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    move-object v0, v1

    .line 257
    :goto_31
    return-object v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public a(DD)Ln/ac;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 677
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 678
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/googlenav/intersectionexplorer/k;->b(DD)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    .line 679
    if-eqz v0, :cond_11

    .line 680
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/intersectionexplorer/c;->f(Lcom/google/googlenav/intersectionexplorer/c;)Ln/ac;

    move-result-object v0

    monitor-exit v1

    .line 682
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_10

    .line 684
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Lcom/google/googlenav/intersectionexplorer/o;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    if-nez p1, :cond_3

    .line 176
    :goto_2
    return-void

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public a(Ln/Q;)V
    .registers 4
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->l:Z

    .line 200
    invoke-direct {p0}, Lcom/google/googlenav/intersectionexplorer/k;->h()V

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/googlenav/intersectionexplorer/k;->b(Ln/Q;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 204
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_f
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    invoke-virtual {p0, v0, p1}, Lcom/google/googlenav/intersectionexplorer/k;->a(Ljava/util/Set;Ln/Q;)Lcom/google/googlenav/intersectionexplorer/c;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1a

    .line 207
    invoke-virtual {p0, v0}, Lcom/google/googlenav/intersectionexplorer/k;->a(Lcom/google/googlenav/intersectionexplorer/c;)Ljava/lang/String;

    .line 212
    :cond_1a
    monitor-exit v1

    .line 237
    :goto_1b
    return-void

    .line 212
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1c

    throw v0

    .line 217
    :cond_1f
    invoke-virtual {p0}, Lcom/google/googlenav/intersectionexplorer/k;->d()V

    .line 219
    sget-object v1, Lcom/google/googlenav/intersectionexplorer/k;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 220
    const/4 v0, 0x1

    :try_start_26
    sput-boolean v0, Lcom/google/googlenav/intersectionexplorer/k;->a:Z

    .line 221
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_3c

    .line 223
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    const/4 v0, 0x0

    :try_start_2d
    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    .line 226
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3f

    .line 228
    new-instance v0, Lcom/google/googlenav/intersectionexplorer/l;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/intersectionexplorer/l;-><init>(Lcom/google/googlenav/intersectionexplorer/k;Ln/Q;)V

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/l;->start()V

    goto :goto_1b

    .line 221
    :catchall_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v0

    .line 226
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->l:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_10
    monitor-exit v1

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_10

    .line 158
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public b()Lcom/google/googlenav/intersectionexplorer/c;
    .registers 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    monitor-exit v1

    return-object v0

    .line 181
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public b(DD)Lcom/google/googlenav/intersectionexplorer/c;
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 695
    iget-object v6, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v6

    .line 696
    const/4 v5, 0x0

    .line 698
    :try_start_4
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v0}, Lcom/google/googlenav/intersectionexplorer/c;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v3, p3

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/intersectionexplorer/c;

    .line 699
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->c:Lcom/google/googlenav/intersectionexplorer/c;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/intersectionexplorer/c;->d(Lcom/google/googlenav/intersectionexplorer/c;)D

    move-result-wide v1

    .line 700
    invoke-static {p1, p2, v1, v2}, Lcom/google/googlenav/intersectionexplorer/c;->a(DD)D

    move-result-wide v1

    .line 701
    cmpg-double v8, v1, v3

    if-gez v8, :cond_34

    move-wide v9, v1

    move-object v2, v0

    move-wide v0, v9

    :goto_2c
    move-wide v3, v0

    move-object v5, v2

    .line 705
    goto :goto_f

    .line 706
    :cond_2f
    monitor-exit v6

    return-object v5

    .line 713
    :catchall_31
    move-exception v0

    monitor-exit v6
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_31

    throw v0

    :cond_34
    move-wide v0, v3

    move-object v2, v5

    goto :goto_2c
.end method

.method b(Ln/Q;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 265
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 266
    :try_start_4
    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 267
    :cond_14
    monitor-exit v1

    .line 277
    :goto_15
    return v0

    .line 271
    :cond_16
    const-wide/high16 v2, 0x4079

    invoke-virtual {p1}, Ln/Q;->e()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 272
    invoke-static {p1, v2}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Ln/aa;->d()Ln/Q;

    move-result-object v3

    .line 274
    invoke-virtual {v2}, Ln/aa;->e()Ln/Q;

    move-result-object v2

    .line 277
    iget-object v4, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    invoke-virtual {v4}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    invoke-virtual {v4}, Ln/Q;->f()I

    move-result v4

    invoke-virtual {v3}, Ln/Q;->f()I

    move-result v5

    if-gt v4, v5, :cond_6a

    iget-object v4, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    invoke-virtual {v4}, Ln/aa;->d()Ln/Q;

    move-result-object v4

    invoke-virtual {v4}, Ln/Q;->g()I

    move-result v4

    invoke-virtual {v3}, Ln/Q;->g()I

    move-result v3

    if-gt v4, v3, :cond_6a

    iget-object v3, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    invoke-virtual {v3}, Ln/aa;->e()Ln/Q;

    move-result-object v3

    invoke-virtual {v3}, Ln/Q;->f()I

    move-result v3

    invoke-virtual {v2}, Ln/Q;->f()I

    move-result v4

    if-lt v3, v4, :cond_6a

    iget-object v3, p0, Lcom/google/googlenav/intersectionexplorer/k;->f:Ln/aa;

    invoke-virtual {v3}, Ln/aa;->e()Ln/Q;

    move-result-object v3

    invoke-virtual {v3}, Ln/Q;->g()I

    move-result v3

    invoke-virtual {v2}, Ln/Q;->g()I

    move-result v2

    if-ge v3, v2, :cond_6f

    :cond_6a
    :goto_6a
    monitor-exit v1

    goto :goto_15

    .line 281
    :catchall_6c
    move-exception v0

    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_4 .. :try_end_6e} :catchall_6c

    throw v0

    .line 277
    :cond_6f
    const/4 v0, 0x0

    goto :goto_6a
.end method

.method public c()Ljava/util/Set;
    .registers 3

    .prologue
    .line 185
    iget-object v1, p0, Lcom/google/googlenav/intersectionexplorer/k;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    monitor-exit v1

    return-object v0

    .line 187
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->d:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 728
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/google/googlenav/intersectionexplorer/k;->l:Z

    return v0
.end method
