.class public LK/bz;
.super LK/br;

# interfaces
.implements LK/cv;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient a:LK/bD;


# direct methods
.method constructor <init>(LK/bp;ILjava/util/Comparator;)V
    .registers 5

    invoke-direct {p0, p1, p2}, LK/br;-><init>(LK/bp;I)V

    if-nez p3, :cond_9

    const/4 v0, 0x0

    :goto_6
    iput-object v0, p0, LK/bz;->a:LK/bD;

    return-void

    :cond_9
    invoke-static {p3}, LK/bD;->a(Ljava/util/Comparator;)LK/bD;

    move-result-object v0

    goto :goto_6
.end method

.method static synthetic a(LK/cd;Ljava/util/Comparator;)LK/bz;
    .registers 3

    invoke-static {p0, p1}, LK/bz;->b(LK/cd;Ljava/util/Comparator;)LK/bz;

    move-result-object v0

    return-object v0
.end method

.method private static b(LK/cd;Ljava/util/Comparator;)LK/bz;
    .registers 8

    invoke-static {p0}, Lcom/google/common/base/v;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, LK/cd;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    invoke-static {}, LK/bz;->e()LK/bz;

    move-result-object v0

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    instance-of v0, p0, LK/bz;

    if-eqz v0, :cond_1d

    move-object v0, p0

    check-cast v0, LK/bz;

    invoke-virtual {v0}, LK/bz;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_1d
    invoke-static {}, LK/bp;->f()LK/bq;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p0}, LK/cd;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-nez p1, :cond_5b

    invoke-static {v0}, LK/bu;->a(Ljava/util/Collection;)LK/bu;

    move-result-object v0

    :goto_4b
    invoke-virtual {v0}, LK/bu;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6a

    invoke-virtual {v2, v4, v0}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    invoke-virtual {v0}, LK/bu;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_59
    move v1, v0

    goto :goto_2f

    :cond_5b
    invoke-static {p1, v0}, LK/bD;->a(Ljava/util/Comparator;Ljava/util/Collection;)LK/bD;

    move-result-object v0

    goto :goto_4b

    :cond_60
    new-instance v0, LK/bz;

    invoke-virtual {v2}, LK/bq;->a()LK/bp;

    move-result-object v2

    invoke-direct {v0, v2, v1, p1}, LK/bz;-><init>(LK/bp;ILjava/util/Comparator;)V

    goto :goto_f

    :cond_6a
    move v0, v1

    goto :goto_59
.end method

.method public static e()LK/bz;
    .registers 1

    sget-object v0, LK/aW;->a:LK/aW;

    return-object v0
.end method

.method public static f()LK/bA;
    .registers 1

    new-instance v0, LK/bA;

    invoke-direct {v0}, LK/bA;-><init>()V

    return-object v0
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)LK/bi;
    .registers 3

    invoke-virtual {p0, p1}, LK/bz;->c(Ljava/lang/Object;)LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 3

    invoke-virtual {p0, p1}, LK/bz;->c(Ljava/lang/Object;)LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/Object;)LK/bu;
    .registers 3

    iget-object v0, p0, LK/bz;->b:LK/bp;

    invoke-virtual {v0, p1}, LK/bp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK/bu;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LK/bz;->a:LK/bD;

    if-eqz v0, :cond_12

    iget-object v0, p0, LK/bz;->a:LK/bD;

    goto :goto_a

    :cond_12
    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    goto :goto_a
.end method
