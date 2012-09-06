.class final LagO;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagu;


# direct methods
.method constructor <init>(Lagu;)V
    .registers 2
    .parameter

    .prologue
    .line 4464
    iput-object p1, p0, LagO;->a:Lagu;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 4493
    iget-object v0, p0, LagO;->a:Lagu;

    invoke-virtual {v0}, Lagu;->clear()V

    .line 4494
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 4483
    iget-object v0, p0, LagO;->a:Lagu;

    invoke-virtual {v0, p1}, Lagu;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 4478
    iget-object v0, p0, LagO;->a:Lagu;

    invoke-virtual {v0}, Lagu;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4468
    new-instance v0, LagN;

    iget-object v1, p0, LagO;->a:Lagu;

    invoke-direct {v0, v1}, LagN;-><init>(Lagu;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 4488
    iget-object v0, p0, LagO;->a:Lagu;

    invoke-virtual {v0, p1}, Lagu;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 4473
    iget-object v0, p0, LagO;->a:Lagu;

    invoke-virtual {v0}, Lagu;->size()I

    move-result v0

    return v0
.end method
