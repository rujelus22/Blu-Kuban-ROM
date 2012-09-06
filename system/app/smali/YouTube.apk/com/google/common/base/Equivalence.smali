.class public abstract Lcom/google/common/base/Equivalence;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method protected abstract doHash(Ljava/lang/Object;)I
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 66
    if-ne p1, p2, :cond_4

    .line 67
    const/4 v0, 0x1

    .line 72
    :goto_3
    return v0

    .line 69
    :cond_4
    if-eqz p1, :cond_8

    if-nez p2, :cond_a

    .line 70
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 72
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/google/common/base/Equivalence;->doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public final equivalentTo(Ljava/lang/Object;)Lcom/google/common/base/ah;
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 257
    new-instance v0, Lcom/google/common/base/Equivalence$EquivalentToPredicate;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/Equivalence$EquivalentToPredicate;-><init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final hash(Ljava/lang/Object;)I
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 102
    if-nez p1, :cond_4

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/common/base/Equivalence;->doHash(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public final onResultOf(Lcom/google/common/base/v;)Lcom/google/common/base/Equivalence;
    .registers 3
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/google/common/base/FunctionalEquivalence;

    invoke-direct {v0, p1, p0}, Lcom/google/common/base/FunctionalEquivalence;-><init>(Lcom/google/common/base/v;Lcom/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final pairwise()Lcom/google/common/base/Equivalence;
    .registers 2

    .prologue
    .line 247
    new-instance v0, Lcom/google/common/base/PairwiseEquivalence;

    invoke-direct {v0, p0}, Lcom/google/common/base/PairwiseEquivalence;-><init>(Lcom/google/common/base/Equivalence;)V

    return-object v0
.end method

.method public final wrap(Ljava/lang/Object;)Lcom/google/common/base/Equivalence$Wrapper;
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 152
    new-instance v0, Lcom/google/common/base/Equivalence$Wrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/base/Equivalence$Wrapper;-><init>(Lcom/google/common/base/Equivalence;Ljava/lang/Object;Lcom/google/common/base/u;)V

    return-object v0
.end method
