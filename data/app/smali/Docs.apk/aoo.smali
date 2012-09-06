.class final Laoo;
.super Ljava/lang/Object;
.source "ConstructionContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laox",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field a:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Laoo;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Laoy;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoy;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_f

    .line 66
    invoke-virtual {p1, p2}, Laoy;->f(Ljava/lang/Class;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    .line 69
    :cond_f
    iget-object v0, p0, Laoo;->a:Ljava/util/List;

    if-nez v0, :cond_1a

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoo;->a:Ljava/util/List;

    .line 73
    :cond_1a
    new-instance v0, Laox;

    invoke-direct {v0}, Laox;-><init>()V

    .line 74
    iget-object v1, p0, Laoo;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {p2}, Laod;->a(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 77
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    const-class v4, Laol;

    aput-object v4, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Laoo;->a:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Laoo;->a:Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Laoo;->a:Z

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Laoo;->a:Z

    .line 53
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Laoo;->a:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 83
    iget-object v0, p0, Laoo;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laox;

    .line 84
    invoke-virtual {v0, p1}, Laox;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 87
    :cond_1a
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Laoo;->a:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Laoo;->a:Ljava/util/List;

    .line 58
    return-void
.end method
