.class public Lz/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lz/s;->a:[F

    .line 21
    invoke-virtual {p0}, Lz/s;->a()Lz/s;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lz/s;
    .registers 5

    .prologue
    const/high16 v3, 0x3f80

    .line 28
    const/4 v0, 0x1

    :goto_3
    iget-object v1, p0, Lz/s;->a:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_12

    .line 29
    iget-object v1, p0, Lz/s;->a:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 31
    :cond_12
    iget-object v0, p0, Lz/s;->a:[F

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 32
    iget-object v0, p0, Lz/s;->a:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 33
    iget-object v0, p0, Lz/s;->a:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 34
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const/4 v0, 0x0

    :goto_6
    const/16 v2, 0x9

    if-ge v0, v2, :cond_47

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lz/s;->a:[F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lz/s;->a:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lz/s;->a:[F

    add-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v0, v0, 0x3

    goto :goto_6

    .line 75
    :cond_47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
