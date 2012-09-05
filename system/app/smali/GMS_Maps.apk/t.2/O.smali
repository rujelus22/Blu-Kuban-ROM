.class public final Lt/O;
.super Lt/W;


# instance fields
.field private a:[Lt/L;

.field private volatile b:Lt/V;


# direct methods
.method public constructor <init>([Lt/L;)V
    .registers 2

    invoke-direct {p0}, Lt/W;-><init>()V

    iput-object p1, p0, Lt/O;->a:[Lt/L;

    return-void
.end method


# virtual methods
.method public a(I)Lt/L;
    .registers 3

    iget-object v0, p0, Lt/O;->a:[Lt/L;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Lt/V;
    .registers 2

    iget-object v0, p0, Lt/O;->b:Lt/V;

    if-nez v0, :cond_c

    iget-object v0, p0, Lt/O;->a:[Lt/L;

    invoke-static {v0}, Lt/V;->a([Lt/L;)Lt/V;

    move-result-object v0

    iput-object v0, p0, Lt/O;->b:Lt/V;

    :cond_c
    iget-object v0, p0, Lt/O;->b:Lt/V;

    return-object v0
.end method

.method public a(Lt/L;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lt/O;->a()Lt/V;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt/V;->a(Lt/L;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_c
    return v2

    :cond_d
    iget-object v0, p0, Lt/O;->a:[Lt/L;

    array-length v6, v0

    iget-object v0, p0, Lt/O;->a:[Lt/L;

    add-int/lit8 v3, v6, -0x1

    aget-object v0, v0, v3

    move v3, v2

    move-object v4, v0

    move v0, v2

    :goto_19
    if-ge v3, v6, :cond_2b

    iget-object v5, p0, Lt/O;->a:[Lt/L;

    aget-object v5, v5, v3

    invoke-static {v4, v5, p1}, Lt/N;->b(Lt/L;Lt/L;Lt/L;)Z

    move-result v4

    if-eqz v4, :cond_27

    add-int/lit8 v0, v0, 0x1

    :cond_27
    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    goto :goto_19

    :cond_2b
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_32

    move v0, v1

    :goto_30
    move v2, v0

    goto :goto_c

    :cond_32
    move v0, v2

    goto :goto_30
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lt/O;->a:[Lt/L;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lt/O;

    if-eqz v0, :cond_13

    check-cast p1, Lt/O;

    iget-object v0, p0, Lt/O;->a:[Lt/L;

    iget-object v1, p1, Lt/O;->a:[Lt/L;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lt/O;->a:[Lt/L;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
