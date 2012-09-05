.class public final Lly;
.super Llz;
.source "a"


# instance fields
.field protected final a:[Lnd;

.field protected final b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lly;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lnd;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lnd;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            "[",
            "Lnd;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Llz;-><init>(Ljava/lang/Class;)V

    .line 46
    if-eqz p2, :cond_9

    array-length v0, p2

    if-nez v0, :cond_e

    .line 47
    :cond_9
    iput-object v1, p0, Lly;->b:[Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lly;->a:[Lnd;

    .line 53
    :goto_d
    return-void

    .line 50
    :cond_e
    iput-object p2, p0, Lly;->b:[Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lly;->a:[Lnd;

    goto :goto_d
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    iget-object v1, p0, Lly;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lly;->a:[Lnd;

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lly;->a:[Lnd;

    array-length v1, v1

    if-lez v1, :cond_3f

    .line 93
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const/4 v1, 0x1

    .line 95
    iget-object v2, p0, Lly;->a:[Lnd;

    array-length v3, v2

    move v4, v1

    move v1, v7

    :goto_23
    if-ge v1, v3, :cond_3a

    aget-object v5, v2, v1

    .line 96
    if-eqz v4, :cond_34

    move v4, v7

    .line 101
    :goto_2a
    invoke-virtual {v5}, Lnd;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 99
    :cond_34
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 103
    :cond_3a
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 134
    if-ltz p1, :cond_b

    iget-object v0, p0, Lly;->b:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lly;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 135
    :cond_b
    const/4 v0, 0x0

    .line 137
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lly;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_c
.end method

.method protected final a(Ljava/lang/Class;)Lnd;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lly;

    iget-object v1, p0, Lly;->b:[Ljava/lang/String;

    iget-object v2, p0, Lly;->a:[Lnd;

    invoke-direct {v0, p1, v1, v2}, Lly;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lnd;)V

    return-object v0
.end method

.method public final b(I)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 125
    if-ltz p1, :cond_b

    iget-object v0, p0, Lly;->a:[Lnd;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lly;->a:[Lnd;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 126
    :cond_b
    const/4 v0, 0x0

    .line 128
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lly;->a:[Lnd;

    aget-object v0, v0, p1

    goto :goto_c
.end method

.method public final b(Ljava/lang/Class;)Lnd;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.narrowContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 177
    if-ne p1, p0, :cond_6

    move v0, v7

    .line 200
    :goto_5
    return v0

    .line 178
    :cond_6
    if-nez p1, :cond_a

    move v0, v6

    goto :goto_5

    .line 179
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v6

    goto :goto_5

    .line 181
    :cond_16
    check-cast p1, Lly;

    .line 184
    iget-object v0, p1, Lly;->d:Ljava/lang/Class;

    iget-object v1, p0, Lly;->d:Ljava/lang/Class;

    if-eq v0, v1, :cond_20

    move v0, v6

    goto :goto_5

    .line 187
    :cond_20
    iget-object v0, p0, Lly;->a:[Lnd;

    .line 188
    iget-object v1, p1, Lly;->a:[Lnd;

    .line 189
    if-nez v0, :cond_2f

    .line 190
    if-eqz v1, :cond_2b

    array-length v0, v1

    if-nez v0, :cond_2d

    :cond_2b
    move v0, v7

    goto :goto_5

    :cond_2d
    move v0, v6

    goto :goto_5

    .line 192
    :cond_2f
    if-nez v1, :cond_33

    move v0, v6

    goto :goto_5

    .line 194
    :cond_33
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_39

    move v0, v6

    goto :goto_5

    .line 195
    :cond_39
    array-length v2, v0

    move v3, v6

    :goto_3b
    if-ge v3, v2, :cond_4c

    .line 196
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lnd;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    move v0, v6

    .line 197
    goto :goto_5

    .line 195
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_4c
    move v0, v7

    .line 200
    goto :goto_5
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lly;->a:[Lnd;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lly;->a:[Lnd;

    array-length v0, v0

    goto :goto_5
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 170
    const-string v1, "[simple type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lly;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
