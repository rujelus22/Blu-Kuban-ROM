.class public Lapw;
.super Ljava/lang/Object;
.source "ProviderMethod.java"

# interfaces
.implements LaqM;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LaqM",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:LaiE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiE",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/Object;

.field private final a:Ljava/lang/reflect/Method;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LanD",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final a:Z


# direct methods
.method constructor <init>(Lant;Ljava/lang/reflect/Method;Ljava/lang/Object;LaiE;Ljava/util/List;Ljava/lang/Class;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<TT;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Object;",
            "LaiE",
            "<",
            "Laqk",
            "<*>;>;",
            "Ljava/util/List",
            "<",
            "LanD",
            "<*>;>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lapw;->a:Lant;

    .line 57
    iput-object p6, p0, Lapw;->a:Ljava/lang/Class;

    .line 58
    iput-object p3, p0, Lapw;->a:Ljava/lang/Object;

    .line 59
    iput-object p4, p0, Lapw;->a:LaiE;

    .line 60
    iput-object p2, p0, Lapw;->a:Ljava/lang/reflect/Method;

    .line 61
    iput-object p5, p0, Lapw;->a:Ljava/util/List;

    .line 62
    const-class v0, Lank;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lapw;->a:Z

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 65
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lapw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    array-length v0, v2

    if-ge v1, v0, :cond_1f

    .line 99
    iget-object v0, p0, Lapw;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    .line 98
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 105
    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lapw;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lapw;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_26} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_26} :catch_2f

    move-result-object v0

    .line 106
    return-object v0

    .line 107
    :catch_28
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 109
    :catch_2f
    move-exception v0

    .line 110
    invoke-static {v0}, LaoF;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Lcom/google/inject/Binder;)V
    .registers 5
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lapw;->a:Ljava/lang/reflect/Method;

    invoke-interface {p1, v0}, Lcom/google/inject/Binder;->a(Ljava/lang/Object;)Lcom/google/inject/Binder;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lapw;->a:Ljava/lang/Class;

    if-eqz v1, :cond_25

    .line 84
    iget-object v1, p0, Lapw;->a:Lant;

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->a(Lant;)LanU;

    move-result-object v1

    invoke-interface {v1, p0}, LanU;->a(LanD;)LanV;

    move-result-object v1

    iget-object v2, p0, Lapw;->a:Ljava/lang/Class;

    invoke-interface {v1, v2}, LanV;->a(Ljava/lang/Class;)V

    .line 89
    :goto_19
    iget-boolean v1, p0, Lapw;->a:Z

    if-eqz v1, :cond_24

    .line 92
    check-cast v0, LanA;

    iget-object v1, p0, Lapw;->a:Lant;

    invoke-interface {v0, v1}, LanA;->a(Lant;)V

    .line 94
    :cond_24
    return-void

    .line 86
    :cond_25
    iget-object v1, p0, Lapw;->a:Lant;

    invoke-interface {v0, v1}, Lcom/google/inject/Binder;->a(Lant;)LanU;

    move-result-object v1

    invoke-interface {v1, p0}, LanU;->a(LanD;)LanV;

    goto :goto_19
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lapw;->a:LaiE;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 124
    instance-of v1, p1, Lapw;

    if-eqz v1, :cond_1c

    .line 125
    check-cast p1, Lapw;

    .line 126
    iget-object v1, p0, Lapw;->a:Ljava/lang/reflect/Method;

    iget-object v2, p1, Lapw;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lapw;->a:Ljava/lang/Object;

    iget-object v2, p1, Lapw;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 129
    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lapw;->a:Ljava/lang/reflect/Method;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Provides "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lapw;->a:Ljava/lang/reflect/Method;

    invoke-static {v1}, LapX;->a(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
