.class final Ldbxyzptlk/v/o;
.super Ljava/util/AbstractCollection;
.source "panda.py"


# instance fields
.field final synthetic a:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;)V
    .registers 2
    .parameter

    .prologue
    .line 1873
    iput-object p1, p0, Ldbxyzptlk/v/o;->a:Ldbxyzptlk/v/e;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 1897
    iget-object v0, p0, Ldbxyzptlk/v/o;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->clear()V

    .line 1898
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1892
    iget-object v0, p0, Ldbxyzptlk/v/o;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0, p1}, Ldbxyzptlk/v/e;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .registers 2

    .prologue
    .line 1887
    iget-object v0, p0, Ldbxyzptlk/v/o;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1877
    new-instance v0, Ldbxyzptlk/v/n;

    iget-object v1, p0, Ldbxyzptlk/v/o;->a:Ldbxyzptlk/v/e;

    invoke-direct {v0, v1}, Ldbxyzptlk/v/n;-><init>(Ldbxyzptlk/v/e;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 1882
    iget-object v0, p0, Ldbxyzptlk/v/o;->a:Ldbxyzptlk/v/e;

    invoke-virtual {v0}, Ldbxyzptlk/v/e;->size()I

    move-result v0

    return v0
.end method
