.class public final Llt;
.super Llz;
.source "a"


# instance fields
.field public final a:Lnd;

.field final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lnd;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Llz;-><init>(Ljava/lang/Class;)V

    .line 31
    iput-object p1, p0, Llt;->a:Lnd;

    .line 32
    iput-object p2, p0, Llt;->b:Ljava/lang/Object;

    .line 33
    iget v0, p0, Llt;->e:I

    invoke-virtual {p1}, Lnd;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llt;->e:I

    .line 34
    return-void
.end method

.method public static a(Lnd;)Llt;
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 45
    new-instance v1, Llt;

    invoke-direct {v1, p0, v0}, Llt;-><init>(Lnd;Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Llt;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 140
    if-nez p1, :cond_5

    const-string v0, "E"

    .line 141
    :goto_4
    return-object v0

    :cond_5
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
    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_31

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible narrowing operation: trying to narrow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Llt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_31
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 76
    invoke-static {v0}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    .line 77
    invoke-static {v0}, Llt;->a(Lnd;)Llt;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 160
    if-nez p1, :cond_5

    iget-object v0, p0, Llt;->a:Lnd;

    :goto_4
    return-object v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final b(Ljava/lang/Class;)Lnd;
    .registers 3
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
    .line 88
    iget-object v0, p0, Llt;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_a

    move-object v0, p0

    .line 92
    :goto_9
    return-object v0

    .line 91
    :cond_a
    iget-object v0, p0, Llt;->a:Lnd;

    invoke-virtual {v0, p1}, Lnd;->d(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 92
    invoke-static {v0}, Llt;->a(Lnd;)Llt;

    move-result-object v0

    invoke-virtual {v0, p0}, Llt;->b(Lnd;)Lnd;

    move-result-object v0

    goto :goto_9
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Lnd;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Llt;->a:Lnd;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 190
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    .line 195
    :goto_4
    return v0

    .line 191
    :cond_5
    if-nez p1, :cond_9

    move v0, v2

    goto :goto_4

    .line 192
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    goto :goto_4

    .line 194
    :cond_15
    check-cast p1, Llt;

    .line 195
    iget-object v0, p0, Llt;->a:Lnd;

    iget-object v1, p1, Llt;->a:Lnd;

    invoke-virtual {v0, v1}, Lnd;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[array type, component type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llt;->a:Lnd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
