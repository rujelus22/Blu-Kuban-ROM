.class public Lcom/google/googlenav/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/google/googlenav/ax;->b:Z

    .line 208
    return-void
.end method

.method public a(Lcom/google/googlenav/ay;)Z
    .registers 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b(Lcom/google/googlenav/ay;)Z
    .registers 3
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/google/googlenav/ax;->b:Z

    return v0
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/googlenav/ax;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ay;

    .line 218
    invoke-virtual {v0}, Lcom/google/googlenav/ay;->d()Z

    move-result v0

    if-nez v0, :cond_6

    .line 219
    const/4 v0, 0x1

    .line 223
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
