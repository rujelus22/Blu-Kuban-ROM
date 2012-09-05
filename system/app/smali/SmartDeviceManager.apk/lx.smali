.class public final Llx;
.super Llz;
.source "a"


# instance fields
.field public final a:Lnd;

.field public final b:Lnd;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lnd;Lnd;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lnd;",
            "Lnd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1}, Llz;-><init>(Ljava/lang/Class;)V

    .line 30
    iput-object p2, p0, Llx;->a:Lnd;

    .line 31
    iget v0, p0, Llx;->e:I

    invoke-virtual {p2}, Lnd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llx;->e:I

    .line 32
    iput-object p3, p0, Llx;->b:Lnd;

    .line 33
    iget v0, p0, Llx;->e:I

    invoke-virtual {p3}, Lnd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llx;->e:I

    .line 34
    return-void
.end method

.method public static a(Ljava/lang/Class;Lnd;Lnd;)Llx;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lnd;",
            "Lnd;",
            ")",
            "Llx;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Llx;

    invoke-direct {v0, p0, p1, p2}, Llx;-><init>(Ljava/lang/Class;Lnd;Lnd;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v1, p0, Llx;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Llx;->a:Lnd;

    if-eqz v1, :cond_33

    .line 74
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Llx;->a:Lnd;

    invoke-virtual {v1}, Lnd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Llx;->b:Lnd;

    invoke-virtual {v1}, Lnd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 115
    if-nez p1, :cond_5

    const-string v0, "K"

    .line 117
    :goto_4
    return-object v0

    .line 116
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    const-string v0, "V"

    goto :goto_4

    .line 117
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
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
    .line 45
    new-instance v0, Llx;

    iget-object v1, p0, Llx;->a:Lnd;

    iget-object v2, p0, Llx;->b:Lnd;

    invoke-direct {v0, p1, v1, v2}, Llx;-><init>(Ljava/lang/Class;Lnd;Lnd;)V

    return-object v0
.end method

.method public final b(I)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 103
    if-nez p1, :cond_5

    iget-object v0, p0, Llx;->a:Lnd;

    .line 105
    :goto_4
    return-object v0

    .line 104
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Llx;->b:Lnd;

    goto :goto_4

    .line 105
    :cond_b
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final b(Ljava/lang/Class;)Lnd;
    .registers 6
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
    .line 52
    iget-object v0, p0, Llx;->b:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_a

    move-object v0, p0

    .line 56
    :goto_9
    return-object v0

    .line 55
    :cond_a
    iget-object v0, p0, Llx;->b:Lnd;

    invoke-virtual {v0, p1}, Lnd;->d(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 56
    new-instance v1, Llx;

    iget-object v2, p0, Llx;->d:Ljava/lang/Class;

    iget-object v3, p0, Llx;->a:Lnd;

    invoke-direct {v1, v2, v3, v0}, Llx;-><init>(Ljava/lang/Class;Lnd;Lnd;)V

    invoke-virtual {v1, p0}, Llx;->b(Lnd;)Lnd;

    move-result-object v0

    goto :goto_9
.end method

.method public final c(Ljava/lang/Class;)Lnd;
    .registers 6
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
    .line 62
    iget-object v0, p0, Llx;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_a

    move-object v0, p0

    .line 66
    :goto_9
    return-object v0

    .line 65
    :cond_a
    iget-object v0, p0, Llx;->a:Lnd;

    invoke-virtual {v0, p1}, Lnd;->d(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 66
    new-instance v1, Llx;

    iget-object v2, p0, Llx;->d:Ljava/lang/Class;

    iget-object v3, p0, Llx;->b:Lnd;

    invoke-direct {v1, v2, v0, v3}, Llx;-><init>(Ljava/lang/Class;Lnd;Lnd;)V

    invoke-virtual {v1, p0}, Llx;->b(Lnd;)Lnd;

    move-result-object v0

    goto :goto_9
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lnd;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Llx;->b:Lnd;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 156
    :goto_5
    return v0

    .line 152
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    goto :goto_5

    .line 153
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v2

    goto :goto_5

    .line 155
    :cond_16
    check-cast p1, Llx;

    .line 156
    iget-object v0, p0, Llx;->d:Ljava/lang/Class;

    iget-object v1, p1, Llx;->d:Ljava/lang/Class;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Llx;->a:Lnd;

    iget-object v1, p1, Llx;->a:Lnd;

    invoke-virtual {v0, v1}, Lnd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Llx;->b:Lnd;

    iget-object v1, p1, Llx;->b:Lnd;

    invoke-virtual {v0, v1}, Lnd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v3

    goto :goto_5

    :cond_34
    move v0, v2

    goto :goto_5
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public final g()Lnd;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Llx;->a:Lnd;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llx;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llx;->a:Lnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llx;->b:Lnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
