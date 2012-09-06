.class public Ll/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr/O;


# static fields
.field private static b:Ll/q;

.field private static final p:Ln/B;


# instance fields
.field private final a:Ljava/util/Map;

.field private final c:Lt/f;

.field private final d:Lt/f;

.field private e:Ln/p;

.field private f:Ln/B;

.field private g:Ln/w;

.field private final h:Ljava/util/Set;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/Set;

.field private final k:Ljava/lang/Object;

.field private final l:Lr/Q;

.field private final m:Ljava/util/Map;

.field private final n:Ljava/util/Map;

.field private final o:Ll/e;

.field private volatile q:Ln/B;

.field private volatile r:Ln/B;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, 0x0

    .line 228
    new-instance v0, Ln/B;

    new-instance v1, Ln/p;

    invoke-direct {v1, v2, v3, v2, v3}, Ln/p;-><init>(JJ)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln/B;-><init>(Ln/p;I)V

    sput-object v0, Ll/q;->p:Ln/B;

    return-void
.end method

.method constructor <init>(Lr/Q;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x64

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ll/q;->a:Ljava/util/Map;

    .line 181
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Ll/q;->h:Ljava/util/Set;

    .line 187
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Ll/q;->i:Ljava/util/List;

    .line 195
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Ll/q;->j:Ljava/util/Set;

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll/q;->k:Ljava/lang/Object;

    .line 212
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ll/q;->m:Ljava/util/Map;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ll/q;->n:Ljava/util/Map;

    .line 282
    new-instance v0, Lt/f;

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Ll/q;->c:Lt/f;

    .line 283
    new-instance v0, Lt/f;

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Ll/q;->d:Lt/f;

    .line 284
    iput-object p1, p0, Ll/q;->l:Lr/Q;

    .line 285
    new-instance v0, Ll/g;

    invoke-direct {v0}, Ll/g;-><init>()V

    iput-object v0, p0, Ll/q;->o:Ll/e;

    .line 286
    return-void
.end method

.method public static a()Ll/q;
    .registers 1

    .prologue
    .line 265
    sget-object v0, Ll/q;->b:Ll/q;

    return-object v0
.end method

.method public static a(Lr/Q;)Ll/q;
    .registers 2
    .parameter

    .prologue
    .line 252
    sget-object v0, Ll/q;->b:Ll/q;

    if-nez v0, :cond_b

    .line 253
    new-instance v0, Ll/q;

    invoke-direct {v0, p0}, Ll/q;-><init>(Lr/Q;)V

    sput-object v0, Ll/q;->b:Ll/q;

    .line 255
    :cond_b
    sget-object v0, Ll/q;->b:Ll/q;

    return-object v0
.end method

.method static synthetic a(Ll/q;Ln/w;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ll/q;->d(Ln/w;)V

    return-void
.end method

.method private a(Ln/p;Ln/B;Ln/B;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 790
    iget-object v2, p0, Ll/q;->c:Lt/f;

    monitor-enter v2

    .line 791
    :try_start_3
    iget-object v0, p0, Ll/q;->d:Lt/f;

    invoke-virtual {v0, p1, p3}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 792
    iget-object v0, p0, Ll/q;->l:Lr/Q;

    invoke-virtual {p3}, Ln/B;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr/Q;->c(Ln/p;)Ln/x;

    move-result-object v3

    .line 794
    if-nez v3, :cond_16

    .line 795
    monitor-exit v2

    .line 823
    :goto_15
    return-void

    .line 800
    :cond_16
    sget-object v0, Ll/q;->p:Ln/B;

    if-ne p2, v0, :cond_55

    .line 803
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    move-object v1, v0

    .line 812
    :goto_1f
    invoke-virtual {v3}, Ln/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/p;

    .line 813
    invoke-virtual {v0, p1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 816
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 817
    iget-object v4, p0, Ll/q;->d:Lt/f;

    iget-object v5, p0, Ll/q;->c:Lt/f;

    invoke-virtual {v5, v0}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 819
    iget-object v4, p0, Ll/q;->c:Lt/f;

    sget-object v5, Ll/q;->p:Ln/B;

    invoke-virtual {v4, v0, v5}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_27

    .line 822
    :catchall_52
    move-exception v0

    monitor-exit v2
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0

    .line 805
    :cond_55
    :try_start_55
    iget-object v0, p0, Ll/q;->l:Lr/Q;

    invoke-virtual {p2}, Ln/B;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr/Q;->c(Ln/p;)Ln/x;

    move-result-object v0

    .line 807
    if-nez v0, :cond_63

    .line 808
    monitor-exit v2

    goto :goto_15

    .line 810
    :cond_63
    invoke-virtual {v0}, Ln/x;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1f

    .line 822
    :cond_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_55 .. :try_end_6a} :catchall_52

    goto :goto_15
.end method

.method private a(Ln/p;Lr/O;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Ll/q;->l:Lr/Q;

    invoke-virtual {v0, p1}, Lr/Q;->b(Ln/p;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 388
    :goto_8
    return-void

    .line 387
    :cond_9
    iget-object v0, p0, Ll/q;->l:Lr/Q;

    invoke-virtual {v0, p1, p2}, Lr/Q;->a(Ln/p;Lr/O;)V

    goto :goto_8
.end method

.method private a(Ln/w;Ln/B;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 830
    invoke-virtual {p1, p2}, Ln/w;->a(Ln/B;)Ln/x;

    move-result-object v1

    .line 831
    if-eqz v1, :cond_2d

    .line 832
    invoke-virtual {v1}, Ln/x;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/p;

    .line 836
    invoke-virtual {v1}, Ln/x;->a()Ln/B;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Ll/q;->a(Ln/p;Ln/B;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 837
    new-instance v3, Ll/r;

    invoke-direct {v3, p0}, Ll/r;-><init>(Ll/q;)V

    invoke-direct {p0, v0, v3}, Ll/q;->a(Ln/p;Lr/O;)V

    goto :goto_e

    .line 854
    :cond_2d
    return-void
.end method

.method private c(Ln/w;)Ln/B;
    .registers 7
    .parameter

    .prologue
    .line 726
    const/4 v1, 0x0

    .line 728
    iget-object v2, p0, Ll/q;->c:Lt/f;

    monitor-enter v2

    .line 729
    :try_start_4
    iget-object v0, p0, Ll/q;->c:Lt/f;

    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 730
    if-nez v0, :cond_28

    .line 731
    invoke-virtual {p1}, Ln/w;->c()Ln/x;

    move-result-object v0

    .line 732
    if-nez v0, :cond_2f

    sget-object v0, Ll/q;->p:Ln/B;

    .line 733
    :goto_1a
    iget-object v3, p0, Ll/q;->c:Lt/f;

    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 734
    sget-object v3, Ll/q;->p:Ln/B;

    if-eq v0, v3, :cond_28

    .line 735
    const/4 v1, 0x1

    .line 738
    :cond_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_34

    .line 740
    if-eqz v1, :cond_2e

    .line 741
    invoke-direct {p0, p1}, Ll/q;->d(Ln/w;)V

    .line 743
    :cond_2e
    return-object v0

    .line 732
    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ln/x;->a()Ln/B;

    move-result-object v0

    goto :goto_1a

    .line 738
    :catchall_34
    move-exception v0

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_34

    throw v0
.end method

.method private d(Ln/w;)V
    .registers 5
    .parameter

    .prologue
    .line 747
    invoke-direct {p0}, Ll/q;->m()V

    .line 749
    iget-object v1, p0, Ll/q;->a:Ljava/util/Map;

    monitor-enter v1

    .line 750
    :try_start_6
    iget-object v0, p0, Ll/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/s;

    .line 751
    invoke-interface {v0, p0, p1}, Ll/s;->a(Ll/q;Ln/w;)V

    goto :goto_10

    .line 753
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 754
    return-void
.end method

.method private k()V
    .registers 4

    .prologue
    .line 582
    iget-object v1, p0, Ll/q;->a:Ljava/util/Map;

    monitor-enter v1

    .line 583
    :try_start_3
    iget-object v0, p0, Ll/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/s;

    .line 584
    invoke-interface {v0, p0}, Ll/s;->a(Ll/q;)V

    goto :goto_d

    .line 586
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 587
    return-void
.end method

.method private l()V
    .registers 4

    .prologue
    .line 710
    invoke-direct {p0}, Ll/q;->m()V

    .line 712
    iget-object v1, p0, Ll/q;->a:Ljava/util/Map;

    monitor-enter v1

    .line 713
    :try_start_6
    iget-object v0, p0, Ll/q;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/s;

    .line 714
    invoke-interface {v0, p0}, Ll/s;->b(Ll/q;)V

    goto :goto_10

    .line 716
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v0

    :cond_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_20

    .line 717
    return-void
.end method

.method private m()V
    .registers 7

    .prologue
    .line 991
    iget-object v2, p0, Ll/q;->n:Ljava/util/Map;

    monitor-enter v2

    .line 992
    :try_start_3
    iget-object v0, p0, Ll/q;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 993
    iget-object v0, p0, Ll/q;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 994
    invoke-virtual {p0}, Ll/q;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 997
    invoke-virtual {v0}, Ln/x;->a()Ln/B;

    move-result-object v1

    invoke-virtual {p0, v1}, Ll/q;->b(Ln/B;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 1000
    iget-object v1, p0, Ll/q;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ln/x;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll/k;

    .line 1002
    if-nez v1, :cond_5c

    .line 1003
    new-instance v1, Ll/k;

    invoke-direct {v1, v0}, Ll/k;-><init>(Ln/x;)V

    .line 1004
    iget-object v4, p0, Ll/q;->m:Ljava/util/Map;

    invoke-virtual {v0}, Ln/x;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :goto_4f
    iget-object v4, p0, Ll/q;->n:Ljava/util/Map;

    invoke-virtual {v0}, Ln/x;->b()Ln/p;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 1010
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v0

    .line 1006
    :cond_5c
    :try_start_5c
    invoke-virtual {v1, v0}, Ll/k;->a(Ln/x;)Z

    goto :goto_4f

    .line 1010
    :cond_60
    monitor-exit v2
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_59

    .line 1011
    return-void
.end method


# virtual methods
.method public a(Ln/p;ZZZ)Ll/k;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v3, p0, Ll/q;->n:Ljava/util/Map;

    monitor-enter v3

    .line 894
    :try_start_4
    iget-object v0, p0, Ll/q;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/k;

    .line 897
    if-nez v0, :cond_13

    if-nez p2, :cond_13

    .line 898
    monitor-exit v3

    move-object v0, v1

    .line 945
    :goto_12
    return-object v0

    .line 904
    :cond_13
    if-eqz p3, :cond_72

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ll/k;->g()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_72

    move-object v2, v0

    move-object v0, v1

    .line 910
    :goto_24
    if-eqz v0, :cond_2b

    .line 911
    monitor-exit v3

    goto :goto_12

    .line 946
    :catchall_28
    move-exception v0

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw v0

    .line 916
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Ll/q;->l:Lr/Q;

    invoke-virtual {v0, p1}, Lr/Q;->a(Ln/p;)Ln/w;

    move-result-object v0

    .line 917
    if-nez v0, :cond_3a

    .line 920
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ll/q;->a(Ln/p;Lr/O;)V

    .line 921
    monitor-exit v3

    move-object v0, v1

    goto :goto_12

    .line 924
    :cond_3a
    invoke-virtual {v0, p1}, Ln/w;->a(Ln/p;)Ln/x;

    move-result-object v0

    .line 925
    if-nez v0, :cond_43

    .line 926
    monitor-exit v3

    move-object v0, v1

    goto :goto_12

    .line 929
    :cond_43
    new-instance v1, Ll/k;

    invoke-direct {v1, v0}, Ll/k;-><init>(Ln/x;)V

    .line 931
    if-eqz p4, :cond_6f

    .line 932
    iget-object v0, p0, Ll/q;->n:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    if-eqz v2, :cond_6f

    .line 937
    invoke-virtual {v2, p1}, Ll/k;->a(Ln/p;)Ll/k;

    move-result-object v2

    .line 939
    invoke-virtual {v2}, Ll/k;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/p;

    .line 940
    iget-object v5, p0, Ll/q;->n:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 945
    :cond_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_2b .. :try_end_70} :catchall_28

    move-object v0, v1

    goto :goto_12

    :cond_72
    move-object v2, v1

    goto :goto_24
.end method

.method public a(Ln/p;)Ln/B;
    .registers 4
    .parameter

    .prologue
    .line 481
    iget-object v1, p0, Ll/q;->c:Lt/f;

    monitor-enter v1

    .line 482
    :try_start_3
    iget-object v0, p0, Ll/q;->c:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 483
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_20

    .line 486
    if-nez v0, :cond_1a

    .line 487
    iget-object v1, p0, Ll/q;->l:Lr/Q;

    invoke-virtual {v1, p1}, Lr/Q;->a(Ln/p;)Ln/w;

    move-result-object v1

    .line 488
    if-eqz v1, :cond_23

    .line 489
    invoke-direct {p0, v1}, Ll/q;->c(Ln/w;)Ln/B;

    move-result-object v0

    .line 497
    :cond_1a
    :goto_1a
    sget-object v1, Ll/q;->p:Ln/B;

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x0

    :cond_1f
    return-object v0

    .line 483
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 493
    :cond_23
    invoke-direct {p0, p1, p0}, Ll/q;->a(Ln/p;Lr/O;)V

    goto :goto_1a
.end method

.method public a(Ljava/util/Set;)V
    .registers 7
    .parameter

    .prologue
    .line 602
    iget-object v1, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    if-nez p1, :cond_9

    .line 604
    :try_start_5
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    .line 606
    :cond_9
    iget-object v0, p0, Ll/q;->j:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 607
    monitor-exit v1

    .line 638
    :goto_12
    return-void

    .line 609
    :cond_13
    iget-object v0, p0, Ll/q;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 610
    iget-object v0, p0, Ll/q;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 611
    iget-object v0, p0, Ll/q;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 612
    iget-object v0, p0, Ll/q;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 618
    iget-object v0, p0, Ll/q;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 621
    iget-object v0, p0, Ll/q;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/p;

    .line 622
    iget-object v3, p0, Ll/q;->l:Lr/Q;

    invoke-virtual {v3, v0}, Lr/Q;->a(Ln/p;)Ln/w;

    move-result-object v3

    .line 623
    if-eqz v3, :cond_54

    .line 624
    iget-object v4, p0, Ll/q;->i:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    iget-object v3, p0, Ll/q;->h:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_32

    .line 630
    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw v0

    .line 627
    :cond_54
    :try_start_54
    invoke-direct {p0, v0, p0}, Ll/q;->a(Ln/p;Lr/O;)V

    goto :goto_32

    .line 630
    :cond_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_51

    .line 637
    invoke-direct {p0}, Ll/q;->l()V

    goto :goto_12
.end method

.method public a(Ll/s;)V
    .registers 4
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Ll/q;->a:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-void
.end method

.method public a(Ln/B;)V
    .registers 4
    .parameter

    .prologue
    .line 397
    iget-object v1, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 399
    :try_start_3
    iget-object v0, p0, Ll/q;->f:Ln/B;

    invoke-virtual {p1, v0}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Ll/q;->c:Lt/f;

    invoke-virtual {v0}, Lt/f;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 400
    :cond_17
    monitor-exit v1

    .line 405
    :goto_18
    return-void

    .line 402
    :cond_19
    iput-object p1, p0, Ll/q;->f:Ln/B;

    .line 403
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_24

    .line 404
    invoke-virtual {p1}, Ln/B;->a()Ln/p;

    move-result-object v0

    invoke-direct {p0, v0, p0}, Ll/q;->a(Ln/p;Lr/O;)V

    goto :goto_18

    .line 403
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public a(Ln/B;Ln/B;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Ll/q;->q:Ln/B;

    .line 441
    iput-object p2, p0, Ll/q;->r:Ln/B;

    .line 442
    invoke-direct {p0}, Ll/q;->m()V

    .line 443
    return-void
.end method

.method public a(Ln/p;ILn/w;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 310
    const/4 v3, 0x2

    if-ne p2, v3, :cond_7

    .line 377
    :cond_6
    :goto_6
    return-void

    .line 312
    :cond_7
    if-nez p2, :cond_6

    .line 317
    iget-object v3, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 318
    :try_start_c
    iget-object v4, p0, Ll/q;->f:Ln/B;

    if-eqz v4, :cond_21

    iget-object v4, p0, Ll/q;->f:Ln/B;

    invoke-virtual {v4}, Ln/B;->a()Ln/p;

    move-result-object v4

    invoke-virtual {v4, p1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 320
    iget-object v2, p0, Ll/q;->f:Ln/B;

    .line 321
    const/4 v4, 0x0

    iput-object v4, p0, Ll/q;->f:Ln/B;

    .line 323
    :cond_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_80

    .line 325
    if-eqz v2, :cond_27

    .line 326
    invoke-direct {p0, p3, v2}, Ll/q;->a(Ln/w;Ln/B;)V

    .line 331
    :cond_27
    invoke-direct {p0, p3}, Ll/q;->c(Ln/w;)Ln/B;

    .line 337
    iget-object v3, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v3

    .line 338
    :try_start_2d
    iget-object v2, p0, Ll/q;->e:Ln/p;

    invoke-virtual {p1, v2}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 340
    iget-object v2, p0, Ll/q;->g:Ln/w;

    if-eqz v2, :cond_49

    invoke-virtual {p3}, Ln/w;->a()Ln/p;

    move-result-object v2

    iget-object v4, p0, Ll/q;->g:Ln/w;

    invoke-virtual {v4}, Ln/w;->a()Ln/p;

    move-result-object v4

    invoke-virtual {v2, v4}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 344
    :cond_49
    invoke-virtual {p3}, Ln/w;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_83

    .line 345
    iget-object v2, p0, Ll/q;->g:Ln/w;

    if-eqz v2, :cond_8f

    .line 346
    const/4 v2, 0x0

    iput-object v2, p0, Ll/q;->g:Ln/w;

    move v2, v0

    .line 354
    :goto_5b
    const/4 v4, 0x0

    iput-object v4, p0, Ll/q;->e:Ln/p;

    .line 356
    :goto_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_87

    .line 358
    if-eqz v2, :cond_64

    .line 359
    invoke-direct {p0}, Ll/q;->k()V

    .line 364
    :cond_64
    iget-object v2, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 365
    :try_start_67
    iget-object v3, p0, Ll/q;->h:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 366
    iget-object v1, p0, Ll/q;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 367
    iget-object v1, p0, Ll/q;->i:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :goto_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_67 .. :try_end_7a} :catchall_8a

    .line 373
    if-eqz v0, :cond_6

    .line 374
    invoke-direct {p0}, Ll/q;->l()V

    goto :goto_6

    .line 323
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0

    .line 350
    :cond_83
    :try_start_83
    iput-object p3, p0, Ll/q;->g:Ln/w;

    move v2, v0

    .line 351
    goto :goto_5b

    .line 356
    :catchall_87
    move-exception v0

    monitor-exit v3
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_87

    throw v0

    .line 370
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0

    :cond_8d
    move v0, v1

    goto :goto_79

    :cond_8f
    move v2, v1

    goto :goto_5b

    :cond_91
    move v2, v1

    goto :goto_5e
.end method

.method public a(Ln/w;)V
    .registers 4
    .parameter

    .prologue
    .line 411
    if-eqz p1, :cond_e

    .line 412
    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v0

    sget-object v1, Ll/q;->p:Ln/B;

    invoke-virtual {p0, v0, v1}, Ll/q;->a(Ln/p;Ln/B;)Z

    .line 413
    invoke-direct {p0, p1}, Ll/q;->d(Ln/w;)V

    .line 415
    :cond_e
    return-void
.end method

.method a(Ln/p;Ln/B;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 768
    iget-object v1, p0, Ll/q;->c:Lt/f;

    monitor-enter v1

    .line 769
    :try_start_3
    iget-object v0, p0, Ll/q;->c:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 770
    invoke-virtual {p2, v0}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 771
    const/4 v0, 0x0

    monitor-exit v1

    .line 778
    :goto_13
    return v0

    .line 773
    :cond_14
    iget-object v2, p0, Ll/q;->c:Lt/f;

    invoke-virtual {v2, p1, p2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 774
    if-eqz v0, :cond_1e

    .line 775
    invoke-direct {p0, p1, p2, v0}, Ll/q;->a(Ln/p;Ln/B;Ln/B;)V

    .line 777
    :cond_1e
    monitor-exit v1

    .line 778
    const/4 v0, 0x1

    goto :goto_13

    .line 777
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public b(Ln/p;)Ln/C;
    .registers 4
    .parameter

    .prologue
    .line 506
    invoke-virtual {p0, p1}, Ll/q;->a(Ln/p;)Ln/B;

    move-result-object v0

    .line 507
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ln/D;

    invoke-direct {v1}, Ln/D;-><init>()V

    invoke-virtual {v1, v0}, Ln/D;->a(Ln/B;)Ln/D;

    move-result-object v0

    invoke-virtual {v0}, Ln/D;->a()Ln/C;

    move-result-object v0

    goto :goto_7
.end method

.method public b(Ln/w;)Ln/x;
    .registers 3
    .parameter

    .prologue
    .line 425
    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Ll/q;->a(Ln/p;)Ln/B;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_f

    .line 427
    invoke-virtual {p1, v0}, Ln/w;->a(Ln/B;)Ln/x;

    move-result-object v0

    .line 429
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Ll/q;->q:Ln/B;

    .line 450
    iput-object v0, p0, Ll/q;->r:Ln/B;

    .line 451
    invoke-direct {p0}, Ll/q;->m()V

    .line 452
    return-void
.end method

.method public b(Ll/s;)V
    .registers 3
    .parameter

    .prologue
    .line 300
    iget-object v0, p0, Ll/q;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public b(Ln/B;)Z
    .registers 3
    .parameter

    .prologue
    .line 458
    if-eqz p1, :cond_14

    iget-object v0, p0, Ll/q;->q:Ln/B;

    invoke-virtual {p1, v0}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Ll/q;->r:Ln/B;

    invoke-virtual {p1, v0}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public b(Ln/B;Ln/B;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 469
    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    iget-object v0, p0, Ll/q;->q:Ln/B;

    invoke-virtual {p1, v0}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ll/q;->r:Ln/B;

    invoke-virtual {p2, v0}, Ln/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public c(Ln/p;)Ln/B;
    .registers 5
    .parameter

    .prologue
    .line 528
    iget-object v1, p0, Ll/q;->c:Lt/f;

    monitor-enter v1

    .line 529
    :try_start_3
    iget-object v0, p0, Ll/q;->d:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/B;

    .line 530
    sget-object v2, Ll/q;->p:Ln/B;

    if-ne v0, v2, :cond_10

    const/4 v0, 0x0

    :cond_10
    monitor-exit v1

    return-object v0

    .line 531
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public c()Ln/w;
    .registers 3

    .prologue
    .line 575
    iget-object v1, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 576
    :try_start_3
    iget-object v0, p0, Ll/q;->g:Ln/w;

    monitor-exit v1

    return-object v0

    .line 577
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public c(Ln/B;)Z
    .registers 5
    .parameter

    .prologue
    .line 701
    invoke-virtual {p0}, Ll/q;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 702
    invoke-virtual {v0}, Ln/x;->b()Ln/p;

    move-result-object v0

    invoke-virtual {p1}, Ln/B;->a()Ln/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 703
    const/4 v0, 0x1

    .line 706
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public d(Ln/p;)V
    .registers 5
    .parameter

    .prologue
    .line 542
    if-nez p1, :cond_1b

    .line 544
    const/4 v0, 0x0

    .line 545
    iget-object v1, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 546
    :try_start_6
    iget-object v2, p0, Ll/q;->g:Ln/w;

    if-eqz v2, :cond_11

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Ll/q;->e:Ln/p;

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Ll/q;->g:Ln/w;

    .line 550
    const/4 v0, 0x1

    .line 552
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_18

    .line 553
    if-eqz v0, :cond_17

    .line 554
    invoke-direct {p0}, Ll/q;->k()V

    .line 569
    :cond_17
    :goto_17
    return-void

    .line 552
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 559
    :cond_1b
    iget-object v1, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_1e
    iget-object v0, p0, Ll/q;->e:Ln/p;

    invoke-virtual {p1, v0}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Ll/q;->g:Ln/w;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Ll/q;->g:Ln/w;

    invoke-virtual {v0}, Ln/w;->a()Ln/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 563
    :cond_36
    monitor-exit v1

    goto :goto_17

    .line 566
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_38

    throw v0

    .line 565
    :cond_3b
    :try_start_3b
    iput-object p1, p0, Ll/q;->e:Ln/p;

    .line 566
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .line 567
    invoke-direct {p0, p1, p0}, Ll/q;->a(Ln/p;Lr/O;)V

    goto :goto_17
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 644
    iget-object v1, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 645
    :try_start_3
    iget-object v0, p0, Ll/q;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 646
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public d(Ln/B;)Z
    .registers 4
    .parameter

    .prologue
    .line 860
    iget-object v1, p0, Ll/q;->c:Lt/f;

    monitor-enter v1

    .line 861
    :try_start_3
    iget-object v0, p0, Ll/q;->c:Lt/f;

    invoke-virtual {v0}, Lt/f;->i()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 862
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public e()Ljava/util/List;
    .registers 3

    .prologue
    .line 659
    iget-object v1, p0, Ll/q;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    :try_start_3
    iget-object v0, p0, Ll/q;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 661
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public e(Ln/p;)Ll/k;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 963
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Ll/q;->a(Ln/p;ZZZ)Ll/k;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/Set;
    .registers 4

    .prologue
    .line 669
    invoke-virtual {p0}, Ll/q;->e()Ljava/util/List;

    move-result-object v0

    .line 670
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 671
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/w;

    .line 672
    invoke-virtual {p0, v0}, Ll/q;->b(Ln/w;)Ln/x;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_c

    .line 674
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 677
    :cond_22
    return-object v1
.end method

.method public g()Ljava/util/Set;
    .registers 4

    .prologue
    .line 685
    invoke-virtual {p0}, Ll/q;->e()Ljava/util/List;

    move-result-object v0

    .line 686
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 687
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/w;

    .line 688
    invoke-virtual {p0, v0}, Ll/q;->b(Ln/w;)Ln/x;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_c

    .line 690
    invoke-virtual {v0}, Ln/x;->a()Ln/B;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 693
    :cond_26
    return-object v1
.end method

.method public h()Z
    .registers 3

    .prologue
    .line 869
    invoke-virtual {p0}, Ll/q;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 870
    invoke-virtual {v0}, Ln/x;->e()I

    move-result v0

    if-gez v0, :cond_8

    .line 871
    const/4 v0, 0x1

    .line 874
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public i()Ljava/util/Set;
    .registers 3

    .prologue
    .line 970
    iget-object v1, p0, Ll/q;->n:Ljava/util/Map;

    monitor-enter v1

    .line 971
    :try_start_3
    iget-object v0, p0, Ll/q;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 972
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public j()Ll/e;
    .registers 2

    .prologue
    .line 1019
    iget-object v0, p0, Ll/q;->o:Ll/e;

    return-object v0
.end method
