.class final LaoP;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lans;


# static fields
.field public static final a:LanP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanP",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:LaoP;

.field final a:LaoU;

.field final a:Laou;

.field a:LapB;

.field final a:LapP;

.field a:Lapj;

.field final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lant",
            "<*>;",
            "Laoc",
            "<*>;>;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lant",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v0

    sput-object v0, LaoP;->a:LanP;

    return-void
.end method

.method private static a(Lant;Laoy;)Lant;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<",
            "LanD",
            "<TT;>;>;",
            "Laoy;",
            ")",
            "Lant",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 300
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_15

    .line 301
    invoke-virtual {p1}, Laoy;->c()Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 304
    :cond_15
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 307
    invoke-virtual {p0, v0}, Lant;->b(Ljava/lang/reflect/Type;)Lant;

    move-result-object v0

    .line 308
    return-object v0
.end method

.method private a(Lant;Laoy;)Laoc;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<",
            "Lany",
            "<TT;>;>;",
            "Laoy;",
            ")",
            "Laoc",
            "<",
            "Lany",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 320
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_15

    .line 321
    invoke-virtual {p2}, Laoy;->d()Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 325
    :cond_15
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, LanP;->a(Ljava/lang/reflect/Type;)LanP;

    move-result-object v0

    .line 327
    iget-object v1, p0, LaoP;->a:Lapj;

    invoke-virtual {v1, v0, p2}, Lapj;->a(LanP;Laoy;)Laph;

    move-result-object v6

    .line 329
    new-instance v4, Laon;

    invoke-static {v6}, LaoL;->a(Ljava/lang/Object;)LaoK;

    move-result-object v0

    invoke-direct {v4, v0}, Laon;-><init>(LaoK;)V

    .line 333
    new-instance v0, Lapa;

    sget-object v3, LapW;->a:Ljava/lang/Object;

    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lapa;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method private a(Lant;Laoy;ZLaoV;)Laoc;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "Laoy;",
            "Z",
            "LaoV;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, LaoP;->a:LaoP;

    if-eqz v0, :cond_1d

    .line 784
    :try_start_4
    iget-object v1, p0, LaoP;->a:LaoP;

    new-instance v2, Laoy;

    invoke-direct {v2}, Laoy;-><init>()V

    iget-object v0, p0, LaoP;->a:LaoP;

    iget-object v0, v0, LaoP;->a:LaoU;

    iget-boolean v0, v0, LaoU;->a:Z

    if-eqz v0, :cond_1a

    sget-object v0, LaoV;->a:LaoV;

    :goto_15
    invoke-direct {v1, p1, v2, p3, v0}, LaoP;->a(Lant;Laoy;ZLaoV;)Laoc;
    :try_end_18
    .catch LaoE; {:try_start_4 .. :try_end_18} :catch_1c

    move-result-object v0

    .line 798
    :goto_19
    return-object v0

    :cond_1a
    move-object v0, p4

    .line 784
    goto :goto_15

    .line 786
    :catch_1c
    move-exception v0

    .line 790
    :cond_1d
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0, p1}, LapP;->a(Lant;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 791
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0, p1}, LapP;->a(Lant;)Ljava/util/Set;

    move-result-object v0

    .line 792
    invoke-virtual {p2, p1, v0}, Laoy;->a(Lant;Ljava/util/Set;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 795
    :cond_34
    invoke-direct {p0, p1, p2, p3, p4}, LaoP;->b(Lant;Laoy;ZLaoV;)Laoc;

    move-result-object v0

    .line 796
    iget-object v1, p0, LaoP;->a:LapP;

    invoke-interface {v1}, LapP;->a()LapP;

    move-result-object v1

    invoke-virtual {v0}, Laoc;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, LapP;->a(Lant;Ljava/lang/Object;)V

    .line 797
    iget-object v1, p0, LaoP;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method private a(Lant;LapG;Lanq;Laoy;)Laoc;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "LapG;",
            "Lanq;",
            "Laoy;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 732
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v3

    .line 733
    invoke-interface {p3}, Lanq;->a()Ljava/lang/Class;

    move-result-object v0

    .line 736
    if-ne v0, v3, :cond_17

    .line 737
    invoke-virtual {p4}, Laoy;->a()Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 741
    :cond_17
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 742
    invoke-virtual {p4, v0, v3}, Laoy;->b(Ljava/lang/Class;Ljava/lang/Class;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 749
    :cond_26
    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v6

    .line 750
    sget-object v0, LaoV;->c:LaoV;

    invoke-virtual {p0, v6, p4, v0}, LaoP;->a(Lant;Laoy;LaoV;)Laoc;

    move-result-object v0

    .line 752
    new-instance v1, LaoQ;

    invoke-direct {v1, p0, v6, v0}, LaoQ;-><init>(LaoP;Lant;Laoc;)V

    .line 766
    new-instance v0, Lapf;

    invoke-static {p1, p0, v1, v3, p2}, LapG;->a(Lant;LaoP;Lapc;Ljava/lang/Object;LapG;)Lapc;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lapf;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Lant;)V

    return-object v0
.end method

.method private a(Laoc;)Ljava/util/Set;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 613
    instance-of v0, p1, Laoq;

    if-eqz v0, :cond_b

    .line 614
    check-cast p1, Laoq;

    invoke-virtual {p1}, Laoq;->a()Ljava/util/Set;

    move-result-object v0

    .line 618
    :goto_a
    return-object v0

    .line 615
    :cond_b
    instance-of v0, p1, Laqr;

    if-eqz v0, :cond_16

    .line 616
    check-cast p1, Laqr;

    invoke-interface {p1}, Laqr;->c()Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    .line 618
    :cond_16
    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Lang;Laqt;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lang",
            "<*>;",
            "Laqt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 601
    iget-object v0, p0, LaoP;->a:Ljava/util/Set;

    invoke-interface {p1}, Lang;->a()Lant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v0, p0, LaoP;->a:Ljava/util/Map;

    invoke-interface {p1}, Lang;->a()Lant;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    iget-object v0, p0, LaoP;->a:Lapj;

    invoke-interface {p1}, Lang;->a()Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->a()LanP;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapj;->a(LanP;)Z

    .line 604
    iget-object v0, p0, LaoP;->a:LapB;

    invoke-virtual {v0, p1}, LapB;->a(Lang;)Z

    .line 605
    if-eqz p2, :cond_2b

    .line 606
    iget-object v0, p0, LaoP;->a:Laou;

    invoke-virtual {v0, p2}, Laou;->a(Laqt;)Z

    .line 608
    :cond_2b
    return-void
.end method

.method private static a(Lant;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 289
    invoke-virtual {p0}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LanD;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Laoc;Ljava/util/Set;)Z
    .registers 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lant;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 569
    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, p1}, LaoP;->a(Laoc;)Ljava/util/Set;

    move-result-object v1

    .line 571
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqk;

    .line 572
    invoke-virtual {v0}, Laqk;->a()Lant;

    move-result-object v4

    .line 573
    invoke-virtual {v0}, Laqk;->a()Laqt;

    move-result-object v1

    .line 574
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 575
    iget-object v0, p0, LaoP;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc;

    .line 576
    if-eqz v0, :cond_4f

    .line 577
    invoke-direct {p0, v0, p2}, LaoP;->a(Laoc;Ljava/util/Set;)Z

    move-result v4

    .line 578
    instance-of v5, v0, Laoq;

    if-eqz v5, :cond_5f

    move-object v1, v0

    .line 579
    check-cast v1, Laoq;

    .line 580
    invoke-virtual {v1}, Laoq;->a()Laqt;

    move-result-object v5

    .line 581
    invoke-virtual {v1}, Laoq;->b()Z

    move-result v1

    if-nez v1, :cond_5c

    move v1, v3

    move-object v4, v5

    .line 585
    :goto_46
    if-eqz v1, :cond_4c

    .line 586
    invoke-direct {p0, v0, v4}, LaoP;->a(Lang;Laqt;)V

    move v2, v3

    :cond_4c
    move v0, v2

    :goto_4d
    move v2, v0

    .line 595
    goto :goto_b

    .line 589
    :cond_4f
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0, v4}, LapP;->a(Lant;)Laoc;

    move-result-object v0

    if-nez v0, :cond_5a

    move v0, v3

    .line 592
    goto :goto_4d

    .line 596
    :cond_59
    return v2

    :cond_5a
    move v0, v2

    goto :goto_4d

    :cond_5c
    move v1, v4

    move-object v4, v5

    goto :goto_46

    :cond_5f
    move v7, v4

    move-object v4, v1

    move v1, v7

    goto :goto_46
.end method

.method private b(Lant;Laoy;)Laoc;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<",
            "LanD",
            "<TT;>;>;",
            "Laoy;",
            ")",
            "Laoc",
            "<",
            "LanD",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {p1, p2}, LaoP;->a(Lant;Laoy;)Lant;

    move-result-object v0

    .line 344
    sget-object v1, LaoV;->a:LaoV;

    invoke-virtual {p0, v0, p2, v1}, LaoP;->a(Lant;Laoy;LaoV;)Laoc;

    move-result-object v0

    .line 345
    new-instance v1, LaoW;

    invoke-direct {v1, p0, p1, v0}, LaoW;-><init>(LaoP;Lant;Lang;)V

    return-object v1
.end method

.method private b(Lant;Laoy;LaoV;)Laoc;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "Laoy;",
            "LaoV;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {p1}, LaoP;->a(Lant;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, LaoP;->b(Lant;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p1}, LaoP;->c(Lant;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_12
    const/4 v0, 0x1

    move v1, v0

    .line 246
    :goto_14
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0}, LapP;->a()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    move-object v2, p0

    .line 248
    :goto_1c
    if-eqz v2, :cond_4d

    .line 250
    :try_start_1e
    iget-object v0, v2, LaoP;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc;

    .line 252
    if-eqz v0, :cond_49

    .line 255
    iget-object v2, p0, LaoP;->a:LaoU;

    iget-boolean v2, v2, LaoU;->a:Z

    if-eqz v2, :cond_47

    sget-object v2, LaoV;->a:LaoV;

    if-ne p3, v2, :cond_47

    if-nez v1, :cond_47

    instance-of v1, v0, LaoT;

    if-nez v1, :cond_47

    .line 259
    invoke-virtual {p2, p1}, Laoy;->b(Lant;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 284
    :catchall_41
    move-exception v0

    monitor-exit v3
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_41

    throw v0

    .line 245
    :cond_44
    const/4 v0, 0x0

    move v1, v0

    goto :goto_14

    .line 261
    :cond_47
    :try_start_47
    monitor-exit v3

    .line 283
    :goto_48
    return-object v0

    .line 248
    :cond_49
    iget-object v0, v2, LaoP;->a:LaoP;

    move-object v2, v0

    goto :goto_1c

    .line 280
    :cond_4d
    iget-object v0, p0, LaoP;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-virtual {p2}, Laoy;->a()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 281
    invoke-virtual {p2}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 283
    :cond_60
    iget-object v0, p0, LaoP;->a:LaoU;

    iget-boolean v0, v0, LaoU;->a:Z

    invoke-direct {p0, p1, p2, v0, p3}, LaoP;->a(Lant;Laoy;ZLaoV;)Laoc;

    move-result-object v0

    monitor-exit v3
    :try_end_69
    .catchall {:try_start_47 .. :try_end_69} :catchall_41

    goto :goto_48
.end method

.method private b(Lant;Laoy;ZLaoV;)Laoc;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "Laoy;",
            "Z",
            "LaoV;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual {p2}, Laoy;->a()I

    move-result v6

    .line 818
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0, p1}, LapP;->a(Lant;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 819
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0, p1}, LapP;->a(Lant;)Ljava/util/Set;

    move-result-object v0

    .line 820
    invoke-virtual {p2, p1, v0}, Laoy;->a(Lant;Ljava/util/Set;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 824
    :cond_1b
    invoke-static {p1}, LaoP;->a(Lant;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 828
    invoke-direct {p0, p1, p2}, LaoP;->b(Lant;Laoy;)Laoc;

    move-result-object v0

    .line 871
    :cond_25
    :goto_25
    return-object v0

    .line 833
    :cond_26
    invoke-static {p1}, LaoP;->c(Lant;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 837
    invoke-direct {p0, p1, p2}, LaoP;->a(Lant;Laoy;)Laoc;

    move-result-object v0

    goto :goto_25

    .line 842
    :cond_31
    invoke-direct {p0, p1, p2}, LaoP;->c(Lant;Laoy;)Laoc;

    move-result-object v0

    .line 843
    if-nez v0, :cond_25

    .line 847
    invoke-static {p1}, LaoP;->b(Lant;)Z

    move-result v0

    if-nez v0, :cond_4c

    if-eqz p3, :cond_4c

    sget-object v0, LaoV;->c:LaoV;

    if-eq p4, v0, :cond_4c

    .line 850
    invoke-virtual {p2, p1}, Laoy;->b(Lant;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 854
    :cond_4c
    invoke-virtual {p1}, Lant;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 856
    invoke-virtual {p1}, Lant;->a()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 858
    :try_start_58
    new-instance v0, Laoy;

    invoke-direct {v0}, Laoy;-><init>()V

    .line 859
    invoke-virtual {p1}, Lant;->a()Lant;

    move-result-object v1

    sget-object v2, LaoV;->a:LaoV;

    invoke-virtual {p0, v1, v0, v2}, LaoP;->a(Lant;Laoy;LaoV;)Laoc;
    :try_end_66
    .catch LaoE; {:try_start_58 .. :try_end_66} :catch_68

    move-result-object v0

    goto :goto_25

    .line 860
    :catch_68
    move-exception v0

    .line 864
    :cond_69
    invoke-virtual {p2, p1}, Laoy;->a(Lant;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 867
    :cond_72
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v3

    .line 868
    sget-object v2, LapG;->a:LapG;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, LaoP;->a(Lant;LapG;Ljava/lang/Object;Laoy;Z)Laoc;

    move-result-object v0

    .line 869
    invoke-virtual {p2, v6}, Laoy;->a(I)V

    .line 870
    invoke-virtual {p0, v0, p2}, LaoP;->a(Laoc;Laoy;)V

    goto :goto_25
.end method

.method private static b(Lant;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 293
    invoke-virtual {p0}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, LanP;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private c(Lant;Laoy;)Laoc;
    .registers 15
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "Laoy;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 417
    sget-object v0, LaoP;->a:LanP;

    invoke-virtual {p1, v0}, Lant;->b(LanP;)Lant;

    move-result-object v0

    .line 418
    iget-object v1, p0, LaoP;->a:LapP;

    invoke-interface {v1, v0}, LapP;->a(Lant;)Laoc;

    move-result-object v10

    .line 419
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Laoc;->a()Z

    move-result v0

    if-nez v0, :cond_16

    .line 450
    :cond_15
    :goto_15
    return-object v6

    .line 423
    :cond_16
    invoke-virtual {v10}, Laoc;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 424
    invoke-virtual {v10}, Laoc;->a()Ljava/lang/Object;

    move-result-object v2

    .line 427
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v3

    .line 428
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0, v1, v3, p2, v2}, LapP;->a(Ljava/lang/String;LanP;Laoy;Ljava/lang/Object;)LaqT;

    move-result-object v4

    .line 430
    if-eqz v4, :cond_15

    .line 438
    :try_start_30
    invoke-virtual {v4}, LaqT;->a()LaqS;

    move-result-object v0

    invoke-interface {v0, v1, v3}, LaqS;->a(Ljava/lang/String;LanP;)Ljava/lang/Object;

    move-result-object v5

    .line 440
    if-nez v5, :cond_45

    .line 441
    invoke-virtual {p2, v1, v2, v3, v4}, Laoy;->a(Ljava/lang/String;Ljava/lang/Object;LanP;LaqT;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0
    :try_end_43
    .catch LaoE; {:try_start_30 .. :try_end_43} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_43} :catch_59

    .line 452
    :catch_43
    move-exception v0

    .line 453
    throw v0

    .line 445
    :cond_45
    :try_start_45
    invoke-virtual {v3}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    move-object v0, p2

    .line 446
    invoke-virtual/range {v0 .. v5}, Laoy;->a(Ljava/lang/String;Ljava/lang/Object;LanP;LaqT;Ljava/lang/Object;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0
    :try_end_59
    .catch LaoE; {:try_start_45 .. :try_end_59} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_59} :catch_59

    .line 454
    :catch_59
    move-exception v5

    move-object v0, p2

    .line 455
    invoke-virtual/range {v0 .. v5}, Laoy;->a(Ljava/lang/String;Ljava/lang/Object;LanP;LaqT;Ljava/lang/RuntimeException;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 450
    :cond_64
    :try_start_64
    new-instance v6, LaoT;

    move-object v7, p0

    move-object v8, p1

    move-object v9, v5

    move-object v11, v4

    invoke-direct/range {v6 .. v11}, LaoT;-><init>(LaoP;Lant;Ljava/lang/Object;Lang;LaqT;)V
    :try_end_6d
    .catch LaoE; {:try_start_64 .. :try_end_6d} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_64 .. :try_end_6d} :catch_59

    goto :goto_15
.end method

.method private static c(Lant;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lany;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lant;->a()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private d(Lant;Laoy;)Laoc;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<",
            "LanP",
            "<TT;>;>;",
            "Laoy;",
            ")",
            "Laoc",
            "<",
            "LanP",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 675
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_15

    .line 676
    invoke-virtual {p2}, Laoy;->e()Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 679
    :cond_15
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 680
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 684
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_33

    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_33

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_33

    .line 687
    invoke-virtual {p2, v0}, Laoy;->a(Ljava/lang/reflect/Type;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 691
    :cond_33
    invoke-static {v0}, LanP;->a(Ljava/lang/reflect/Type;)LanP;

    move-result-object v6

    .line 692
    new-instance v4, Laon;

    invoke-static {v6}, LaoL;->a(Ljava/lang/Object;)LaoK;

    move-result-object v0

    invoke-direct {v4, v0}, Laon;-><init>(LaoK;)V

    .line 694
    new-instance v0, Lapa;

    sget-object v3, LapW;->a:Ljava/lang/Object;

    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lapa;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Lant;)LanD;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v1, Laoy;

    invoke-direct {v1, p1}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 1024
    :try_start_5
    invoke-virtual {p0, p1, v1}, LaoP;->a(Lant;Laoy;)LanD;

    move-result-object v0

    .line 1025
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Laoy;->a(I)V
    :try_end_d
    .catch LaoE; {:try_start_5 .. :try_end_d} :catch_e

    .line 1026
    return-object v0

    .line 1027
    :catch_e
    move-exception v0

    .line 1028
    new-instance v2, Lani;

    invoke-virtual {v0}, LaoE;->a()Laoy;

    move-result-object v0

    invoke-virtual {v1, v0}, Laoy;->a(Laoy;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lani;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method a(Lant;Laoy;)LanD;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "Laoy;",
            ")",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 991
    sget-object v0, LaoV;->a:LaoV;

    invoke-virtual {p0, p1, p2, v0}, LaoP;->a(Lant;Laoy;LaoV;)Laoc;

    move-result-object v0

    .line 992
    invoke-static {p1}, Laqk;->a(Lant;)Laqk;

    move-result-object v1

    .line 994
    new-instance v2, LaoR;

    invoke-direct {v2, p0, v1, v0}, LaoR;-><init>(LaoP;Laqk;Laoc;)V

    return-object v2
.end method

.method public a(Ljava/lang/Class;)LanD;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "LanD",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    invoke-virtual {p0, v0}, LaoP;->a(Lant;)LanD;

    move-result-object v0

    return-object v0
.end method

.method public a(LanP;)Lany;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LanP",
            "<TT;>;)",
            "Lany",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 974
    new-instance v1, Laoy;

    invoke-direct {v1, p1}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 976
    :try_start_5
    iget-object v0, p0, LaoP;->a:Lapj;

    invoke-virtual {v0, p1, v1}, Lapj;->a(LanP;Laoy;)Laph;
    :try_end_a
    .catch LaoE; {:try_start_5 .. :try_end_a} :catch_c

    move-result-object v0

    return-object v0

    .line 977
    :catch_c
    move-exception v0

    .line 978
    new-instance v2, Lani;

    invoke-virtual {v0}, LaoE;->a()Laoy;

    move-result-object v0

    invoke-virtual {v1, v0}, Laoy;->a(Laoy;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lani;-><init>(Ljava/lang/Iterable;)V

    throw v2
.end method

.method public a(Ljava/lang/Class;)Lany;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lany",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 983
    invoke-static {p1}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v0

    invoke-virtual {p0, v0}, LaoP;->a(LanP;)Lany;

    move-result-object v0

    return-object v0
.end method

.method a(Lant;Laoy;LaoV;)Laoc;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "Laoy;",
            "LaoV;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, LaoP;->a:LapP;

    invoke-interface {v0, p1}, LapP;->a(Lant;)Laoc;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_9

    .line 215
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1, p2, p3}, LaoP;->b(Lant;Laoy;LaoV;)Laoc;

    move-result-object v0

    goto :goto_8
.end method

.method a(Lant;LapG;LanC;Laoy;)Laoc;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "LapG;",
            "LanC;",
            "Laoy;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 701
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v2

    .line 702
    invoke-interface {p3}, LanC;->a()Ljava/lang/Class;

    move-result-object v1

    .line 705
    if-ne v1, v2, :cond_17

    .line 706
    invoke-virtual {p4}, Laoy;->b()Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 711
    :cond_17
    invoke-static {v1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v5

    .line 712
    new-instance v6, Laps;

    iget-object v0, p0, LaoP;->a:LaoU;

    iget-boolean v0, v0, LaoU;->b:Z

    if-nez v0, :cond_3c

    const/4 v0, 0x1

    :goto_24
    invoke-direct {v6, v2, v1, v5, v0}, Laps;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lant;Z)V

    .line 716
    invoke-static {p1, p0, v6, v2, p2}, LapG;->a(Lant;LaoP;Lapc;Ljava/lang/Object;LapG;)Lapc;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lapg;->a(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Lant;Laow;)Lapg;

    move-result-object v0

    .line 724
    iget-object v1, p0, LaoP;->a:LapB;

    invoke-virtual {v1, v0}, LapB;->a(Lang;)LapD;

    move-result-object v1

    invoke-virtual {v6, v1}, Laps;->a(LapD;)V

    .line 725
    return-object v0

    .line 712
    :cond_3c
    const/4 v0, 0x0

    goto :goto_24
.end method

.method a(Lant;LapG;Ljava/lang/Object;Laoy;Z)Laoc;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;",
            "LapG;",
            "Ljava/lang/Object;",
            "Laoy;",
            "Z)",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 628
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v1

    .line 631
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 632
    :cond_14
    invoke-virtual {p4, p1}, Laoy;->a(Lant;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 636
    :cond_1d
    const-class v0, LanP;

    if-ne v1, v0, :cond_26

    .line 638
    invoke-direct {p0, p1, p4}, LaoP;->d(Lant;Laoy;)Laoc;

    move-result-object v0

    .line 658
    :goto_25
    return-object v0

    .line 644
    :cond_26
    const-class v0, Lanq;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lanq;

    .line 645
    if-eqz v0, :cond_38

    .line 646
    invoke-static {v1, p3, p4}, LanY;->a(Ljava/lang/Class;Ljava/lang/Object;Laoy;)V

    .line 647
    invoke-direct {p0, p1, p2, v0, p4}, LaoP;->a(Lant;LapG;Lanq;Laoy;)Laoc;

    move-result-object v0

    goto :goto_25

    .line 651
    :cond_38
    const-class v0, LanC;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LanC;

    .line 652
    if-eqz v0, :cond_4a

    .line 653
    invoke-static {v1, p3, p4}, LanY;->a(Ljava/lang/Class;Ljava/lang/Object;Laoy;)V

    .line 654
    invoke-virtual {p0, p1, p2, v0, p4}, LaoP;->a(Lant;LapG;LanC;Laoy;)Laoc;

    move-result-object v0

    goto :goto_25

    .line 658
    :cond_4a
    const/4 v2, 0x0

    if-eqz p5, :cond_62

    iget-object v0, p0, LaoP;->a:LaoU;

    iget-boolean v0, v0, LaoU;->a:Z

    if-eqz v0, :cond_62

    const/4 v6, 0x1

    :goto_54
    iget-object v0, p0, LaoP;->a:LaoU;

    iget-boolean v7, v0, LaoU;->c:Z

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v7}, Laoq;->a(LaoP;Lant;Laqt;Ljava/lang/Object;LapG;Laoy;ZZ)Laoq;

    move-result-object v0

    goto :goto_25

    :cond_62
    const/4 v6, 0x0

    goto :goto_54
.end method

.method a(Laov;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laov",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1044
    iget-object v0, p0, LaoP;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1045
    aget-object v1, v0, v2

    if-nez v1, :cond_26

    .line 1046
    new-instance v1, Lapb;

    invoke-direct {v1}, Lapb;-><init>()V

    aput-object v1, v0, v2

    .line 1048
    const/4 v1, 0x0

    :try_start_16
    aget-object v1, v0, v1

    check-cast v1, Lapb;

    invoke-interface {p1, v1}, Laov;->a(Lapb;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_22

    move-result-object v1

    .line 1051
    aput-object v3, v0, v2

    move-object v0, v1

    .line 1055
    :goto_21
    return-object v0

    .line 1051
    :catchall_22
    move-exception v1

    aput-object v3, v0, v2

    throw v1

    .line 1055
    :cond_26
    aget-object v0, v0, v2

    check-cast v0, Lapb;

    invoke-interface {p1, v0}, Laov;->a(Lapb;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_21
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1037
    invoke-virtual {p0, p1}, LaoP;->a(Ljava/lang/Class;)LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Laoc;Laoy;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laoc",
            "<TT;>;",
            "Laoy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    instance-of v0, p1, Laow;

    if-eqz v0, :cond_13

    .line 543
    invoke-virtual {p1}, Laoc;->a()Lant;

    move-result-object v0

    .line 544
    iget-object v1, p0, LaoP;->a:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 546
    check-cast v0, Laow;

    .line 548
    :try_start_10
    invoke-interface {v0, p0, p2}, Laow;->a(LaoP;Laoy;)V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_14

    .line 560
    :cond_13
    return-void

    .line 551
    :catchall_14
    move-exception v0

    .line 555
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, LaoP;->a(Lang;Laqt;)V

    .line 556
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, v1}, LaoP;->a(Laoc;Ljava/util/Set;)Z

    throw v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .parameter

    .prologue
    .line 969
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LaoP;->a(Ljava/lang/Class;)Lany;

    move-result-object v0

    .line 970
    invoke-interface {v0, p1}, Lany;->a(Ljava/lang/Object;)V

    .line 971
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1061
    const-class v0, Lans;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "bindings"

    iget-object v2, p0, LaoP;->a:LapP;

    invoke-interface {v2}, LapP;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
