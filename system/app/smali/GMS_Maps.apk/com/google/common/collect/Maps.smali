.class public final Lcom/google/common/collect/Maps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/base/J;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1497
    sget-object v0, Lcom/google/common/collect/R;->a:Lcom/google/common/base/G;

    const-string v1, "="

    invoke-virtual {v0, v1}, Lcom/google/common/base/G;->b(Ljava/lang/String;)Lcom/google/common/base/J;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/Maps;->a:Lcom/google/common/base/J;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1506
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 1508
    :goto_4
    return-object v0

    .line 1507
    :catch_5
    move-exception v0

    .line 1508
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static a(Ljava/lang/Class;)Ljava/util/EnumMap;
    .registers 3
    .parameter

    .prologue
    .line 244
    new-instance v1, Ljava/util/EnumMap;

    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object v1
.end method

.method public static a()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public static a(I)Ljava/util/HashMap;
    .registers 3
    .parameter

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->b(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 2
    .parameter

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 540
    new-instance v0, Lcom/google/common/collect/bv;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .registers 2
    .parameter

    .prologue
    .line 567
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    new-instance v0, Lcom/google/common/collect/cK;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cK;-><init>(Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1598
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_6

    .line 1599
    const/4 v0, 0x0

    .line 1601
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method static b(I)I
    .registers 5
    .parameter

    .prologue
    .line 115
    if-ltz p0, :cond_15

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 117
    int-to-long v0, p0

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, LJ/a;->a(J)I

    move-result v0

    return v0

    .line 115
    :cond_15
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static b(Ljava/util/Map;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1649
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/R;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1651
    sget-object v1, Lcom/google/common/collect/Maps;->a:Lcom/google/common/base/J;

    invoke-virtual {v1, v0, p0}, Lcom/google/common/base/J;->a(Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/lang/StringBuilder;

    .line 1652
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/LinkedHashMap;
    .registers 1

    .prologue
    .line 149
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method static b(Ljava/util/Map;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1518
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 1520
    :goto_4
    return v0

    .line 1519
    :catch_5
    move-exception v0

    .line 1520
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static c()Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    .prologue
    .line 184
    new-instance v0, Lcom/google/common/collect/cF;

    invoke-direct {v0}, Lcom/google/common/collect/cF;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/cF;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/util/IdentityHashMap;
    .registers 1

    .prologue
    .line 267
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    return-object v0
.end method

.method public static newTreeMap()Ljava/util/TreeMap;
    .registers 1

    .prologue
    .line 198
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    return-object v0
.end method
