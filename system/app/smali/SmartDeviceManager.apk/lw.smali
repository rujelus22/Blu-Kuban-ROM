.class public final Llw;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Ljava/lang/reflect/Type;

.field protected final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/lang/reflect/ParameterizedType;

.field protected d:Llw;

.field protected e:Llw;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 5
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Llw;->a:Ljava/lang/reflect/Type;

    .line 33
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 34
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Llw;->b:Ljava/lang/Class;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Llw;->c:Ljava/lang/reflect/ParameterizedType;

    .line 38
    :goto_10
    return-void

    .line 36
    :cond_11
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_24

    .line 37
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    iput-object p1, p0, Llw;->c:Ljava/lang/reflect/ParameterizedType;

    .line 38
    iget-object v0, p0, Llw;->c:Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Llw;->b:Ljava/lang/Class;

    goto :goto_10

    .line 40
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can not be used to construct HierarchicType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Llw;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Llw;->d:Llw;

    return-object v0
.end method

.method public final a(Llw;)V
    .registers 2
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Llw;->d:Llw;

    return-void
.end method

.method public final b()Llw;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Llw;->e:Llw;

    return-object v0
.end method

.method public final b(Llw;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Llw;->e:Llw;

    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Llw;->c:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final d()Ljava/lang/reflect/ParameterizedType;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Llw;->c:Ljava/lang/reflect/ParameterizedType;

    return-object v0
.end method

.method public final e()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Llw;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Llw;->c:Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_b

    .line 57
    iget-object v0, p0, Llw;->c:Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Llw;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
