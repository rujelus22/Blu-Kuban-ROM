.class final Lcom/google/common/collect/ij;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter

    .prologue
    .line 964
    invoke-direct {p0}, Lcom/google/common/collect/dc;-><init>()V

    .line 965
    iput-object p1, p0, Lcom/google/common/collect/ij;->a:Ljava/util/Set;

    .line 966
    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 993
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ij;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Ljava/util/Set;

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1001
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/common/collect/ij;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 974
    new-instance v1, Lcom/google/common/collect/ik;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ik;-><init>(Lcom/google/common/collect/ij;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/google/common/collect/ij;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 989
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ij;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
