.class public final LK/J;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/common/base/p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/p;->a(Ljava/lang/String;)Lcom/google/common/base/p;

    move-result-object v0

    sput-object v0, LK/J;->a:Lcom/google/common/base/p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/lang/String;
    .registers 4

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, LK/J;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LK/J;->a:Lcom/google/common/base/p;

    new-instance v2, LK/K;

    invoke-direct {v2, p0}, LK/K;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2}, LK/bF;->a(Ljava/lang/Iterable;Lcom/google/common/base/o;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/base/p;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/lang/StringBuilder;
    .registers 6

    if-ltz p0, :cond_1a

    const/4 v0, 0x1

    :goto_3
    const-string v1, "size must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/v;->a(ZLjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 1

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public static a(Ljava/util/Collection;Lcom/google/common/base/o;)Ljava/util/Collection;
    .registers 3

    new-instance v0, LK/O;

    invoke-direct {v0, p0, p1}, LK/O;-><init>(Ljava/util/Collection;Lcom/google/common/base/o;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Lcom/google/common/base/w;)Ljava/util/Collection;
    .registers 5

    instance-of v0, p0, LK/L;

    if-eqz v0, :cond_b

    check-cast p0, LK/L;

    invoke-virtual {p0, p1}, LK/L;->a(Lcom/google/common/base/w;)LK/L;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v2, LK/L;

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/w;

    invoke-direct {v2, v0, v1}, LK/L;-><init>(Ljava/util/Collection;Lcom/google/common/base/w;)V

    move-object v0, v2

    goto :goto_a
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 4

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method
