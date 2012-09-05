.class public Lcom/google/googlenav/aA;
.super Ljava/lang/Object;

# interfaces
.implements Laf/j;
.implements Lar/m;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentMap;

.field private b:Lcom/google/googlenav/aC;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK/bW;

    invoke-direct {v0}, LK/bW;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, LK/bW;->a(I)LK/bW;

    move-result-object v0

    invoke-virtual {v0}, LK/bW;->l()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/aB;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/aA;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/aA;
    .registers 1

    sget-object v0, Lcom/google/googlenav/aD;->a:Lcom/google/googlenav/aA;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/g;->e(Lam/b;I)I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/googlenav/ah;Z)V
    .registers 6

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bw()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->bx()Lam/b;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)Z
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ah;->g(Lam/b;)V

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/aA;->b:Lcom/google/googlenav/aC;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/googlenav/aA;->b:Lcom/google/googlenav/aC;

    invoke-interface {v0}, Lcom/google/googlenav/aC;->a()V

    :cond_e
    return-void
.end method

.method public g()Lar/k;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/aA;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {v0}, Lam/b;->e()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_c

    :cond_1f
    new-instance v0, Lar/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
