.class public final Lt/n;
.super Lt/W;


# instance fields
.field private a:[Lt/L;

.field private b:Lt/V;


# direct methods
.method protected constructor <init>([Lt/L;)V
    .registers 3

    invoke-direct {p0}, Lt/W;-><init>()V

    iput-object p1, p0, Lt/n;->a:[Lt/L;

    invoke-static {p1}, Lt/V;->a([Lt/L;)Lt/V;

    move-result-object v0

    iput-object v0, p0, Lt/n;->b:Lt/V;

    return-void
.end method

.method public static a(Lt/L;Lt/L;Lt/L;Lt/L;)Lt/n;
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Lt/L;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance v1, Lt/n;

    invoke-direct {v1, v0}, Lt/n;-><init>([Lt/L;)V

    return-object v1
.end method


# virtual methods
.method public a(I)Lt/L;
    .registers 3

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()Lt/V;
    .registers 2

    iget-object v0, p0, Lt/n;->b:Lt/V;

    return-object v0
.end method

.method public a(Lt/L;)Z
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    aget-object v0, v0, v2

    iget-object v3, p0, Lt/n;->a:[Lt/L;

    aget-object v3, v3, v1

    invoke-static {v0, v3, p1}, Lt/N;->b(Lt/L;Lt/L;Lt/L;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v0, v1

    :goto_13
    iget-object v3, p0, Lt/n;->a:[Lt/L;

    aget-object v3, v3, v1

    iget-object v4, p0, Lt/n;->a:[Lt/L;

    aget-object v4, v4, v5

    invoke-static {v3, v4, p1}, Lt/N;->b(Lt/L;Lt/L;Lt/L;)Z

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    iget-object v3, p0, Lt/n;->a:[Lt/L;

    aget-object v3, v3, v5

    iget-object v4, p0, Lt/n;->a:[Lt/L;

    aget-object v4, v4, v6

    invoke-static {v3, v4, p1}, Lt/N;->b(Lt/L;Lt/L;Lt/L;)Z

    move-result v3

    if-eqz v3, :cond_33

    add-int/lit8 v0, v0, 0x1

    :cond_33
    iget-object v3, p0, Lt/n;->a:[Lt/L;

    aget-object v3, v3, v6

    iget-object v4, p0, Lt/n;->a:[Lt/L;

    aget-object v4, v4, v2

    invoke-static {v3, v4, p1}, Lt/N;->b(Lt/L;Lt/L;Lt/L;)Z

    move-result v3

    if-eqz v3, :cond_43

    add-int/lit8 v0, v0, 0x1

    :cond_43
    if-ne v0, v1, :cond_46

    :goto_45
    return v1

    :cond_46
    move v1, v2

    goto :goto_45

    :cond_48
    move v0, v2

    goto :goto_13
.end method

.method public b()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public b(Lt/W;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lt/n;->a()Lt/V;

    move-result-object v0

    invoke-virtual {p1}, Lt/W;->a()Lt/V;

    move-result-object v2

    invoke-virtual {v0, v2}, Lt/V;->a(Lt/W;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    move v0, v1

    :goto_11
    invoke-virtual {p1}, Lt/W;->b()I

    move-result v2

    if-ge v0, v2, :cond_24

    invoke-virtual {p1, v0}, Lt/W;->a(I)Lt/L;

    move-result-object v2

    invoke-virtual {p0, v2}, Lt/n;->a(Lt/L;)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_24
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public c()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public d()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lt/n;

    if-eqz v0, :cond_13

    check-cast p1, Lt/n;

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    iget-object v1, p1, Lt/n;->a:[Lt/L;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_13
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public f()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()Lt/L;
    .registers 3

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lt/n;->a:[Lt/L;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/n;->a:[Lt/L;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/n;->a:[Lt/L;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/n;->a:[Lt/L;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lt/n;->a:[Lt/L;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
