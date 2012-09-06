.class final LajT;
.super Ljava/util/AbstractQueue;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Laka",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 3284
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3285
    new-instance v0, LajU;

    invoke-direct {v0, p0}, LajU;-><init>(LajT;)V

    iput-object v0, p0, LajT;->a:Laka;

    return-void
.end method


# virtual methods
.method public a()Laka;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3336
    iget-object v0, p0, LajT;->a:Laka;

    invoke-interface {v0}, Laka;->b()Laka;

    move-result-object v0

    .line 3337
    iget-object v1, p0, LajT;->a:Laka;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public a(Laka;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3325
    invoke-interface {p1}, Laka;->c()Laka;

    move-result-object v0

    invoke-interface {p1}, Laka;->b()Laka;

    move-result-object v1

    invoke-static {v0, v1}, Lajx;->a(Laka;Laka;)V

    .line 3328
    iget-object v0, p0, LajT;->a:Laka;

    invoke-interface {v0}, Laka;->c()Laka;

    move-result-object v0

    invoke-static {v0, p1}, Lajx;->a(Laka;Laka;)V

    .line 3329
    iget-object v0, p0, LajT;->a:Laka;

    invoke-static {p1, v0}, Lajx;->a(Laka;Laka;)V

    .line 3331
    const/4 v0, 0x1

    return v0
.end method

.method public b()Laka;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3342
    iget-object v0, p0, LajT;->a:Laka;

    invoke-interface {v0}, Laka;->b()Laka;

    move-result-object v0

    .line 3343
    iget-object v1, p0, LajT;->a:Laka;

    if-ne v0, v1, :cond_c

    .line 3344
    const/4 v0, 0x0

    .line 3348
    :goto_b
    return-object v0

    .line 3347
    :cond_c
    invoke-virtual {p0, v0}, LajT;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 3386
    iget-object v0, p0, LajT;->a:Laka;

    invoke-interface {v0}, Laka;->b()Laka;

    move-result-object v0

    .line 3387
    :goto_6
    iget-object v1, p0, LajT;->a:Laka;

    if-eq v0, v1, :cond_13

    .line 3388
    invoke-interface {v0}, Laka;->b()Laka;

    move-result-object v1

    .line 3389
    invoke-static {v0}, Lajx;->b(Laka;)V

    move-object v0, v1

    .line 3391
    goto :goto_6

    .line 3393
    :cond_13
    iget-object v0, p0, LajT;->a:Laka;

    iget-object v1, p0, LajT;->a:Laka;

    invoke-interface {v0, v1}, Laka;->a(Laka;)V

    .line 3394
    iget-object v0, p0, LajT;->a:Laka;

    iget-object v1, p0, LajT;->a:Laka;

    invoke-interface {v0, v1}, Laka;->b(Laka;)V

    .line 3395
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3366
    check-cast p1, Laka;

    .line 3367
    invoke-interface {p1}, Laka;->b()Laka;

    move-result-object v0

    sget-object v1, LajZ;->a:LajZ;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 3372
    iget-object v0, p0, LajT;->a:Laka;

    invoke-interface {v0}, Laka;->b()Laka;

    move-result-object v0

    iget-object v1, p0, LajT;->a:Laka;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Laka",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3399
    new-instance v0, LajV;

    invoke-virtual {p0}, LajT;->a()Laka;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LajV;-><init>(LajT;Laka;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3284
    check-cast p1, Laka;

    invoke-virtual {p0, p1}, LajT;->a(Laka;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3284
    invoke-virtual {p0}, LajT;->a()Laka;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3284
    invoke-virtual {p0}, LajT;->b()Laka;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3354
    check-cast p1, Laka;

    .line 3355
    invoke-interface {p1}, Laka;->c()Laka;

    move-result-object v0

    .line 3356
    invoke-interface {p1}, Laka;->b()Laka;

    move-result-object v1

    .line 3357
    invoke-static {v0, v1}, Lajx;->a(Laka;Laka;)V

    .line 3358
    invoke-static {p1}, Lajx;->b(Laka;)V

    .line 3360
    sget-object v0, LajZ;->a:LajZ;

    if-eq v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public size()I
    .registers 4

    .prologue
    .line 3377
    const/4 v1, 0x0

    .line 3378
    iget-object v0, p0, LajT;->a:Laka;

    invoke-interface {v0}, Laka;->b()Laka;

    move-result-object v0

    :goto_7
    iget-object v2, p0, LajT;->a:Laka;

    if-eq v0, v2, :cond_12

    .line 3379
    add-int/lit8 v1, v1, 0x1

    .line 3378
    invoke-interface {v0}, Laka;->b()Laka;

    move-result-object v0

    goto :goto_7

    .line 3381
    :cond_12
    return v1
.end method
