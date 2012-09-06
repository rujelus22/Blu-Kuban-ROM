.class Lah/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aR;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lah/v;

.field final synthetic c:Lah/s;


# direct methods
.method constructor <init>(Lah/s;Ljava/lang/String;Lah/v;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lah/t;->c:Lah/s;

    iput-object p2, p0, Lah/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lah/t;->b:Lah/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 174
    if-eqz p2, :cond_57

    .line 175
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p2

    invoke-interface {v0, p2, v1, v2}, LS/h;->a([BII)LS/f;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lah/t;->c:Lah/s;

    invoke-static {v1}, Lah/s;->a(Lah/s;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lah/t;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lah/t;->c:Lah/s;

    invoke-static {v0}, Lah/s;->b(Lah/s;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lah/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 185
    iget-object v1, p0, Lah/t;->b:Lah/v;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lah/t;->b:Lah/v;

    invoke-virtual {v1}, Lah/v;->b()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 186
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

    check-cast v0, Lah/p;

    .line 187
    if-eqz v0, :cond_39

    .line 188
    const/4 v2, 0x1

    .line 189
    iget-object v3, p0, Lah/t;->c:Lah/s;

    invoke-static {v3}, Lah/s;->c(Lah/s;)Lcom/google/googlenav/android/Y;

    move-result-object v3

    new-instance v4, Lah/u;

    invoke-direct {v4, p0, v0}, Lah/u;-><init>(Lah/t;Lah/p;)V

    invoke-virtual {v3, v4, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    goto :goto_39

    .line 200
    :cond_57
    iget-object v0, p0, Lah/t;->c:Lah/s;

    invoke-static {v0}, Lah/s;->b(Lah/s;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lah/t;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lah/t;->b:Lah/v;

    if-eqz v0, :cond_6b

    .line 203
    iget-object v0, p0, Lah/t;->b:Lah/v;

    invoke-virtual {v0}, Lah/v;->b()Z

    .line 206
    :cond_6b
    return-void
.end method
