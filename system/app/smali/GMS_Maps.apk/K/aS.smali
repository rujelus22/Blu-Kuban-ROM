.class final LK/aS;
.super LK/bn;


# static fields
.field static final a:LK/aS;

.field static final b:LK/cD;

.field private static final d:[Ljava/lang/Object;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, LK/aS;

    invoke-direct {v0}, LK/aS;-><init>()V

    sput-object v0, LK/aS;->a:LK/aS;

    new-instance v0, LK/aT;

    invoke-direct {v0}, LK/aT;-><init>()V

    sput-object v0, LK/aS;->b:LK/cD;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LK/aS;->d:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, LK/bn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)LK/bn;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/v;->a(III)V

    return-object p0
.end method

.method public a(I)LK/cD;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/v;->b(II)I

    sget-object v0, LK/aS;->b:LK/cD;

    return-object v0
.end method

.method a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()LK/cC;
    .registers 2

    invoke-static {}, LK/bI;->a()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public c()LK/cD;
    .registers 2

    sget-object v0, LK/aS;->b:LK/cD;

    return-object v0
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

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/common/base/v;->a(II)I

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/aS;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, LK/aS;->c()LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0, p1}, LK/aS;->a(I)LK/cD;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1, p2}, LK/aS;->a(II)LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    sget-object v0, LK/aS;->d:[Ljava/lang/Object;

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
