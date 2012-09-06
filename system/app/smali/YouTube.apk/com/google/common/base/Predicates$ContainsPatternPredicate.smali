.class Lcom/google/common/base/Predicates$ContainsPatternPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/ah;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 566
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/Predicates$ContainsPatternPredicate;-><init>(Ljava/util/regex/Pattern;)V

    .line 567
    return-void
.end method

.method constructor <init>(Ljava/util/regex/Pattern;)V
    .registers 3
    .parameter

    .prologue
    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    iput-object v0, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    .line 563
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 556
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->apply(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x0

    .line 582
    instance-of v1, p1, Lcom/google/common/base/Predicates$ContainsPatternPredicate;

    if-eqz v1, :cond_34

    .line 583
    check-cast p1, Lcom/google/common/base/Predicates$ContainsPatternPredicate;

    .line 587
    iget-object v1, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/util/regex/Pattern;->flags()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->flags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 v0, 0x1

    .line 590
    :cond_34
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 578
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->flags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 594
    invoke-static {p0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "pattern"

    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    const-string v1, "pattern.flags"

    iget-object v2, p0, Lcom/google/common/base/Predicates$ContainsPatternPredicate;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->flags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
