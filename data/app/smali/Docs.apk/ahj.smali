.class final Lahj;
.super Ljava/util/AbstractCollection;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lagu;


# direct methods
.method constructor <init>(Lagu;)V
    .registers 2
    .parameter

    .prologue
    .line 4497
    iput-object p1, p0, Lahj;->a:Lagu;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 4521
    iget-object v0, p0, Lahj;->a:Lagu;

    invoke-virtual {v0}, Lagu;->clear()V

    .line 4522
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 4516
    iget-object v0, p0, Lahj;->a:Lagu;

    invoke-virtual {v0, p1}, Lagu;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 4511
    iget-object v0, p0, Lahj;->a:Lagu;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4501
    new-instance v0, Lahh;

    iget-object v1, p0, Lahj;->a:Lagu;

    invoke-direct {v0, v1}, Lahh;-><init>(Lagu;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 4506
    iget-object v0, p0, Lahj;->a:Lagu;

    invoke-virtual {v0}, Lagu;->size()I

    move-result v0

    return v0
.end method
