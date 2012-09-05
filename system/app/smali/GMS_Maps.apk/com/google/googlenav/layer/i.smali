.class public Lcom/google/googlenav/layer/i;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private final c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lam/b;)V
    .registers 8

    const/4 v5, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    new-instance v1, Lcom/google/googlenav/layer/e;

    const-string v0, ""

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lam/b;->l(I)I

    move-result v2

    if-lez v2, :cond_3e

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v2, :cond_3e

    iget-object v3, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    invoke-virtual {p1, v5, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_3e
    return-void
.end method


# virtual methods
.method public a()Lam/b;
    .registers 5

    new-instance v1, Lam/b;

    sget-object v0, LbD/r;->c:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    iget-object v2, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lam/b;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1e
    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/e;

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/layer/e;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/layer/i;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numSubNodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/i;->b:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
