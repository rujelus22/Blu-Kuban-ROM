.class Lcom/google/common/collect/ax;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/au;

.field final synthetic b:Lcom/google/common/collect/av;


# direct methods
.method constructor <init>(Lcom/google/common/collect/av;)V
    .registers 3
    .parameter

    .prologue
    .line 2903
    iput-object p1, p0, Lcom/google/common/collect/ax;->b:Lcom/google/common/collect/av;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 2906
    new-instance v0, Lcom/google/common/collect/ay;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ay;-><init>(Lcom/google/common/collect/ax;)V

    iput-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/au;
    .registers 3

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3003
    iget-object v1, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public a(Lcom/google/common/collect/au;)Z
    .registers 4
    .parameter

    .prologue
    .line 2990
    invoke-interface {p1}, Lcom/google/common/collect/au;->i()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 2994
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->i()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 2995
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-static {p1, v0}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 2997
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/au;
    .registers 3

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3009
    iget-object v1, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    if-ne v0, v1, :cond_c

    .line 3010
    const/4 v0, 0x0

    .line 3014
    :goto_b
    return-object v0

    .line 3013
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ax;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 3053
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3054
    :goto_6
    iget-object v1, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    if-eq v0, v1, :cond_13

    .line 3055
    invoke-interface {v0}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v1

    .line 3056
    invoke-static {v0}, Lcom/google/common/collect/X;->f(Lcom/google/common/collect/au;)V

    move-object v0, v1

    .line 3058
    goto :goto_6

    .line 3060
    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    iget-object v1, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0, v1}, Lcom/google/common/collect/au;->c(Lcom/google/common/collect/au;)V

    .line 3061
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    iget-object v1, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0, v1}, Lcom/google/common/collect/au;->d(Lcom/google/common/collect/au;)V

    .line 3062
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3032
    check-cast p1, Lcom/google/common/collect/au;

    .line 3033
    invoke-interface {p1}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/as;->a:Lcom/google/common/collect/as;

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
    .line 3038
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

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

    .prologue
    .line 3066
    new-instance v0, Lcom/google/common/collect/az;

    invoke-virtual {p0}, Lcom/google/common/collect/ax;->a()Lcom/google/common/collect/au;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/az;-><init>(Lcom/google/common/collect/ax;Lcom/google/common/collect/au;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 2903
    check-cast p1, Lcom/google/common/collect/au;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ax;->a(Lcom/google/common/collect/au;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2903
    invoke-virtual {p0}, Lcom/google/common/collect/ax;->a()Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2903
    invoke-virtual {p0}, Lcom/google/common/collect/ax;->b()Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3020
    check-cast p1, Lcom/google/common/collect/au;

    .line 3021
    invoke-interface {p1}, Lcom/google/common/collect/au;->i()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3022
    invoke-interface {p1}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v1

    .line 3023
    invoke-static {v0, v1}, Lcom/google/common/collect/X;->c(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 3024
    invoke-static {p1}, Lcom/google/common/collect/X;->f(Lcom/google/common/collect/au;)V

    .line 3026
    sget-object v0, Lcom/google/common/collect/as;->a:Lcom/google/common/collect/as;

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
    .line 3043
    const/4 v1, 0x0

    .line 3044
    iget-object v0, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/au;

    if-eq v0, v2, :cond_12

    .line 3046
    add-int/lit8 v1, v1, 0x1

    .line 3045
    invoke-interface {v0}, Lcom/google/common/collect/au;->h()Lcom/google/common/collect/au;

    move-result-object v0

    goto :goto_7

    .line 3048
    :cond_12
    return v1
.end method
