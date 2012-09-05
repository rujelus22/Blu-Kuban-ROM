.class LK/e;
.super LK/ba;


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:LK/d;


# direct methods
.method constructor <init>(LK/d;Ljava/util/Map$Entry;)V
    .registers 3

    iput-object p1, p0, LK/e;->b:LK/d;

    iput-object p2, p0, LK/e;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, LK/ba;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .registers 2

    iget-object v0, p0, LK/e;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/e;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, LK/e;->b:LK/d;

    iget-object v0, v0, LK/d;->c:LK/c;

    invoke-virtual {v0, p0}, LK/c;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "entry no longer in map"

    invoke-static {v0, v3}, Lcom/google/common/base/v;->b(ZLjava/lang/Object;)V

    invoke-virtual {p0}, LK/e;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :goto_19
    return-object p1

    :cond_1a
    iget-object v0, p0, LK/e;->b:LK/d;

    iget-object v0, v0, LK/d;->c:LK/c;

    iget-object v0, v0, LK/c;->b:LK/a;

    invoke-virtual {v0, p1}, LK/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    :goto_27
    const-string v3, "value already present: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/v;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, LK/e;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, LK/e;->b:LK/d;

    iget-object v2, v2, LK/d;->c:LK/c;

    iget-object v2, v2, LK/c;->b:LK/a;

    invoke-virtual {p0}, LK/e;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, LK/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "entry no longer in map"

    invoke-static {v2, v3}, Lcom/google/common/base/v;->b(ZLjava/lang/Object;)V

    iget-object v2, p0, LK/e;->b:LK/d;

    iget-object v2, v2, LK/d;->c:LK/c;

    iget-object v2, v2, LK/c;->b:LK/a;

    invoke-virtual {p0}, LK/e;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, p1}, LK/a;->a(LK/a;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_19

    :cond_5c
    move v0, v2

    goto :goto_27
.end method
