.class final Lcom/google/common/base/FunctionalEquivalence;
.super Lcom/google/common/base/Equivalence;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final function:Lcom/google/common/base/v;

.field private final resultEquivalence:Lcom/google/common/base/Equivalence;


# direct methods
.method constructor <init>(Lcom/google/common/base/v;Lcom/google/common/base/Equivalence;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/v;

    iput-object v0, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    .line 47
    invoke-static {p2}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Equivalence;

    iput-object v0, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    .line 48
    return-void
.end method


# virtual methods
.method protected final doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    invoke-interface {v1, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    invoke-interface {v2, p2}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final doHash(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    invoke-interface {v1, p1}, Lcom/google/common/base/v;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    if-ne p1, p0, :cond_5

    .line 67
    :cond_4
    :goto_4
    return v0

    .line 62
    :cond_5
    instance-of v2, p1, Lcom/google/common/base/FunctionalEquivalence;

    if-eqz v2, :cond_21

    .line 63
    check-cast p1, Lcom/google/common/base/FunctionalEquivalence;

    .line 64
    iget-object v2, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    iget-object v3, p1, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v3, p1, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1f
    move v0, v1

    goto :goto_4

    :cond_21
    move v0, v1

    .line 67
    goto :goto_4
.end method

.method public final hashCode()I
    .registers 4

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
