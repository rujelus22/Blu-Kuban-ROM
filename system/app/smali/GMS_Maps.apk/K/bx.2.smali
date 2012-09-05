.class abstract LK/bx;
.super LK/bu;


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:I


# direct methods
.method constructor <init>([Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0}, LK/bu;-><init>()V

    iput-object p1, p0, LK/bx;->a:[Ljava/lang/Object;

    iput p2, p0, LK/bx;->b:I

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public b()LK/cC;
    .registers 3

    new-instance v0, LK/by;

    iget-object v1, p0, LK/bx;->a:[Ljava/lang/Object;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, LK/by;-><init>(LK/bx;I)V

    return-object v0
.end method

.method c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, LK/bx;->b:I

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/bx;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/bx;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/bx;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, LK/bx;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, LK/bx;->size()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_1e

    invoke-static {p1, v0}, LK/cf;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_b
    :goto_b
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, LK/bx;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, LK/bx;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, LK/bx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1e
    array-length v1, p1

    if-le v1, v0, :cond_b

    const/4 v1, 0x0

    aput-object v1, p1, v0

    goto :goto_b

    :cond_25
    return-object p1
.end method
