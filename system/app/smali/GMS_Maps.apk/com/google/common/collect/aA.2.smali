.class Lcom/google/common/collect/aA;
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
    .line 3091
    iput-object p1, p0, Lcom/google/common/collect/aA;->b:Lcom/google/common/collect/av;

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3094
    new-instance v0, Lcom/google/common/collect/aB;

    invoke-direct {v0, p0}, Lcom/google/common/collect/aB;-><init>(Lcom/google/common/collect/aA;)V

    iput-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/au;
    .registers 3

    .prologue
    .line 3188
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3189
    iget-object v1, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public a(Lcom/google/common/collect/au;)Z
    .registers 4
    .parameter

    .prologue
    .line 3176
    invoke-interface {p1}, Lcom/google/common/collect/au;->g()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 3180
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->g()Lcom/google/common/collect/au;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 3181
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-static {p1, v0}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 3183
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/au;
    .registers 3

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3195
    iget-object v1, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    if-ne v0, v1, :cond_c

    .line 3196
    const/4 v0, 0x0

    .line 3200
    :goto_b
    return-object v0

    .line 3199
    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/common/collect/aA;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3240
    :goto_6
    iget-object v1, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    if-eq v0, v1, :cond_13

    .line 3241
    invoke-interface {v0}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v1

    .line 3242
    invoke-static {v0}, Lcom/google/common/collect/X;->e(Lcom/google/common/collect/au;)V

    move-object v0, v1

    .line 3244
    goto :goto_6

    .line 3246
    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    iget-object v1, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0, v1}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/au;)V

    .line 3247
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    iget-object v1, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0, v1}, Lcom/google/common/collect/au;->b(Lcom/google/common/collect/au;)V

    .line 3248
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3218
    check-cast p1, Lcom/google/common/collect/au;

    .line 3219
    invoke-interface {p1}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

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
    .line 3224
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

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
    .line 3252
    new-instance v0, Lcom/google/common/collect/aC;

    invoke-virtual {p0}, Lcom/google/common/collect/aA;->a()Lcom/google/common/collect/au;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/aC;-><init>(Lcom/google/common/collect/aA;Lcom/google/common/collect/au;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3091
    check-cast p1, Lcom/google/common/collect/au;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/aA;->a(Lcom/google/common/collect/au;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3091
    invoke-virtual {p0}, Lcom/google/common/collect/aA;->a()Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 3091
    invoke-virtual {p0}, Lcom/google/common/collect/aA;->b()Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 3206
    check-cast p1, Lcom/google/common/collect/au;

    .line 3207
    invoke-interface {p1}, Lcom/google/common/collect/au;->g()Lcom/google/common/collect/au;

    move-result-object v0

    .line 3208
    invoke-interface {p1}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v1

    .line 3209
    invoke-static {v0, v1}, Lcom/google/common/collect/X;->b(Lcom/google/common/collect/au;Lcom/google/common/collect/au;)V

    .line 3210
    invoke-static {p1}, Lcom/google/common/collect/X;->e(Lcom/google/common/collect/au;)V

    .line 3212
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
    .line 3229
    const/4 v1, 0x0

    .line 3230
    iget-object v0, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    invoke-interface {v0}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lcom/google/common/collect/aA;->a:Lcom/google/common/collect/au;

    if-eq v0, v2, :cond_12

    .line 3232
    add-int/lit8 v1, v1, 0x1

    .line 3231
    invoke-interface {v0}, Lcom/google/common/collect/au;->f()Lcom/google/common/collect/au;

    move-result-object v0

    goto :goto_7

    .line 3234
    :cond_12
    return v1
.end method
