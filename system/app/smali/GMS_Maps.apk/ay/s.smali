.class Lay/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/aR;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lay/u;

.field final synthetic c:Lay/r;


# direct methods
.method constructor <init>(Lay/r;Ljava/lang/String;Lay/u;)V
    .registers 4

    iput-object p1, p0, Lay/s;->c:Lay/r;

    iput-object p2, p0, Lay/s;->a:Ljava/lang/String;

    iput-object p3, p0, Lay/s;->b:Lay/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .registers 8

    if-eqz p2, :cond_57

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p2

    invoke-interface {v0, p2, v1, v2}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    iget-object v1, p0, Lay/s;->c:Lay/r;

    invoke-static {v1}, Lay/r;->a(Lay/r;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lay/s;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lay/s;->c:Lay/r;

    invoke-static {v0}, Lay/r;->b(Lay/r;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lay/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lay/s;->b:Lay/u;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lay/s;->b:Lay/u;

    invoke-virtual {v1}, Lay/u;->b()Z

    move-result v1

    if-eqz v1, :cond_6b

    :cond_35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_39
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lay/q;

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    iget-object v3, p0, Lay/s;->c:Lay/r;

    invoke-static {v3}, Lay/r;->c(Lay/r;)Lcom/google/googlenav/android/ac;

    move-result-object v3

    new-instance v4, Lay/t;

    invoke-direct {v4, p0, v0}, Lay/t;-><init>(Lay/s;Lay/q;)V

    invoke-virtual {v3, v4, v2}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    goto :goto_39

    :cond_57
    iget-object v0, p0, Lay/s;->c:Lay/r;

    invoke-static {v0}, Lay/r;->b(Lay/r;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lay/s;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lay/s;->b:Lay/u;

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lay/s;->b:Lay/u;

    invoke-virtual {v0}, Lay/u;->b()Z

    :cond_6b
    return-void
.end method
