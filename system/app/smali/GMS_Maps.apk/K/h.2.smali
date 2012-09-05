.class LK/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Map$Entry;

.field final synthetic b:Ljava/util/Iterator;

.field final synthetic c:LK/g;


# direct methods
.method constructor <init>(LK/g;Ljava/util/Iterator;)V
    .registers 3

    iput-object p1, p0, LK/h;->c:LK/g;

    iput-object p2, p0, LK/h;->b:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    iget-object v0, p0, LK/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, LK/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, LK/h;->a:Ljava/util/Map$Entry;

    iget-object v0, p0, LK/h;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, LK/h;->a:Ljava/util/Map$Entry;

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    iget-object v0, p0, LK/h;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LK/h;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v1, p0, LK/h;->c:LK/g;

    iget-object v1, v1, LK/g;->a:LK/a;

    invoke-static {v1, v0}, LK/a;->b(LK/a;Ljava/lang/Object;)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_5
.end method
