.class public final Llv;
.super Llz;
.source "a"


# instance fields
.field public final a:Lnd;


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lnd;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lnd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Llz;-><init>(Ljava/lang/Class;)V

    .line 25
    iput-object p2, p0, Llv;->a:Lnd;

    .line 26
    iget v0, p0, Llv;->e:I

    invoke-virtual {p2}, Lnd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llv;->e:I

    .line 27
    return-void
.end method

.method public static a(Ljava/lang/Class;Lnd;)Llv;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lnd;",
            ")",
            "Llv;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Llv;

    invoke-direct {v0, p0, p1}, Llv;-><init>(Ljava/lang/Class;Lnd;)V

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    iget-object v1, p0, Llv;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Llv;->a:Lnd;

    if-eqz v1, :cond_25

    .line 56
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Llv;->a:Lnd;

    invoke-virtual {v1}, Lnd;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 84
    if-nez p1, :cond_5

    const-string v0, "E"

    .line 85
    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected final a(Ljava/lang/Class;)Lnd;
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
    .line 31
    new-instance v0, Llv;

    iget-object v1, p0, Llv;->a:Lnd;

    invoke-direct {v0, p1, v1}, Llv;-><init>(Ljava/lang/Class;Lnd;)V

    return-object v0
.end method

.method public final b(I)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 75
    if-nez p1, :cond_5

    iget-object v0, p0, Llv;->a:Lnd;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final b(Ljava/lang/Class;)Lnd;
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
    .line 38
    iget-object v0, p0, Llv;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_a

    move-object v0, p0

    .line 42
    :goto_9
    return-object v0

    .line 41
    :cond_a
    iget-object v0, p0, Llv;->a:Lnd;

    invoke-virtual {v0, p1}, Lnd;->d(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 42
    new-instance v1, Llv;

    iget-object v2, p0, Llv;->d:Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Llv;-><init>(Ljava/lang/Class;Lnd;)V

    invoke-virtual {v1, p0}, Llv;->b(Lnd;)Lnd;

    move-result-object v0

    goto :goto_9
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lnd;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Llv;->a:Lnd;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 131
    :goto_5
    return v0

    .line 127
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    goto :goto_5

    .line 128
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v2

    goto :goto_5

    .line 130
    :cond_16
    check-cast p1, Llv;

    .line 131
    iget-object v0, p0, Llv;->d:Ljava/lang/Class;

    iget-object v1, p1, Llv;->d:Ljava/lang/Class;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Llv;->a:Lnd;

    iget-object v1, p1, Llv;->a:Lnd;

    invoke-virtual {v0, v1}, Lnd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v3

    goto :goto_5

    :cond_2a
    move v0, v2

    goto :goto_5
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[collection type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llv;->d:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", contains "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llv;->a:Lnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
