.class public Lx/Y;
.super Lt/af;


# instance fields
.field private final d:Lt/C;


# direct methods
.method public constructor <init>(IIILt/C;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lt/af;-><init>(III)V

    iput-object p4, p0, Lx/Y;->d:Lt/C;

    return-void
.end method

.method public constructor <init>(Lt/af;Lt/C;)V
    .registers 6

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    invoke-virtual {p1}, Lt/af;->c()I

    move-result v1

    invoke-virtual {p1}, Lt/af;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p2}, Lx/Y;-><init>(IIILt/C;)V

    return-void
.end method


# virtual methods
.method public a()Lt/C;
    .registers 2

    iget-object v0, p0, Lx/Y;->d:Lt/C;

    return-object v0
.end method

.method public a(Lx/Y;)Z
    .registers 4

    iget-object v0, p0, Lx/Y;->d:Lt/C;

    iget-object v1, p1, Lx/Y;->d:Lt/C;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lx/Y;

    if-eqz v1, :cond_16

    invoke-super {p0, p1}, Lt/af;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    check-cast p1, Lx/Y;

    invoke-virtual {p0, p1}, Lx/Y;->a(Lx/Y;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_16
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    invoke-super {p0}, Lt/af;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lx/Y;->d:Lt/C;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[layer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx/Y;->d:Lt/C;

    invoke-virtual {v1}, Lt/C;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, " params: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lx/Y;->d:Lt/C;

    invoke-virtual {v0}, Lt/C;->d()[Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1d
    array-length v3, v2

    if-ge v0, v3, :cond_36

    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    :cond_36
    const-string v0, " coords: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lt/af;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
