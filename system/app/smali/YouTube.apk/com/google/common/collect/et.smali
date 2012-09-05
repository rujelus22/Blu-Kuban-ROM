.class Lcom/google/common/collect/et;
.super Lcom/google/common/collect/bm;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/google/common/collect/bm;-><init>()V

    .line 543
    iput-object p1, p0, Lcom/google/common/collect/et;->a:Ljava/util/Collection;

    .line 544
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/google/common/collect/et;->delegate()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 577
    invoke-static {p0, p1}, Lcom/google/common/collect/at;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/et;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/common/collect/et;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 551
    invoke-super {p0}, Lcom/google/common/collect/bm;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 552
    new-instance v1, Lcom/google/common/collect/eu;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/eu;-><init>(Lcom/google/common/collect/et;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 565
    invoke-static {p0}, Lcom/google/common/collect/fq;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 569
    invoke-static {p0, p1}, Lcom/google/common/collect/fq;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
