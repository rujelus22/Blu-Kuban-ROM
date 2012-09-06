.class final LajQ;
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
    .line 3156
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3157
    new-instance v0, LajR;

    invoke-direct {v0, p0}, LajR;-><init>(LajQ;)V

    iput-object v0, p0, LajQ;->a:Laka;

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
    .line 3200
    iget-object v0, p0, LajQ;->a:Laka;

    invoke-interface {v0}, Laka;->d()Laka;

    move-result-object v0

    .line 3201
    iget-object v1, p0, LajQ;->a:Laka;

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
    .line 3189
    invoke-interface {p1}, Laka;->e()Laka;

    move-result-object v0

    invoke-interface {p1}, Laka;->d()Laka;

    move-result-object v1

    invoke-static {v0, v1}, Lajx;->b(Laka;Laka;)V

    .line 3192
    iget-object v0, p0, LajQ;->a:Laka;

    invoke-interface {v0}, Laka;->e()Laka;

    move-result-object v0

    invoke-static {v0, p1}, Lajx;->b(Laka;Laka;)V

    .line 3193
    iget-object v0, p0, LajQ;->a:Laka;

    invoke-static {p1, v0}, Lajx;->b(Laka;Laka;)V

    .line 3195
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
    .line 3206
    iget-object v0, p0, LajQ;->a:Laka;

    invoke-interface {v0}, Laka;->d()Laka;

    move-result-object v0

    .line 3207
    iget-object v1, p0, LajQ;->a:Laka;

    if-ne v0, v1, :cond_c

    .line 3208
    const/4 v0, 0x0

    .line 3212
    :goto_b
    return-object v0

    .line 3211
    :cond_c
    invoke-virtual {p0, v0}, LajQ;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 3250
    iget-object v0, p0, LajQ;->a:Laka;

    invoke-interface {v0}, Laka;->d()Laka;

    move-result-object v0

    .line 3251
    :goto_6
    iget-object v1, p0, LajQ;->a:Laka;

    if-eq v0, v1, :cond_13

    .line 3252
    invoke-interface {v0}, Laka;->d()Laka;

    move-result-object v1

    .line 3253
    invoke-static {v0}, Lajx;->c(Laka;)V

    move-object v0, v1

    .line 3255
    goto :goto_6

    .line 3257
    :cond_13
    iget-object v0, p0, LajQ;->a:Laka;

    iget-object v1, p0, LajQ;->a:Laka;

    invoke-interface {v0, v1}, Laka;->c(Laka;)V

    .line 3258
    iget-object v0, p0, LajQ;->a:Laka;

    iget-object v1, p0, LajQ;->a:Laka;

    invoke-interface {v0, v1}, Laka;->d(Laka;)V

    .line 3259
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3230
    check-cast p1, Laka;

    .line 3231
    invoke-interface {p1}, Laka;->d()Laka;

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
    .line 3236
    iget-object v0, p0, LajQ;->a:Laka;

    invoke-interface {v0}, Laka;->d()Laka;

    move-result-object v0

    iget-object v1, p0, LajQ;->a:Laka;

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
    .line 3263
    new-instance v0, LajS;

    invoke-virtual {p0}, LajQ;->a()Laka;

    move-result-object v1

    invoke-direct {v0, p0, v1}, LajS;-><init>(LajQ;Laka;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3156
    check-cast p1, Laka;

    invoke-virtual {p0, p1}, LajQ;->a(Laka;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3156
    invoke-virtual {p0}, LajQ;->a()Laka;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3156
    invoke-virtual {p0}, LajQ;->b()Laka;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3218
    check-cast p1, Laka;

    .line 3219
    invoke-interface {p1}, Laka;->e()Laka;

    move-result-object v0

    .line 3220
    invoke-interface {p1}, Laka;->d()Laka;

    move-result-object v1

    .line 3221
    invoke-static {v0, v1}, Lajx;->b(Laka;Laka;)V

    .line 3222
    invoke-static {p1}, Lajx;->c(Laka;)V

    .line 3224
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
    .line 3241
    const/4 v1, 0x0

    .line 3242
    iget-object v0, p0, LajQ;->a:Laka;

    invoke-interface {v0}, Laka;->d()Laka;

    move-result-object v0

    :goto_7
    iget-object v2, p0, LajQ;->a:Laka;

    if-eq v0, v2, :cond_12

    .line 3243
    add-int/lit8 v1, v1, 0x1

    .line 3242
    invoke-interface {v0}, Laka;->d()Laka;

    move-result-object v0

    goto :goto_7

    .line 3245
    :cond_12
    return v1
.end method
