.class final LajY;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .registers 2
    .parameter

    .prologue
    .line 3824
    iput-object p1, p0, LajY;->a:Lajx;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3853
    iget-object v0, p0, LajY;->a:Lajx;

    invoke-virtual {v0}, Lajx;->clear()V

    .line 3854
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3843
    iget-object v0, p0, LajY;->a:Lajx;

    invoke-virtual {v0, p1}, Lajx;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3838
    iget-object v0, p0, LajY;->a:Lajx;

    invoke-virtual {v0}, Lajx;->isEmpty()Z

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
    .line 3828
    new-instance v0, LajX;

    iget-object v1, p0, LajY;->a:Lajx;

    invoke-direct {v0, v1}, LajX;-><init>(Lajx;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3848
    iget-object v0, p0, LajY;->a:Lajx;

    invoke-virtual {v0, p1}, Lajx;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 3833
    iget-object v0, p0, LajY;->a:Lajx;

    invoke-virtual {v0}, Lajx;->size()I

    move-result v0

    return v0
.end method
