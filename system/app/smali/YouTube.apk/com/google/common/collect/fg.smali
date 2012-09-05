.class final Lcom/google/common/collect/fg;
.super Lcom/google/common/collect/bm;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/common/collect/bm;-><init>()V

    .line 580
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/fg;->a:Ljava/util/Collection;

    .line 581
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/google/common/collect/fg;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/cr;->a(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 609
    invoke-static {p0, p1}, Lcom/google/common/collect/at;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/google/common/collect/fg;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/common/collect/fg;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/common/collect/fg;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 587
    new-instance v1, Lcom/google/common/collect/fh;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/fh;-><init>(Lcom/google/common/collect/fg;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 600
    invoke-static {p0}, Lcom/google/common/collect/fq;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 603
    invoke-static {p0, p1}, Lcom/google/common/collect/fq;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
