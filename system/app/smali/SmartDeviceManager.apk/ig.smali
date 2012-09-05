.class public abstract Lig;
.super Lhd;
.source "a"


# static fields
.field static final a:Lnd;

.field static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation
.end field

.field static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected f:Ljj;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    sput-object v0, Lig;->a:Lnd;

    .line 47
    new-instance v0, Ljc;

    invoke-direct {v0}, Ljc;-><init>()V

    iget-object v0, v0, Ljc;->a:Ljava/util/HashMap;

    sput-object v0, Lig;->b:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    sput-object v0, Lig;->c:Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lig;->c:Ljava/util/HashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lig;->c:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lig;->c:Ljava/util/HashMap;

    const-string v1, "java.util.NavigableMap"

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :try_start_46
    const-string v0, "java.util.ConcurrentNavigableMap"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 69
    const-string v1, "java.util.ConcurrentSkipListMap"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    sget-object v2, Lig;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_5b} :catch_ba

    .line 82
    :goto_5b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    sput-object v0, Lig;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lig;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lig;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lig;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lig;->d:Ljava/util/HashMap;

    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lig;->d:Ljava/util/HashMap;

    const-string v1, "java.util.Deque"

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lig;->d:Ljava/util/HashMap;

    const-string v1, "java.util.NavigableSet"

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lie;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lig;->e:Ljava/util/HashMap;

    return-void

    .line 73
    :catch_ba
    move-exception v0

    goto :goto_5b
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 118
    invoke-direct {p0}, Lhd;-><init>()V

    .line 110
    sget-object v0, Ljj;->a:Ljj;

    iput-object v0, p0, Lig;->f:Ljj;

    .line 118
    return-void
.end method

.method protected static a(Lhb;Ljk;)Lhf;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Ljk;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lhb;->a()Lgy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lgy;->f(Ljk;)Ljava/lang/Object;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_7a

    .line 464
    instance-of v2, v1, Lhf;

    if-eqz v2, :cond_14

    move-object v0, v1

    check-cast v0, Lhf;

    move-object p0, v0

    move-object v1, p0

    .line 466
    :goto_13
    return-object v1

    .line 464
    :cond_14
    instance-of v2, v1, Ljava/lang/Class;

    if-nez v2, :cond_3f

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotationIntrospector returned deserializer definition of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3f
    check-cast v1, Ljava/lang/Class;

    const-class v2, Lhf;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_6c

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnnotationIntrospector returned Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; expected Class<JsonDeserializer>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6c
    sget-object v2, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p0, v2}, Lhb;->a(Lhb$a;)Z

    move-result v2

    invoke-static {v1, v2}, Lme;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhf;

    move-object v1, p0

    goto :goto_13

    .line 466
    :cond_7a
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private a(Lhb;Lju;)Lim;
    .registers 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p2}, Lju;->b()Ljava/lang/Class;

    move-result-object v1

    .line 634
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v8

    .line 635
    sget-object v2, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v2}, Lhb;->a(Lhb$a;)Z

    move-result v2

    .line 636
    new-instance v9, Lim;

    invoke-direct {v9, v1, v2}, Lim;-><init>(Ljava/lang/Class;Z)V

    .line 638
    invoke-virtual {p2}, Lju;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1b
    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljm;

    move-object v7, v0

    .line 639
    invoke-virtual {v7}, Ljm;->e()I

    move-result v11

    .line 640
    if-lez v11, :cond_1b

    invoke-virtual {v8, v7}, Lgy;->l(Ljk;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 641
    new-array v12, v11, [Liy;

    .line 645
    const/4 v1, 0x0

    move v5, v1

    :goto_39
    if-ge v5, v11, :cond_87

    .line 647
    invoke-virtual {v7, v5}, Ljm;->a(I)Ljr;

    move-result-object v6

    .line 648
    if-nez v6, :cond_74

    const/4 v1, 0x0

    move-object v4, v1

    .line 650
    :goto_43
    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7a

    .line 651
    :cond_4b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no property name annotation: must have for @JsonCreator for a Map type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_74
    invoke-virtual {v8, v6}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_43

    :cond_7a
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 653
    invoke-virtual/range {v1 .. v6}, Lig;->a(Lhb;Lju;Ljava/lang/String;ILjr;)Liy;

    move-result-object v1

    aput-object v1, v12, v5

    .line 646
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_39

    .line 656
    :cond_87
    invoke-virtual {v9, v7, v12}, Lim;->a(Ljm;[Liy;)V

    goto :goto_1b

    .line 660
    :cond_8b
    invoke-virtual {p2}, Lju;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_93
    :goto_93
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljp;

    move-object v7, v0

    .line 661
    invoke-virtual {v7}, Ljp;->e()I

    move-result v11

    .line 662
    if-lez v11, :cond_93

    invoke-virtual {v8, v7}, Lgy;->l(Ljk;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 663
    new-array v12, v11, [Liy;

    .line 667
    const/4 v1, 0x0

    move v5, v1

    :goto_b1
    if-ge v5, v11, :cond_ff

    .line 669
    invoke-virtual {v7, v5}, Ljp;->a(I)Ljr;

    move-result-object v6

    .line 670
    if-nez v6, :cond_ec

    const/4 v1, 0x0

    move-object v4, v1

    .line 672
    :goto_bb
    if-eqz v4, :cond_c3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f2

    .line 673
    :cond_c3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of factory method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has no property name annotation: must have for @JsonCreator for a Map type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :cond_ec
    invoke-virtual {v8, v6}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_bb

    :cond_f2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 675
    invoke-virtual/range {v1 .. v6}, Lig;->a(Lhb;Lju;Ljava/lang/String;ILjr;)Liy;

    move-result-object v1

    aput-object v1, v12, v5

    .line 668
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_b1

    .line 678
    :cond_ff
    invoke-virtual {v9, v7, v12}, Lim;->a(Ljp;[Liy;)V

    goto :goto_93

    .line 680
    :cond_103
    return-object v9
.end method

.method private static a(Ljava/lang/Class;Lhb;)Liq;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lhb;",
            ")",
            "Liq",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 613
    sget-object v0, Lhb$a;->READ_ENUMS_USING_TO_STRING:Lhb$a;

    invoke-virtual {p1, v0}, Lhb;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 614
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    :goto_14
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_22

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_22
    new-instance v2, Liq;

    invoke-direct {v2, p0, v0, v1}, Liq;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;)V

    move-object v0, v2

    .line 616
    :goto_28
    return-object v0

    :cond_29
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v0

    invoke-static {p0, v0}, Liq;->a(Ljava/lang/Class;Lgy;)Liq;

    move-result-object v0

    goto :goto_28
.end method

.method protected static a(Lhb;Ljk;Lnd;)Lnd;
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnd;",
            ">(",
            "Lhb;",
            "Ljk;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0}, Lhb;->a()Lgy;

    move-result-object v2

    .line 515
    invoke-virtual {v2, p1}, Lgy;->i(Ljk;)Ljava/lang/Class;

    move-result-object v1

    .line 516
    if-eqz v1, :cond_100

    .line 518
    :try_start_a
    invoke-virtual {p2, v1}, Lnd;->d(Ljava/lang/Class;)Lnd;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_d} :catch_3d

    move-result-object v1

    .line 525
    :goto_e
    invoke-virtual {v1}, Lnd;->d()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 526
    invoke-virtual {v2, p1}, Lgy;->j(Ljk;)Ljava/lang/Class;

    move-result-object v3

    .line 527
    if-eqz v3, :cond_89

    .line 529
    instance-of v4, v1, Llx;

    if-nez v4, :cond_81

    .line 530
    new-instance v2, Lhg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal key-type annotation: type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a Map type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v2

    .line 519
    :catch_3d
    move-exception v2

    .line 520
    new-instance v3, Lhg;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to narrow type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with concrete-type annotation (value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), method \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljk;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\': "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 533
    :cond_81
    :try_start_81
    move-object v0, v1

    check-cast v0, Llx;

    move-object p0, v0

    invoke-virtual {p0, v3}, Llx;->c(Ljava/lang/Class;)Lnd;
    :try_end_88
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_88} :catch_94

    move-result-object v1

    .line 540
    :cond_89
    invoke-virtual {v2, p1}, Lgy;->k(Ljk;)Ljava/lang/Class;

    move-result-object v2

    .line 541
    if-eqz v2, :cond_93

    .line 543
    :try_start_8f
    invoke-virtual {v1, v2}, Lnd;->b(Ljava/lang/Class;)Lnd;
    :try_end_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8f .. :try_end_92} :catch_ca

    move-result-object v1

    .line 549
    :cond_93
    return-object v1

    .line 534
    :catch_94
    move-exception v2

    .line 535
    new-instance v4, Lhg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to narrow key type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with key-type annotation ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v2}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 544
    :catch_ca
    move-exception v3

    .line 545
    new-instance v4, Lhg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to narrow content type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " with content-type annotation ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v3}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_100
    move-object v1, p2

    goto/16 :goto_e
.end method


# virtual methods
.method public final a(Lhb;Ljava/lang/Class;)Lhf;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lhf",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {p2}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhb;->b(Lnd;)Lgz;

    move-result-object p0

    check-cast p0, Lju;

    .line 313
    invoke-virtual {p0}, Lju;->c()Ljl;

    move-result-object v0

    invoke-static {p1, v0}, Lig;->a(Lhb;Ljk;)Lhf;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_15

    .line 332
    :goto_14
    return-object v0

    .line 318
    :cond_15
    invoke-virtual {p0}, Lju;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljp;

    .line 319
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lgy;->l(Ljk;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 320
    invoke-virtual {p0}, Ljp;->e()I

    move-result v0

    .line 321
    const/4 v1, 0x1

    if-ne v0, v1, :cond_81

    .line 322
    invoke-virtual {p0}, Ljp;->c()Ljava/lang/Class;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp;->b(I)Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_6c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter #0 type for factory method ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not suitable, must be java.lang.String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    sget-object v0, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v0}, Lhb;->a(Lhb$a;)Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p0}, Ljp;->g()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-static {v0}, Lme;->a(Ljava/lang/reflect/Member;)V

    :cond_7b
    new-instance v0, Lio$a;

    invoke-direct {v0, p2, p0}, Lio$a;-><init>(Ljava/lang/Class;Ljp;)V

    goto :goto_14

    .line 328
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsuitable method ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_ae
    new-instance v0, Lio;

    invoke-static {p2, p1}, Lig;->a(Ljava/lang/Class;Lhb;)Liq;

    move-result-object v1

    invoke-direct {v0, v1}, Lio;-><init>(Liq;)V

    goto/16 :goto_14
.end method

.method public final a(Lhb;Llt;Lhe;)Lhf;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Llt;",
            "Lhe;",
            ")",
            "Lhf",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p2, Llt;->a:Lnd;

    .line 133
    invoke-virtual {v1}, Lnd;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    .line 134
    if-nez v0, :cond_52

    .line 136
    sget-object v0, Lig;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    .line 137
    if-eqz v0, :cond_15

    .line 153
    :goto_14
    return-object v0

    .line 141
    :cond_15
    invoke-virtual {v1}, Lnd;->m()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: primitive type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") passed, no array deserializer found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3a
    invoke-virtual {p3, p1, v1}, Lhe;->a(Lhb;Lnd;)Lhf;

    move-result-object v0

    move-object v2, v0

    .line 148
    :goto_3f
    invoke-virtual {v1}, Lnd;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lht;

    .line 150
    if-nez v0, :cond_4b

    .line 151
    invoke-virtual {p0, p1, v1}, Lig;->a(Lhb;Lnd;)Lht;

    move-result-object v0

    .line 153
    :cond_4b
    new-instance v1, Lid;

    invoke-direct {v1, p2, v2, v0}, Lid;-><init>(Llt;Lhf;Lht;)V

    move-object v0, v1

    goto :goto_14

    :cond_52
    move-object v2, v0

    goto :goto_3f
.end method

.method public final a(Lhb;Llv;Lhe;)Lhf;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Llv;",
            "Lhe;",
            ")",
            "Lhf",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p2}, Llv;->i()Ljava/lang/Class;

    move-result-object v2

    .line 162
    invoke-virtual {p1, v2}, Lhb;->b(Ljava/lang/Class;)Lgz;

    move-result-object v0

    check-cast v0, Lju;

    .line 164
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v1

    invoke-static {p1, v1}, Lig;->a(Lhb;Ljk;)Lhf;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_16

    move-object v0, v1

    .line 213
    :goto_15
    return-object v0

    .line 169
    :cond_16
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lig;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v0

    check-cast v0, Llv;

    .line 171
    iget-object v3, v0, Llv;->a:Lnd;

    .line 173
    invoke-virtual {v3}, Lnd;->o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhf;

    .line 175
    if-nez v1, :cond_96

    .line 177
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 178
    new-instance v0, Lir;

    invoke-virtual {v3}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lig;->a(Ljava/lang/Class;Lhb;)Liq;

    move-result-object v1

    invoke-direct {v0, v1}, Lir;-><init>(Liq;)V

    goto :goto_15

    .line 182
    :cond_40
    invoke-virtual {p3, p1, v3}, Lhe;->a(Lhb;Lnd;)Lhf;

    move-result-object v1

    move-object v4, v1

    .line 194
    :goto_45
    invoke-virtual {v0}, Llv;->l()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-virtual {v0}, Llv;->b()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 196
    :cond_51
    sget-object v1, Lig;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 197
    if-nez v1, :cond_78

    .line 198
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a deserializer for non-concrete Collection type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_78
    move-object v2, v1

    .line 204
    :cond_79
    invoke-virtual {v3}, Lnd;->p()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lht;

    .line 206
    if-nez v1, :cond_85

    .line 207
    invoke-virtual {p0, p1, v3}, Lig;->a(Lhb;Lnd;)Lht;

    move-result-object v1

    .line 210
    :cond_85
    sget-object v3, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v3}, Lhb;->a(Lhb$a;)Z

    move-result v3

    .line 212
    invoke-static {v2, v3}, Lme;->b(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 213
    new-instance v3, Lij;

    invoke-direct {v3, v0, v4, v1, v2}, Lij;-><init>(Lnd;Lhf;Lht;Ljava/lang/reflect/Constructor;)V

    move-object v0, v3

    goto :goto_15

    :cond_96
    move-object v4, v1

    goto :goto_45
.end method

.method public final a(Lhb;Llx;Lhe;)Lhf;
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Llx;",
            "Lhe;",
            ")",
            "Lhf",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p2}, Llx;->i()Ljava/lang/Class;

    move-result-object v5

    .line 222
    invoke-virtual {p1, p2}, Lhb;->b(Lnd;)Lgz;

    move-result-object v0

    check-cast v0, Lju;

    .line 224
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v1

    invoke-static {p1, v1}, Lig;->a(Lhb;Ljk;)Lhf;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_16

    move-object v0, v1

    .line 299
    :goto_15
    return-object v0

    .line 229
    :cond_16
    invoke-virtual {v0}, Lju;->c()Ljl;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lig;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v1

    check-cast v1, Llx;

    .line 231
    iget-object v3, v1, Llx;->a:Lnd;

    .line 232
    iget-object v6, v1, Llx;->b:Lnd;

    .line 236
    invoke-virtual {v6}, Lnd;->o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhf;

    .line 237
    if-nez v2, :cond_f2

    .line 239
    invoke-virtual {p3, p1, v6}, Lhe;->a(Lhb;Lnd;)Lhf;

    move-result-object v2

    move-object v4, v2

    .line 244
    :goto_31
    const-class v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 245
    invoke-virtual {v3}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 247
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not construct EnumMap; generic (key) type not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_4d
    new-instance v1, Lip;

    invoke-static {v0, p1}, Lig;->a(Ljava/lang/Class;Lhb;)Liq;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Lip;-><init>(Liq;Lhf;)V

    move-object v0, v1

    goto :goto_15

    .line 254
    :cond_58
    invoke-virtual {v3}, Lnd;->o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhk;

    .line 255
    if-nez v2, :cond_ef

    .line 256
    sget-object v2, Lig;->a:Lnd;

    invoke-virtual {v2, v3}, Lnd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    const/4 v2, 0x0

    :goto_69
    move-object v3, v2

    .line 268
    :goto_6a
    invoke-virtual {v1}, Llx;->l()Z

    move-result v2

    if-nez v2, :cond_76

    invoke-virtual {v1}, Llx;->b()Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 270
    :cond_76
    sget-object v0, Lig;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 271
    if-nez v0, :cond_a2

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a deserializer for non-concrete Map type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_9d
    invoke-virtual {p3, p1, v3}, Lhe;->c(Lhb;Lnd;)Lhk;

    move-result-object v2

    goto :goto_69

    .line 275
    :cond_a2
    invoke-virtual {v1, v0}, Llx;->e(Ljava/lang/Class;)Lnd;

    move-result-object v0

    check-cast v0, Llx;

    .line 277
    invoke-virtual {p1, v0}, Lhb;->b(Lnd;)Lgz;

    move-result-object v1

    check-cast v1, Lju;

    move-object v7, v1

    move-object v1, v0

    .line 281
    :goto_b0
    sget-object v0, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v0}, Lhb;->a(Lhb$a;)Z

    move-result v0

    .line 284
    invoke-virtual {v7}, Lju;->g()Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 285
    if-eqz v2, :cond_c1

    .line 286
    if-eqz v0, :cond_c1

    .line 287
    invoke-static {v2}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 291
    :cond_c1
    invoke-virtual {v6}, Lnd;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lht;

    .line 293
    if-nez v0, :cond_eb

    .line 294
    invoke-virtual {p0, p1, v6}, Lig;->a(Lhb;Lnd;)Lht;

    move-result-object v0

    move-object v5, v0

    .line 296
    :goto_ce
    new-instance v0, Liu;

    invoke-direct/range {v0 .. v5}, Liu;-><init>(Lnd;Ljava/lang/reflect/Constructor;Lhk;Lhf;Lht;)V

    .line 297
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v1

    invoke-virtual {v7}, Lju;->c()Ljl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgy;->b(Ljl;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liu;->a([Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, p1, v7}, Lig;->a(Lhb;Lju;)Lim;

    move-result-object v1

    invoke-virtual {v0, v1}, Liu;->a(Lim;)V

    goto/16 :goto_15

    :cond_eb
    move-object v5, v0

    goto :goto_ce

    :cond_ed
    move-object v7, v0

    goto :goto_b0

    :cond_ef
    move-object v3, v2

    goto/16 :goto_6a

    :cond_f2
    move-object v4, v2

    goto/16 :goto_31
.end method

.method public a(Lhb;Lnd;Lhe;)Lhf;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lnd;",
            "Lhe;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 347
    sget-object v0, Lig;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    .line 348
    if-eqz v0, :cond_b

    .line 362
    :cond_a
    :goto_a
    return-object v0

    .line 352
    :cond_b
    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 353
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 354
    new-instance v0, Lja$b;

    invoke-direct {v0, p2}, Lja$b;-><init>(Lnd;)V

    goto :goto_a

    .line 358
    :cond_1d
    iget-object v0, p0, Lig;->f:Ljj;

    invoke-virtual {v0, p2}, Ljj;->b(Lnd;)Lhf;

    move-result-object v0

    .line 359
    if-nez v0, :cond_a

    .line 362
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Ljava/lang/Class;)Lhf;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lfb;",
            ">;)",
            "Lhf",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {p1}, Lit;->a(Ljava/lang/Class;)Lhf;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lhb;Lnd;)Lht;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 368
    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 369
    invoke-virtual {p1, v0}, Lhb;->b(Ljava/lang/Class;)Lgz;

    move-result-object p0

    check-cast p0, Lju;

    .line 370
    invoke-virtual {p0}, Lju;->c()Ljl;

    move-result-object v0

    .line 371
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v1

    .line 372
    invoke-virtual {v1, v0}, Lgy;->d(Ljl;)Lke;

    move-result-object v2

    .line 377
    if-nez v2, :cond_23

    .line 378
    invoke-virtual {p1}, Lhb;->d()Lke;

    move-result-object v0

    move-object v1, v0

    move-object v0, v4

    .line 382
    :goto_1f
    if-nez v1, :cond_2d

    move-object v0, v4

    :goto_22
    return-object v0

    .line 380
    :cond_23
    invoke-virtual {p1}, Lhb;->e()Lkc;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v1}, Lkc;->a(Ljl;Lhl;Lgy;)Ljava/util/Collection;

    move-result-object v0

    move-object v1, v2

    goto :goto_1f

    .line 382
    :cond_2d
    invoke-interface {v1, p2, v0}, Lke;->b(Lnd;Ljava/util/Collection;)Lht;

    move-result-object v0

    goto :goto_22
.end method

.method protected final a(Lhb;Lju;Ljava/lang/String;ILjr;)Liy;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p5, Ljr;->a:Ljava/lang/reflect/Type;

    invoke-virtual {p0, p1, p2, v0, p5}, Lig;->a(Lhb;Lju;Ljava/lang/reflect/Type;Ljk;)Lnd;

    move-result-object v0

    .line 697
    invoke-static {p1, p5}, Lig;->a(Lhb;Ljk;)Lhf;

    move-result-object v6

    .line 699
    invoke-static {p1, p5, v0}, Lig;->a(Lhb;Ljk;Lnd;)Lnd;

    move-result-object v2

    .line 700
    invoke-virtual {p0, p1, v2}, Lig;->a(Lhb;Lnd;)Lht;

    move-result-object v3

    .line 701
    new-instance v0, Liy$a;

    invoke-virtual {p2}, Lju;->b()Ljava/lang/Class;

    move-result-object v4

    move-object v1, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Liy$a;-><init>(Ljava/lang/String;Lnd;Lht;Ljava/lang/Class;I)V

    .line 703
    if-eqz v6, :cond_22

    .line 704
    invoke-virtual {v0, v6}, Liy;->a(Lhf;)V

    .line 706
    :cond_22
    return-object v0
.end method

.method protected final a(Lhb;Lju;Ljava/lang/reflect/Type;Ljk;)Lnd;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 566
    invoke-virtual {p2}, Lju;->e()Lma;

    move-result-object v0

    invoke-static {p3, v0}, Lmb;->a(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v1

    .line 568
    invoke-virtual {v1}, Lnd;->d()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 569
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v2

    .line 570
    sget-object v0, Lhb$a;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lhb$a;

    invoke-virtual {p1, v0}, Lhb;->a(Lhb$a;)Z

    move-result v3

    .line 571
    invoke-virtual {v1}, Lnd;->g()Lnd;

    move-result-object v4

    .line 572
    if-eqz v4, :cond_31

    .line 573
    invoke-virtual {v2, p4}, Lgy;->g(Ljk;)Ljava/lang/Class;

    move-result-object v0

    .line 574
    if-eqz v0, :cond_31

    const-class v5, Lhk$a;

    if-eq v0, v5, :cond_31

    .line 575
    invoke-static {v0, v3}, Lme;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhk;

    .line 576
    invoke-virtual {v4, v0}, Lnd;->a(Ljava/lang/Object;)V

    .line 580
    :cond_31
    invoke-virtual {v2, p4}, Lgy;->h(Ljk;)Ljava/lang/Class;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_48

    const-class v2, Lhf$a;

    if-eq v0, v2, :cond_48

    .line 582
    invoke-static {v0, v3}, Lme;->a(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    .line 583
    invoke-virtual {v1}, Lnd;->e()Lnd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnd;->a(Ljava/lang/Object;)V

    .line 590
    :cond_48
    instance-of v0, p4, Ljo;

    if-eqz v0, :cond_60

    .line 591
    invoke-virtual {p1}, Lhb;->a()Lgy;

    invoke-virtual {v1}, Lnd;->e()Lnd;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lig;->a(Lhb;Lnd;)Lht;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_60

    .line 593
    invoke-virtual {v1}, Lnd;->e()Lnd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lnd;->b(Ljava/lang/Object;)V

    .line 599
    :cond_60
    instance-of v0, p4, Ljo;

    if-eqz v0, :cond_71

    .line 600
    invoke-virtual {p1}, Lhb;->a()Lgy;

    invoke-virtual {p0, p1, v1}, Lig;->a(Lhb;Lnd;)Lht;

    move-result-object v0

    .line 604
    :goto_6b
    if-eqz v0, :cond_70

    .line 605
    invoke-virtual {v1, v0}, Lnd;->b(Ljava/lang/Object;)V

    .line 607
    :cond_70
    return-object v1

    .line 602
    :cond_71
    invoke-virtual {p0, p1, v1}, Lig;->a(Lhb;Lnd;)Lht;

    move-result-object v0

    goto :goto_6b
.end method
