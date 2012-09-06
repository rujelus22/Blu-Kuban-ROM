.class Lcom/google/common/collect/cY;
.super Lcom/google/common/collect/bp;
.source "SourceFile"


# instance fields
.field final transient a:Lcom/google/common/collect/bx;

.field final transient b:Lcom/google/common/collect/bp;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bx;)V
    .registers 6
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/common/collect/bp;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/common/collect/cY;->a:Lcom/google/common/collect/bx;

    .line 35
    invoke-static {}, Lcom/google/common/collect/bx;->i()Lcom/google/common/collect/by;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/google/common/collect/bx;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/common/collect/by;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/by;

    goto :goto_11

    .line 39
    :cond_29
    invoke-virtual {v1}, Lcom/google/common/collect/by;->a()Lcom/google/common/collect/bx;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/google/common/collect/cY;

    invoke-direct {v1, v0, p0}, Lcom/google/common/collect/cY;-><init>(Lcom/google/common/collect/bx;Lcom/google/common/collect/bp;)V

    iput-object v1, p0, Lcom/google/common/collect/cY;->b:Lcom/google/common/collect/bp;

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/bx;Lcom/google/common/collect/bp;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/common/collect/bp;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/cY;->a:Lcom/google/common/collect/bx;

    .line 46
    iput-object p2, p0, Lcom/google/common/collect/cY;->b:Lcom/google/common/collect/bp;

    .line 47
    return-void
.end method


# virtual methods
.method public synthetic b()Lcom/google/common/collect/Q;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/google/common/collect/cY;->f()Lcom/google/common/collect/bp;

    move-result-object v0

    return-object v0
.end method

.method d()Z
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/common/collect/cY;->a:Lcom/google/common/collect/bx;

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->d()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/google/common/collect/cY;->b:Lcom/google/common/collect/bp;

    invoke-virtual {v0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method e()Lcom/google/common/collect/bx;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/collect/cY;->a:Lcom/google/common/collect/bx;

    return-object v0
.end method

.method public f()Lcom/google/common/collect/bp;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/common/collect/cY;->b:Lcom/google/common/collect/bp;

    return-object v0
.end method
