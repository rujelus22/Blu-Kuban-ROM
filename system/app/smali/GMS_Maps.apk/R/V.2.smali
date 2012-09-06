.class public Lr/V;
.super Ln/am;
.source "SourceFile"


# instance fields
.field private final d:Ln/G;


# direct methods
.method public constructor <init>(Ln/am;Ln/G;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    invoke-virtual {p1}, Ln/am;->c()I

    move-result v1

    invoke-virtual {p1}, Ln/am;->d()I

    move-result v2

    invoke-virtual {p1}, Ln/am;->j()Ln/av;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Ln/am;-><init>(IIILn/av;)V

    .line 70
    iput-object p2, p0, Lr/V;->d:Ln/G;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Ln/av;)Ln/am;
    .registers 5
    .parameter

    .prologue
    .line 75
    new-instance v0, Lr/V;

    invoke-super {p0, p1}, Ln/am;->a(Ln/av;)Ln/am;

    move-result-object v1

    iget-object v2, p0, Lr/V;->d:Ln/G;

    invoke-direct {v0, v1, v2}, Lr/V;-><init>(Ln/am;Ln/G;)V

    return-object v0
.end method

.method public a(Lr/V;)Z
    .registers 4
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lr/V;->d:Ln/G;

    iget-object v1, p1, Lr/V;->d:Ln/G;

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
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 89
    if-ne p1, p0, :cond_4

    .line 90
    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lr/V;

    if-eqz v1, :cond_16

    invoke-super {p0, p1}, Ln/am;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    check-cast p1, Lr/V;

    invoke-virtual {p0, p1}, Lr/V;->a(Lr/V;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_16
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 84
    invoke-super {p0}, Ln/am;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lr/V;->d:Ln/G;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public k()Ln/G;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lr/V;->d:Ln/G;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[layer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr/V;->d:Ln/G;

    invoke-virtual {v1}, Ln/G;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string v0, " params: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v0, p0, Lr/V;->d:Ln/G;

    invoke-virtual {v0}, Ln/G;->d()[Ljava/lang/String;

    move-result-object v2

    .line 106
    const/4 v0, 0x0

    :goto_1d
    array-length v3, v2

    if-ge v0, v3, :cond_36

    .line 107
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    add-int/lit8 v0, v0, 0x2

    goto :goto_1d

    .line 109
    :cond_36
    const-string v0, " coords: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ln/am;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
