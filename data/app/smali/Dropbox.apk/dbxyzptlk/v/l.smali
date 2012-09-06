.class final Ldbxyzptlk/v/l;
.super Ljava/util/AbstractSet;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;)V
    .registers 2
    .parameter

    .prologue
    .line 1840
    iput-object p1, p0, Ldbxyzptlk/v/l;->a:Ldbxyzptlk/v/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 1869
    iget-object v0, p0, Ldbxyzptlk/v/l;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->clear()V

    .line 1870
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1859
    iget-object v0, p0, Ldbxyzptlk/v/l;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0, p1}, Ldbxyzptlk/v/e;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 1854
    iget-object v0, p0, Ldbxyzptlk/v/l;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1844
    new-instance v0, Ldbxyzptlk/v/k;

    iget-object v1, p0, Ldbxyzptlk/v/l;->a:Ldbxyzptlk/v/e;

    invoke-direct {v0, v1}, Ldbxyzptlk/v/k;-><init>(Ldbxyzptlk/v/e;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1864
    iget-object v0, p0, Ldbxyzptlk/v/l;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0, p1}, Ldbxyzptlk/v/e;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1849
    iget-object v0, p0, Ldbxyzptlk/v/l;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->size()I

    move-result v0

    return v0
.end method
