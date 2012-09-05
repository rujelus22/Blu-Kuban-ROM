.class final LK/aU;
.super LK/bp;


# static fields
.field static final a:LK/aU;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LK/aU;

    invoke-direct {v0}, LK/aU;-><init>()V

    sput-object v0, LK/aU;->a:LK/aU;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, LK/bp;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LK/bu;
    .registers 2

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public b()LK/bu;
    .registers 2

    invoke-static {}, LK/bu;->f()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public c()LK/bi;
    .registers 2

    sget-object v0, LK/bi;->c:LK/bi;

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, LK/aU;->a()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, LK/aU;->b()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "{}"

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/aU;->c()LK/bi;

    move-result-object v0

    return-object v0
.end method
