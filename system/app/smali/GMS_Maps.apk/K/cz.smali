.class final LK/cz;
.super LK/bp;


# instance fields
.field final transient a:Ljava/lang/Object;

.field final transient b:Ljava/lang/Object;

.field private transient c:Ljava/util/Map$Entry;

.field private transient d:LK/bu;

.field private transient e:LK/bu;

.field private transient f:LK/bi;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, LK/bp;-><init>()V

    iput-object p1, p0, LK/cz;->a:Ljava/lang/Object;

    iput-object p2, p0, LK/cz;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Map$Entry;)V
    .registers 3

    invoke-direct {p0}, LK/bp;-><init>()V

    iput-object p1, p0, LK/cz;->c:Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LK/cz;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LK/cz;->b:Ljava/lang/Object;

    return-void
.end method

.method private g()Ljava/util/Map$Entry;
    .registers 3

    iget-object v0, p0, LK/cz;->c:Ljava/util/Map$Entry;

    if-nez v0, :cond_e

    iget-object v0, p0, LK/cz;->a:Ljava/lang/Object;

    iget-object v1, p0, LK/cz;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, LK/cb;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, LK/cz;->c:Ljava/util/Map$Entry;

    :cond_e
    return-object v0
.end method


# virtual methods
.method public a()LK/bu;
    .registers 2

    iget-object v0, p0, LK/cz;->d:LK/bu;

    if-nez v0, :cond_e

    invoke-direct {p0}, LK/cz;->g()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, LK/bu;->d(Ljava/lang/Object;)LK/bu;

    move-result-object v0

    iput-object v0, p0, LK/cz;->d:LK/bu;

    :cond_e
    return-object v0
.end method

.method public b()LK/bu;
    .registers 2

    iget-object v0, p0, LK/cz;->e:LK/bu;

    if-nez v0, :cond_c

    iget-object v0, p0, LK/cz;->a:Ljava/lang/Object;

    invoke-static {v0}, LK/bu;->d(Ljava/lang/Object;)LK/bu;

    move-result-object v0

    iput-object v0, p0, LK/cz;->e:LK/bu;

    :cond_c
    return-object v0
.end method

.method public c()LK/bi;
    .registers 3

    iget-object v0, p0, LK/cz;->f:LK/bi;

    if-nez v0, :cond_d

    new-instance v0, LK/cA;

    iget-object v1, p0, LK/cz;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, LK/cA;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LK/cz;->f:LK/bi;

    :cond_d
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/cz;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/cz;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, LK/cz;->a()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_6

    move v2, v1

    :cond_5
    :goto_5
    return v2

    :cond_6
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, LK/cz;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v3, p0, LK/cz;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    :goto_39
    move v2, v0

    goto :goto_5

    :cond_3b
    move v0, v2

    goto :goto_39
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/cz;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, LK/cz;->b:Ljava/lang/Object;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, LK/cz;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, LK/cz;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    invoke-virtual {p0}, LK/cz;->b()LK/bu;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LK/cz;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LK/cz;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    invoke-virtual {p0}, LK/cz;->c()LK/bi;

    move-result-object v0

    return-object v0
.end method
