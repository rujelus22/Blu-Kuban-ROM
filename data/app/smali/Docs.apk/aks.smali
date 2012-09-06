.class final Laks;
.super Ljava/util/AbstractCollection;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;


# direct methods
.method constructor <init>(Lajx;)V
    .registers 2
    .parameter

    .prologue
    .line 3857
    iput-object p1, p0, Laks;->a:Lajx;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 3881
    iget-object v0, p0, Laks;->a:Lajx;

    invoke-virtual {v0}, Lajx;->clear()V

    .line 3882
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 3876
    iget-object v0, p0, Laks;->a:Lajx;

    invoke-virtual {v0, p1}, Lajx;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 3871
    iget-object v0, p0, Laks;->a:Lajx;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3861
    new-instance v0, Lakq;

    iget-object v1, p0, Laks;->a:Lajx;

    invoke-direct {v0, v1}, Lakq;-><init>(Lajx;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 3866
    iget-object v0, p0, Laks;->a:Lajx;

    invoke-virtual {v0}, Lajx;->size()I

    move-result v0

    return v0
.end method
