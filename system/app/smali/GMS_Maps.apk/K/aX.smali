.class LK/aX;
.super LK/bD;


# static fields
.field private static final b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LK/aX;->b:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0, p1}, LK/bD;-><init>(Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)LK/bD;
    .registers 2

    return-object p0
.end method

.method a(Ljava/lang/Object;Ljava/lang/Object;)LK/bD;
    .registers 3

    return-object p0
.end method

.method a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method b(Ljava/lang/Object;)LK/bD;
    .registers 2

    return-object p0
.end method

.method public b()LK/cC;
    .registers 2

    invoke-static {}, LK/bI;->a()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public first()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
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

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/aX;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    sget-object v0, LK/aX;->b:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_7
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "[]"

    return-object v0
.end method
