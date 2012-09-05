.class public abstract Lnd;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:Ljava/lang/Object;

.field protected g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lnd;->d:Ljava/lang/Class;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lnd;->e:I

    .line 60
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 305
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Class;)Lnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 151
    if-eqz p1, :cond_49

    iget-object v0, p0, Lnd;->f:Ljava/lang/Object;

    if-eqz v0, :cond_49

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to reset value handler for type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]; old handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnd;->f:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_49
    iput-object p1, p0, Lnd;->f:Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public b(I)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 290
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;)Lnd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 166
    if-eqz p1, :cond_49

    iget-object v0, p0, Lnd;->g:Ljava/lang/Object;

    if-eqz v0, :cond_49

    .line 167
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to reset type handler for type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]; old handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnd;->g:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new handler of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_49
    iput-object p1, p0, Lnd;->g:Ljava/lang/Object;

    .line 171
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 204
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 205
    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_d

    move v0, v1

    .line 214
    :goto_c
    return v0

    .line 211
    :cond_d
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    .line 212
    goto :goto_c

    .line 214
    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final d(Ljava/lang/Class;)Lnd;
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
    .line 73
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    move-object v0, p0

    .line 85
    :cond_5
    :goto_5
    return-object v0

    .line 77
    :cond_6
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not assignable to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_3b
    invoke-virtual {p0, p1}, Lnd;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lnd;->f:Ljava/lang/Object;

    if-eqz v1, :cond_48

    .line 80
    iget-object v1, p0, Lnd;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnd;->a(Ljava/lang/Object;)V

    .line 82
    :cond_48
    iget-object v1, p0, Lnd;->g:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lnd;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnd;->b(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public abstract d()Z
.end method

.method public e()Lnd;
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(Ljava/lang/Class;)Lnd;
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
    .line 97
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    if-ne p1, v0, :cond_6

    move-object v0, p0

    .line 107
    :cond_5
    :goto_5
    return-object v0

    .line 100
    :cond_6
    invoke-virtual {p0, p1}, Lnd;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lnd;->f:Ljava/lang/Object;

    if-eqz v1, :cond_13

    .line 102
    iget-object v1, p0, Lnd;->f:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnd;->a(Ljava/lang/Object;)V

    .line 104
    :cond_13
    iget-object v1, p0, Lnd;->g:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 105
    iget-object v1, p0, Lnd;->g:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnd;->b(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public f()I
    .registers 2

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public g()Lnd;
    .registers 2

    .prologue
    .line 261
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 423
    iget v0, p0, Lnd;->e:I

    return v0
.end method

.method public final i()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public final j()Z
    .registers 3

    .prologue
    .line 218
    const-class v0, Ljava/lang/Throwable;

    iget-object v1, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lnd;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    return v0
.end method

.method public final o()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lnd;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final p()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lnd;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
