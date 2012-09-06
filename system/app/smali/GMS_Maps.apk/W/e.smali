.class public Lw/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/maps/driveabout/vector/aV;


# instance fields
.field protected volatile a:Lcom/google/android/maps/driveabout/vector/aU;

.field private c:Lj/a;

.field private final d:Lr/aH;

.field private volatile e:Lj/e;

.field private final f:Lt/a;

.field private final g:Ljava/util/List;

.field private h:Lcom/google/android/maps/driveabout/vector/df;

.field private final i:Lt/f;

.field private j:I

.field private k:I

.field private final l:Lr/aI;

.field private m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final n:Ljava/util/Set;

.field private final o:Ljava/util/LinkedList;

.field private p:Ljava/util/Map;

.field private q:Ljava/util/Map;

.field private volatile r:I

.field private final s:Lw/a;

.field private t:Lw/d;

.field private final u:Lr/aF;

.field private final v:Lr/aF;

.field private final w:Lw/i;

.field private volatile x:J

.field private y:Lcom/google/googlenav/common/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ci;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/ci;-><init>()V

    sput-object v0, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lj/e;Lw/a;Lt/a;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lt/f;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lw/e;->i:Lt/f;

    .line 182
    iput v3, p0, Lw/e;->j:I

    .line 191
    iput v3, p0, Lw/e;->k:I

    .line 205
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lw/e;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 212
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lw/e;->n:Ljava/util/Set;

    .line 225
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lw/e;->p:Ljava/util/Map;

    .line 236
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lw/e;->q:Ljava/util/Map;

    .line 247
    iput v3, p0, Lw/e;->r:I

    .line 262
    new-instance v0, Lw/g;

    invoke-direct {v0, p0, v2}, Lw/g;-><init>(Lw/e;Lw/f;)V

    iput-object v0, p0, Lw/e;->u:Lr/aF;

    .line 265
    new-instance v0, Lw/h;

    invoke-direct {v0, p0, v2}, Lw/h;-><init>(Lw/e;Lw/f;)V

    iput-object v0, p0, Lw/e;->v:Lr/aF;

    .line 268
    new-instance v0, Lw/i;

    invoke-direct {v0, p0, v2}, Lw/i;-><init>(Lw/e;Lw/f;)V

    iput-object v0, p0, Lw/e;->w:Lw/i;

    .line 275
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, Lw/e;->y:Lcom/google/googlenav/common/a;

    .line 312
    iput-object p2, p0, Lw/e;->e:Lj/e;

    .line 313
    iput-object v2, p0, Lw/e;->c:Lj/a;

    .line 314
    iput-object p4, p0, Lw/e;->f:Lt/a;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/e;->g:Ljava/util/List;

    .line 316
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lw/e;->o:Ljava/util/LinkedList;

    .line 318
    invoke-static {p1}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 319
    invoke-static {p1}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    iput-object v0, p0, Lw/e;->d:Lr/aH;

    .line 320
    new-instance v0, Lw/f;

    invoke-direct {v0, p0}, Lw/f;-><init>(Lw/e;)V

    iput-object v0, p0, Lw/e;->l:Lr/aI;

    .line 347
    iget-object v0, p0, Lw/e;->d:Lr/aH;

    iget-object v1, p0, Lw/e;->l:Lr/aI;

    invoke-interface {v0, v1}, Lr/aH;->a(Lr/aI;)V

    .line 353
    :goto_7f
    iput-object p3, p0, Lw/e;->s:Lw/a;

    .line 354
    return-void

    .line 349
    :cond_82
    iput-object v2, p0, Lw/e;->d:Lr/aH;

    .line 350
    iput-object v2, p0, Lw/e;->l:Lr/aI;

    goto :goto_7f
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/dg;Lw/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 295
    new-instance v0, Lj/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lj/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;)V

    sget-object v1, Lt/a;->a:Lt/a;

    invoke-direct {p0, p1, v0, p2, v1}, Lw/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Lj/e;Lw/a;Lt/a;)V

    .line 297
    return-void
.end method

.method private a(Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 792
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lw/e;->a(Ln/am;ILn/al;Z)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    return-object v0
.end method

.method private a(Ln/am;ILn/al;Z)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 807
    iget-object v2, p0, Lw/e;->i:Lt/f;

    monitor-enter v2

    .line 810
    :try_start_4
    iget-object v1, p0, Lw/e;->i:Lt/f;

    invoke-virtual {v1, p1, p1}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 811
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_18

    .line 816
    iget-object v1, p0, Lw/e;->h:Lcom/google/android/maps/driveabout/vector/df;

    invoke-virtual {p1}, Ln/am;->j()Ln/av;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/df;->a(Ln/av;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 817
    const/4 v1, 0x0

    .line 857
    :cond_17
    :goto_17
    return-object v1

    .line 811
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    .line 822
    :cond_1b
    const/4 v3, 0x0

    .line 823
    iget-object v1, p0, Lw/e;->g:Ljava/util/List;

    if-eqz v1, :cond_6d

    iget-object v1, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    invoke-virtual {p1}, Ln/am;->j()Ln/av;

    move-result-object v1

    if-eqz v1, :cond_6d

    instance-of v1, p3, Ln/aF;

    if-eqz v1, :cond_6d

    .line 836
    iget-object v6, p0, Lw/e;->g:Ljava/util/List;

    monitor-enter v6

    .line 837
    :try_start_35
    iget-object v1, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, p3

    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr/aK;

    .line 838
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lr/aK;->a(Ln/am;Z)Ln/al;

    move-result-object v2

    .line 841
    if-eqz v2, :cond_5e

    .line 843
    move-object v0, p3

    check-cast v0, Ln/aF;

    move-object v1, v0

    check-cast v2, Ln/aF;

    invoke-static {v1, v2}, Ln/M;->a(Ln/aF;Ln/aF;)Ln/aF;

    move-result-object v1

    move-object v2, v1

    move v1, v3

    :goto_5b
    move v3, v1

    move-object v5, v2

    .line 849
    goto :goto_3c

    .line 845
    :cond_5e
    move-object v0, p3

    check-cast v0, Ln/aF;

    move-object v2, v0

    invoke-virtual {v1, p1, v2}, Lr/aK;->a(Ln/am;Ln/aF;)Z

    move-result v1

    if-eqz v1, :cond_7c

    move v1, v4

    move-object v2, v5

    .line 847
    goto :goto_5b

    .line 850
    :cond_6b
    monitor-exit v6
    :try_end_6c
    .catchall {:try_start_35 .. :try_end_6c} :catchall_79

    move-object p3, v5

    .line 853
    :cond_6d
    invoke-direct {p0, p1, p2, p3}, Lw/e;->b(Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    .line 854
    if-eqz v3, :cond_17

    .line 855
    const-wide/16 v2, 0xbb8

    invoke-interface {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/aV;->a(J)V

    goto :goto_17

    .line 850
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v6
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v1

    :cond_7c
    move v1, v3

    move-object v2, v5

    goto :goto_5b
.end method

.method static synthetic a(Lw/e;Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lw/e;->c(Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lw/e;Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lw/e;->a(Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lw/e;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->n:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic a(Lw/e;Lw/d;)Lw/d;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lw/e;->t:Lw/d;

    return-object p1
.end method

.method private a(Lj/e;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 641
    iget-object v0, p0, Lw/e;->c:Lj/a;

    if-eqz v0, :cond_d

    .line 642
    if-eqz p2, :cond_e

    .line 643
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v1, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v1, p1}, Lj/a;->b(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V

    .line 648
    :cond_d
    :goto_d
    return-void

    .line 645
    :cond_e
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v1, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, v1, p1}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V

    goto :goto_d
.end method

.method private a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;J)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1003
    if-eqz p2, :cond_11

    .line 1004
    sget-object v0, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-eq p2, v0, :cond_12

    move-object v2, p2

    .line 1005
    :goto_7
    invoke-virtual {p0}, Lw/e;->j()Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lw/e;->a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;ZJ)V

    .line 1007
    :cond_11
    return-void

    .line 1004
    :cond_12
    const/4 v2, 0x0

    goto :goto_7
.end method

.method private a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;ZJ)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1238
    iget-object v7, p0, Lw/e;->o:Ljava/util/LinkedList;

    monitor-enter v7

    .line 1239
    :try_start_4
    iget-object v1, p0, Lw/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 1240
    iget-object v0, p0, Lw/e;->o:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lw/j;->a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;ZJ)V

    .line 1252
    :cond_1d
    monitor-exit v7

    .line 1253
    return-void

    .line 1245
    :cond_1f
    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, p0, Lw/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1247
    iget-object v1, p0, Lw/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v6, v0

    .line 1248
    :goto_30
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_1d

    .line 1249
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw/j;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lw/j;->a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;ZJ)V

    .line 1248
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_30

    .line 1252
    :catchall_47
    move-exception v0

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private a(Ln/am;ZLr/aF;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 453
    iget-object v1, p0, Lw/e;->i:Lt/f;

    monitor-enter v1

    .line 455
    :try_start_3
    iget-object v0, p0, Lw/e;->i:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    .line 458
    iget-object v0, p0, Lw/e;->d:Lr/aH;

    if-eqz v0, :cond_14

    .line 459
    if-eqz p2, :cond_1b

    .line 460
    iget-object v0, p0, Lw/e;->d:Lr/aH;

    invoke-interface {v0, p1, p3}, Lr/aH;->c(Ln/am;Lr/aF;)V

    .line 465
    :cond_14
    :goto_14
    invoke-direct {p0, p1}, Lw/e;->d(Ln/am;)V

    .line 466
    return-void

    .line 456
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 462
    :cond_1b
    iget-object v0, p0, Lw/e;->d:Lr/aH;

    invoke-interface {v0, p1, p3}, Lr/aH;->a(Ln/am;Lr/aF;)V

    goto :goto_14
.end method

.method static synthetic a(Lw/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;J)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lw/e;->a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;J)V

    return-void
.end method

.method static synthetic a(Lw/e;Ln/am;ZLr/aF;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lw/e;->a(Ln/am;ZLr/aF;)V

    return-void
.end method

.method private a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 427
    if-eqz p2, :cond_b

    iget-object v1, p0, Lw/e;->y:Lcom/google/googlenav/common/a;

    invoke-interface {p2, v1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/googlenav/common/a;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 428
    :cond_b
    iget-object v1, p0, Lw/e;->p:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_20

    .line 430
    iget-object v1, p0, Lw/e;->u:Lr/aF;

    invoke-direct {p0, p1, v0, v1}, Lw/e;->a(Ln/am;ZLr/aF;)V

    .line 432
    :cond_20
    const/4 v0, 0x1

    .line 435
    :goto_21
    return v0

    .line 434
    :cond_22
    invoke-direct {p0, p1, p2}, Lw/e;->b(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)V

    goto :goto_21
.end method

.method static synthetic a(Lw/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lw/e;->a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)Z

    move-result v0

    return v0
.end method

.method private b(Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 866
    .line 871
    iget-object v2, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    .line 872
    if-eqz v2, :cond_2f

    .line 873
    if-nez p2, :cond_2f

    .line 874
    instance-of v0, p3, Ln/aF;

    if-eqz v0, :cond_24

    .line 875
    iget-object v0, p0, Lw/e;->f:Lt/a;

    invoke-static {p3, v0, v2}, Lcom/google/android/maps/driveabout/vector/ba;->a(Ln/al;Lt/a;Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/ba;

    move-result-object v0

    .line 886
    :goto_11
    if-nez v0, :cond_18

    .line 887
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2d

    .line 888
    sget-object v0, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    .line 896
    :cond_18
    iget-object v1, p0, Lw/e;->c:Lj/a;

    if-eqz v1, :cond_23

    .line 897
    iget-object v1, p0, Lw/e;->c:Lj/a;

    iget-object v3, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v1, v2, v3, p1, v0}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)V

    .line 899
    :cond_23
    :goto_23
    return-object v0

    .line 876
    :cond_24
    instance-of v0, p3, Ln/v;

    if-eqz v0, :cond_2f

    .line 877
    invoke-static {p3, v2}, Lcom/google/android/maps/driveabout/vector/ab;->a(Ln/al;Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/ab;

    move-result-object v0

    goto :goto_11

    :cond_2d
    move-object v0, v1

    .line 890
    goto :goto_23

    :cond_2f
    move-object v0, v1

    goto :goto_11
.end method

.method static synthetic b(Lw/e;Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lw/e;->c(Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lw/e;)Lj/e;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->e:Lj/e;

    return-object v0
.end method

.method private b(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 446
    return-void
.end method

.method private c(Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 6
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x1

    .line 393
    iget-object v1, p0, Lw/e;->c:Lj/a;

    iget-object v2, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v3, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v1, v2, v3, p1, v0}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Z)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    .line 397
    sget-object v1, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-eq v0, v1, :cond_1a

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lw/e;->y:Lcom/google/googlenav/common/a;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/aV;->b(Lcom/google/googlenav/common/a;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 398
    const/4 v0, 0x0

    .line 400
    :cond_1a
    return-object v0
.end method

.method private c(Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 910
    if-nez p3, :cond_5

    move-object v0, v1

    .line 972
    :goto_4
    return-object v0

    :cond_5
    move-object v0, p3

    .line 915
    check-cast v0, Ln/aF;

    invoke-virtual {v0}, Ln/aF;->r()I

    move-result v0

    if-nez v0, :cond_3b

    move-object v0, p3

    .line 916
    check-cast v0, Ln/aF;

    invoke-virtual {v0}, Ln/aF;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    move-object v0, v1

    .line 918
    goto :goto_4

    .line 923
    :cond_1d
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v2, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v3, p0, Lw/e;->e:Lj/e;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, p1, v4}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Z)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    .line 928
    if-eqz v0, :cond_3b

    sget-object v2, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-eq v0, v2, :cond_3b

    .line 929
    check-cast v0, Lcom/google/android/maps/driveabout/vector/ba;

    check-cast p3, Ln/aF;

    invoke-virtual {p3}, Ln/aF;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/ba;->b(J)V

    move-object v0, v1

    .line 930
    goto :goto_4

    .line 934
    :cond_3b
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 936
    iget-object v2, p0, Lw/e;->i:Lt/f;

    monitor-enter v2

    .line 937
    :try_start_44
    iget v0, p0, Lw/e;->k:I

    iget v3, p0, Lw/e;->j:I

    add-int/2addr v0, v3

    and-int/lit8 v0, v0, 0x7f

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_4f

    .line 945
    :cond_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_64

    .line 948
    :cond_50
    iget-object v2, p0, Lw/e;->i:Lt/f;

    monitor-enter v2

    .line 949
    :try_start_53
    iget-object v0, p0, Lw/e;->i:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_67

    .line 952
    iget v0, p0, Lw/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw/e;->k:I

    .line 953
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_7c

    move-object v0, v1

    goto :goto_4

    .line 945
    :catchall_64
    move-exception v0

    :try_start_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v0

    .line 955
    :cond_67
    :try_start_67
    iget v0, p0, Lw/e;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw/e;->j:I

    .line 956
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_7c

    .line 961
    const/4 v0, 0x1

    .line 962
    iget-object v2, p0, Lw/e;->d:Lr/aH;

    invoke-interface {v2, p1, v0}, Lr/aH;->a(Ln/am;Z)Ln/al;

    move-result-object v0

    .line 964
    if-eqz v0, :cond_7f

    .line 965
    invoke-direct {p0, p1, p2, v0}, Lw/e;->a(Ln/am;ILn/al;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    goto :goto_4

    .line 956
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0

    :cond_7f
    move-object v0, v1

    .line 972
    goto :goto_4
.end method

.method static synthetic c(Lw/e;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->p:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lw/e;)Lcom/google/googlenav/common/a;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->y:Lcom/google/googlenav/common/a;

    return-object v0
.end method

.method private d(Ln/am;)V
    .registers 7
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lw/e;->g:Ljava/util/List;

    if-eqz v0, :cond_3e

    sget-object v0, Lr/aP;->g:Ln/am;

    if-eq p1, v0, :cond_3e

    .line 476
    iget-object v2, p0, Lw/e;->g:Ljava/util/List;

    monitor-enter v2

    .line 481
    const/4 v0, 0x0

    .line 483
    :try_start_c
    iget-object v1, p0, Lw/e;->d:Lr/aH;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 484
    iget-object v0, p0, Lw/e;->d:Lr/aH;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lr/aH;->a(Ln/am;Z)Ln/al;

    move-result-object v0

    check-cast v0, Ln/aF;

    move-object v1, v0

    .line 486
    :goto_22
    iget-object v0, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aK;

    .line 487
    iget-object v4, p0, Lw/e;->w:Lw/i;

    invoke-virtual {v0, p1, v1, v4}, Lr/aK;->a(Ln/am;Ln/aF;Lr/aF;)V

    goto :goto_28

    .line 489
    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    :try_start_3d
    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3a

    .line 491
    :cond_3e
    return-void

    :cond_3f
    move-object v1, v0

    goto :goto_22
.end method

.method static synthetic e(Lw/e;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->q:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lw/e;)I
    .registers 3
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lw/e;->r:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lw/e;->r:I

    return v0
.end method

.method static synthetic g(Lw/e;)Lw/a;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->s:Lw/a;

    return-object v0
.end method

.method static synthetic h(Lw/e;)I
    .registers 3
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lw/e;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lw/e;->r:I

    return v0
.end method

.method static synthetic i(Lw/e;)Lr/aF;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->v:Lr/aF;

    return-object v0
.end method

.method static synthetic j(Lw/e;)Lw/d;
    .registers 2
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lw/e;->t:Lw/d;

    return-object v0
.end method

.method static synthetic l()Lcom/google/android/maps/driveabout/vector/aV;
    .registers 1

    .prologue
    .line 114
    sget-object v0, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    return-object v0
.end method

.method private final m()V
    .registers 5

    .prologue
    .line 1277
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lw/e;->x:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 1279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Operation must be called from renderer thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1281
    :cond_1c
    return-void
.end method


# virtual methods
.method public a(Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 363
    const/4 v2, 0x0

    .line 365
    iget-object v1, p0, Lw/e;->c:Lj/a;

    iget-object v3, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v4, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v1, v3, v4, p1, v2}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Z)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    .line 366
    sget-object v3, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-ne v1, v3, :cond_11

    .line 380
    :cond_10
    :goto_10
    return-object v0

    .line 368
    :cond_11
    if-eqz v1, :cond_1b

    iget-object v3, p0, Lw/e;->y:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v3}, Lcom/google/android/maps/driveabout/vector/aV;->b(Lcom/google/googlenav/common/a;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 370
    :cond_1b
    iget-object v1, p0, Lw/e;->c:Lj/a;

    iget-object v3, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v4, p0, Lw/e;->e:Lj/e;

    invoke-virtual {p1}, Ln/am;->a()Ln/am;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5, v2}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ln/am;Z)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v1

    .line 371
    sget-object v2, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-eq v1, v2, :cond_10

    .line 373
    if-eqz v1, :cond_37

    iget-object v2, p0, Lw/e;->y:Lcom/google/googlenav/common/a;

    invoke-interface {v1, v2}, Lcom/google/android/maps/driveabout/vector/aV;->b(Lcom/google/googlenav/common/a;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 374
    :cond_37
    iget-object v1, p0, Lw/e;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_10

    :cond_3d
    move-object v0, v1

    .line 377
    goto :goto_10

    :cond_3f
    move-object v0, v1

    .line 380
    goto :goto_10
.end method

.method public a()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lw/e;->d:Lr/aH;

    invoke-interface {v0}, Lr/aH;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 1284
    iput-wide p1, p0, Lw/e;->x:J

    .line 1285
    iget-object v0, p0, Lw/e;->c:Lj/a;

    if-eqz v0, :cond_b

    .line 1286
    iget-object v0, p0, Lw/e;->c:Lj/a;

    invoke-virtual {v0, p1, p2}, Lj/a;->a(J)V

    .line 1288
    :cond_b
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 613
    const-string v0, "GLState should not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iput-object p1, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    .line 615
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    invoke-static {v0}, Lj/a;->a(Lcom/google/googlenav/common/a;)V

    .line 616
    invoke-static {}, Lj/a;->a()Lj/a;

    move-result-object v0

    iput-object v0, p0, Lw/e;->c:Lj/a;

    .line 617
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cY;Ln/Q;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-direct {p0}, Lw/e;->m()V

    .line 546
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v1, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v2, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v0, v1, v2}, Lj/a;->e(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V

    .line 548
    iget-object v7, p0, Lw/e;->s:Lw/a;

    monitor-enter v7

    .line 552
    :try_start_f
    iget-object v0, p0, Lw/e;->s:Lw/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lw/a;->a(Lcom/google/android/maps/driveabout/vector/cY;Ln/Q;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 558
    iget-object v0, p0, Lw/e;->s:Lw/a;

    invoke-virtual {v0}, Lw/a;->b()Lw/d;

    move-result-object v0

    .line 560
    iget-object v1, p0, Lw/e;->t:Lw/d;

    if-nez v1, :cond_2d

    .line 562
    iget-object v1, v0, Lw/d;->a:Ln/am;

    iget-boolean v2, v0, Lw/d;->b:Z

    iget-object v3, p0, Lw/e;->v:Lr/aF;

    invoke-direct {p0, v1, v2, v3}, Lw/e;->a(Ln/am;ZLr/aF;)V

    .line 564
    :cond_2d
    iput-object v0, p0, Lw/e;->t:Lw/d;

    .line 565
    monitor-exit v7

    .line 566
    return-void

    .line 565
    :catchall_31
    move-exception v0

    monitor-exit v7
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/df;)V
    .registers 2
    .parameter

    .prologue
    .line 1297
    iput-object p1, p0, Lw/e;->h:Lcom/google/android/maps/driveabout/vector/df;

    .line 1298
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 6
    .parameter

    .prologue
    .line 716
    iget-object v0, p0, Lw/e;->d:Lr/aH;

    instance-of v0, v0, Lr/aP;

    if-nez v0, :cond_2b

    .line 717
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Modifiers not supported on store \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lw/e;->d:Lr/aH;

    invoke-interface {v2}, Lr/aH;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_2b
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/dg;->w:Z

    if-nez v0, :cond_48

    .line 721
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only modifiers may be added, not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_48
    invoke-static {p1}, Lr/aJ;->b(Lcom/google/android/maps/driveabout/vector/dg;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 724
    invoke-static {p1}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    .line 725
    instance-of v1, v0, Lr/aK;

    if-nez v1, :cond_79

    .line 726
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modifier store \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lr/aH;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' must be a vector modifier store"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :cond_79
    iget-object v1, p0, Lw/e;->g:Ljava/util/List;

    monitor-enter v1

    .line 730
    :try_start_7c
    iget-object v2, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 731
    monitor-exit v1

    .line 754
    :goto_85
    return-void

    .line 733
    :cond_86
    iget-object v2, p0, Lw/e;->l:Lr/aI;

    invoke-interface {v0, v2}, Lr/aH;->a(Lr/aI;)V

    .line 734
    iget-object v2, p0, Lw/e;->g:Ljava/util/List;

    check-cast v0, Lr/aK;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_7c .. :try_end_93} :catchall_b8

    .line 739
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 740
    iget-object v2, p0, Lw/e;->g:Ljava/util/List;

    monitor-enter v2

    .line 741
    :try_start_9b
    iget-object v0, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aK;

    .line 742
    invoke-virtual {v0}, Lr/aK;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_a1

    .line 744
    :catchall_b5
    move-exception v0

    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_9b .. :try_end_b7} :catchall_b5

    throw v0

    .line 735
    :catchall_b8
    move-exception v0

    :try_start_b9
    monitor-exit v1
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v0

    .line 737
    :cond_bb
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tile store "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_d4
    :try_start_d4
    monitor-exit v2
    :try_end_d5
    .catchall {:try_start_d4 .. :try_end_d5} :catchall_b5

    .line 749
    iget-object v2, p0, Lw/e;->n:Ljava/util/Set;

    monitor-enter v2

    .line 750
    :try_start_d8
    iget-object v0, p0, Lw/e;->n:Ljava/util/Set;

    iget-object v3, p0, Lw/e;->e:Lj/e;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_d8 .. :try_end_e0} :catchall_f0

    .line 752
    new-instance v0, Lj/e;

    iget-object v2, p0, Lw/e;->d:Lr/aH;

    invoke-interface {v2}, Lr/aH;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v2

    iget-object v3, p0, Lw/e;->f:Lt/a;

    invoke-direct {v0, v2, v1, v3}, Lj/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;Lt/a;)V

    iput-object v0, p0, Lw/e;->e:Lj/e;

    goto :goto_85

    .line 751
    :catchall_f0
    move-exception v0

    :try_start_f1
    monitor-exit v2
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 583
    invoke-direct {p0}, Lw/e;->m()V

    .line 584
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 585
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 586
    sget-object v3, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-eq v0, v3, :cond_f

    .line 587
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 590
    :cond_27
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v2, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v3, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v0, v2, v3, v1}, Lj/a;->a(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ljava/util/List;)V

    .line 591
    return-void
.end method

.method public a(Lw/j;)V
    .registers 4
    .parameter

    .prologue
    .line 1214
    iget-object v1, p0, Lw/e;->o:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1215
    :try_start_3
    iget-object v0, p0, Lw/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1216
    iget-object v0, p0, Lw/e;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1217
    monitor-exit v1

    .line 1218
    return-void

    .line 1217
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 629
    iget-object v0, p0, Lw/e;->e:Lj/e;

    invoke-direct {p0, v0, p1}, Lw/e;->a(Lj/e;Z)V

    .line 630
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lw/e;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public b(Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;
    .registers 4
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lw/e;->c(Ln/am;)Lcom/google/android/maps/driveabout/vector/aV;

    move-result-object v0

    .line 412
    sget-object v1, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-ne v0, v1, :cond_a

    .line 413
    const/4 v0, 0x0

    .line 418
    :cond_9
    :goto_9
    return-object v0

    .line 415
    :cond_a
    invoke-direct {p0, p1, v0}, Lw/e;->a(Ln/am;Lcom/google/android/maps/driveabout/vector/aV;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 416
    iget-object v1, p0, Lw/e;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_9
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 6
    .parameter

    .prologue
    .line 762
    invoke-static {p1}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    .line 763
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 764
    iget-object v2, p0, Lw/e;->g:Ljava/util/List;

    monitor-enter v2

    .line 765
    :try_start_c
    iget-object v3, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 767
    monitor-exit v2

    .line 783
    :goto_15
    return-void

    .line 769
    :cond_16
    iget-object v3, p0, Lw/e;->l:Lr/aI;

    invoke-interface {v0, v3}, Lr/aH;->b(Lr/aI;)V

    .line 770
    iget-object v0, p0, Lw/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/aK;

    .line 771
    invoke-virtual {v0}, Lr/aP;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 773
    :catchall_35
    move-exception v0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_35

    throw v0

    :cond_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 778
    iget-object v2, p0, Lw/e;->n:Ljava/util/Set;

    monitor-enter v2

    .line 779
    :try_start_3c
    iget-object v0, p0, Lw/e;->n:Ljava/util/Set;

    iget-object v3, p0, Lw/e;->e:Lj/e;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_54

    .line 781
    new-instance v0, Lj/e;

    iget-object v2, p0, Lw/e;->d:Lr/aH;

    invoke-interface {v2}, Lr/aH;->b()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v2

    iget-object v3, p0, Lw/e;->f:Lt/a;

    invoke-direct {v0, v2, v1, v3}, Lj/e;-><init>(Lcom/google/android/maps/driveabout/vector/dg;Ljava/util/Set;Lt/a;)V

    iput-object v0, p0, Lw/e;->e:Lj/e;

    goto :goto_15

    .line 780
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public b(Ljava/util/List;)V
    .registers 6
    .parameter

    .prologue
    .line 598
    invoke-direct {p0}, Lw/e;->m()V

    .line 599
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 600
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 601
    sget-object v3, Lw/e;->b:Lcom/google/android/maps/driveabout/vector/aV;

    if-eq v0, v3, :cond_f

    .line 602
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->b()Ln/am;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 605
    :cond_27
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v2, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v3, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v0, v2, v3, v1}, Lj/a;->b(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;Ljava/util/List;)V

    .line 606
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 655
    iget-object v0, p0, Lw/e;->c:Lj/a;

    if-eqz v0, :cond_9

    .line 656
    iget-object v0, p0, Lw/e;->c:Lj/a;

    invoke-virtual {v0, p1}, Lj/a;->a(Z)V

    .line 658
    :cond_9
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 512
    invoke-direct {p0}, Lw/e;->m()V

    .line 513
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v1, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v2, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v0, v1, v2}, Lj/a;->e(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V

    .line 514
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 521
    invoke-direct {p0}, Lw/e;->m()V

    .line 522
    sget-boolean v0, Lcom/google/googlenav/android/E;->a:Z

    if-eqz v0, :cond_10

    .line 525
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v1, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v2, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v0, v1, v2}, Lj/a;->d(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V

    .line 527
    :cond_10
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 573
    invoke-direct {p0}, Lw/e;->m()V

    .line 574
    iget-object v0, p0, Lw/e;->s:Lw/a;

    invoke-virtual {v0}, Lw/a;->a()V

    .line 575
    return-void
.end method

.method public f()Lj/e;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lw/e;->e:Lj/e;

    return-object v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 665
    invoke-direct {p0}, Lw/e;->m()V

    .line 666
    iget-object v0, p0, Lw/e;->c:Lj/a;

    if-eqz v0, :cond_c

    .line 667
    iget-object v0, p0, Lw/e;->c:Lj/a;

    invoke-virtual {v0}, Lj/a;->b()V

    .line 669
    :cond_c
    return-void
.end method

.method public h()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 679
    iget-object v1, p0, Lw/e;->n:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 682
    iget-object v1, p0, Lw/e;->n:Ljava/util/Set;

    monitor-enter v1

    .line 684
    const/4 v2, 0x0

    .line 685
    :try_start_d
    iget-object v0, p0, Lw/e;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/e;

    .line 686
    invoke-direct {p0, v0, v2}, Lw/e;->a(Lj/e;Z)V

    goto :goto_13

    .line 689
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_23

    throw v0

    .line 688
    :cond_26
    :try_start_26
    iget-object v0, p0, Lw/e;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 689
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 690
    const/4 v0, 0x1

    .line 692
    :cond_2d
    return v0
.end method

.method public i()V
    .registers 4

    .prologue
    .line 702
    iget-object v0, p0, Lw/e;->c:Lj/a;

    if-eqz v0, :cond_10

    .line 703
    iget-object v0, p0, Lw/e;->c:Lj/a;

    iget-object v1, p0, Lw/e;->a:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v2, p0, Lw/e;->e:Lj/e;

    invoke-virtual {v0, v1, v2}, Lj/a;->c(Lcom/google/android/maps/driveabout/vector/aU;Lj/e;)V

    .line 704
    invoke-virtual {p0}, Lw/e;->h()Z

    .line 706
    :cond_10
    return-void
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 1257
    iget-object v0, p0, Lw/e;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lw/e;->r:I

    if-nez v0, :cond_18

    iget-object v0, p0, Lw/e;->s:Lw/a;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lw/e;->s:Lw/a;

    invoke-virtual {v0}, Lw/a;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public k()Lcom/google/googlenav/common/a;
    .registers 2

    .prologue
    .line 1269
    iget-object v0, p0, Lw/e;->y:Lcom/google/googlenav/common/a;

    return-object v0
.end method
