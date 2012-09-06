.class Lcom/google/common/base/Predicates$NotPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ah;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final predicate:Lcom/google/common/base/ah;


# direct methods
.method constructor <init>(Lcom/google/common/base/ah;)V
    .registers 3
    .parameter

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/ah;

    iput-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ah;

    .line 305
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ah;

    invoke-interface {v0, p1}, Lcom/google/common/base/ah;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 314
    instance-of v0, p1, Lcom/google/common/base/Predicates$NotPredicate;

    if-eqz v0, :cond_f

    .line 315
    check-cast p1, Lcom/google/common/base/Predicates$NotPredicate;

    .line 316
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ah;

    iget-object v1, p1, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ah;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 318
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ah;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/Predicates$NotPredicate;->predicate:Lcom/google/common/base/ah;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
