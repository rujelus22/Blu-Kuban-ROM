.class public final Ljm;
.super Ljs;
.source "a"


# instance fields
.field protected final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljt;[Ljt;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljt;",
            "[",
            "Ljt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p2, p3}, Ljs;-><init>(Ljt;[Ljt;)V

    .line 22
    if-nez p1, :cond_d

    .line 23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null constructor not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_d
    iput-object p1, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Ljr;
    .registers 5
    .parameter

    .prologue
    .line 61
    new-instance v0, Ljr;

    invoke-virtual {p0, p1}, Ljm;->b(I)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Ljm;->d:[Ljt;

    aget-object v2, v2, p1

    invoke-direct {v0, v1, v2}, Ljr;-><init>(Ljava/lang/reflect/Type;Ljt;)V

    return-object v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ljava/lang/reflect/Type;
    .registers 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 80
    array-length v1, v0

    if-lt p1, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    aget-object v0, v0, p1

    goto :goto_a
.end method

.method public final c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final f()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 73
    array-length v1, v0

    if-gtz v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_a
.end method

.method public final g()Ljava/lang/reflect/Member;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[constructor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljm;->a:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", annotations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljm;->c:Ljt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
