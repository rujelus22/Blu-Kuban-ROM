.class Ljcifs/netbios/d;
.super Ljcifs/netbios/f;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljcifs/netbios/f;-><init>()V

    new-instance v0, Ljcifs/netbios/b;

    invoke-direct {v0}, Ljcifs/netbios/b;-><init>()V

    iput-object v0, p0, Ljcifs/netbios/d;->r:Ljcifs/netbios/b;

    return-void
.end method


# virtual methods
.method a([BI)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method b([BI)I
    .registers 4

    invoke-virtual {p0, p1, p2}, Ljcifs/netbios/d;->m([BI)I

    move-result v0

    return v0
.end method

.method c([BI)I
    .registers 10

    const/4 v0, 0x0

    iget v1, p0, Ljcifs/netbios/d;->e:I

    if-nez v1, :cond_9

    iget v1, p0, Ljcifs/netbios/d;->d:I

    if-eqz v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0x60

    shr-int/lit8 v1, v1, 0x5

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, v2}, Ljcifs/netbios/d;->e([BI)I

    move-result v2

    if-eqz v2, :cond_30

    iget-object v3, p0, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    iget v4, p0, Ljcifs/netbios/d;->a:I

    new-instance v5, Ljcifs/netbios/g;

    iget-object v6, p0, Ljcifs/netbios/d;->r:Ljcifs/netbios/b;

    invoke-direct {v5, v6, v2, v0, v1}, Ljcifs/netbios/g;-><init>(Ljcifs/netbios/b;IZI)V

    aput-object v5, v3, v4

    :goto_2e
    const/4 v0, 0x6

    goto :goto_9

    :cond_30
    iget-object v0, p0, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    iget v1, p0, Ljcifs/netbios/d;->a:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NameQueryResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Ljcifs/netbios/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",addrEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljcifs/netbios/d;->b:[Ljcifs/netbios/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
