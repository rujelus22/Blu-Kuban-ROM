.class LK/c;
.super LK/bc;


# instance fields
.field final a:Ljava/util/Set;

.field final synthetic b:LK/a;


# direct methods
.method private constructor <init>(LK/a;)V
    .registers 3

    iput-object p1, p0, LK/c;->b:LK/a;

    invoke-direct {p0}, LK/bc;-><init>()V

    iget-object v0, p0, LK/c;->b:LK/a;

    invoke-static {v0}, LK/a;->a(LK/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, LK/c;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(LK/a;LK/b;)V
    .registers 3

    invoke-direct {p0, p1}, LK/c;-><init>(LK/a;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, LK/c;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected synthetic b()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, LK/c;->b:LK/a;

    invoke-virtual {v0}, LK/a;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, LK/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, LK/cb;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0, p1}, LK/c;->a(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/c;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    iget-object v0, p0, LK/c;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, LK/d;

    invoke-direct {v1, p0, v0}, LK/d;-><init>(LK/c;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, LK/c;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, LK/c;->b:LK/a;

    invoke-static {v0}, LK/a;->b(LK/a;)LK/a;

    move-result-object v0

    invoke-static {v0}, LK/a;->a(LK/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0, p1}, LK/c;->b(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0, p1}, LK/c;->c(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/c;->e()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, LK/c;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
