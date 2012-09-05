.class final Lcom/google/common/collect/fe;
.super Lcom/google/common/collect/bt;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/google/common/collect/bt;-><init>()V

    .line 887
    iput-object p1, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    .line 888
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 919
    invoke-static {p0, p1}, Lcom/google/common/collect/at;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 923
    invoke-static {p0, p1}, Lcom/google/common/collect/at;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 895
    iget-object v0, p0, Lcom/google/common/collect/fe;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 896
    new-instance v1, Lcom/google/common/collect/ff;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ff;-><init>(Lcom/google/common/collect/fe;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 907
    invoke-static {p0}, Lcom/google/common/collect/fq;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 911
    invoke-static {p0, p1}, Lcom/google/common/collect/fq;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
