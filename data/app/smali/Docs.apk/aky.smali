.class final Laky;
.super LahH;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahH",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lajx;

.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lajx;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 3777
    iput-object p1, p0, Laky;->a:Lajx;

    invoke-direct {p0}, LahH;-><init>()V

    .line 3778
    iput-object p2, p0, Laky;->a:Ljava/lang/Object;

    .line 3779
    iput-object p3, p0, Laky;->b:Ljava/lang/Object;

    .line 3780
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3795
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_20

    .line 3796
    check-cast p1, Ljava/util/Map$Entry;

    .line 3797
    iget-object v1, p0, Laky;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Laky;->b:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v0, 0x1

    .line 3799
    :cond_20
    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 3784
    iget-object v0, p0, Laky;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3789
    iget-object v0, p0, Laky;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 3805
    iget-object v0, p0, Laky;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Laky;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3810
    iget-object v0, p0, Laky;->a:Lajx;

    iget-object v1, p0, Laky;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lajx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3811
    iput-object p1, p0, Laky;->b:Ljava/lang/Object;

    .line 3812
    return-object v0
.end method
