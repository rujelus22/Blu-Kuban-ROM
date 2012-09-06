.class final Lcom/google/common/base/CharMatcher$13;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->forPredicate(Lcom/google/common/base/Predicate;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$predicate:Lcom/google/common/base/Predicate;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/common/base/Predicate;)V
    .registers 3
    .parameter "x0"
    .parameter

    .prologue
    .line 538
    iput-object p2, p0, Lcom/google/common/base/CharMatcher$13;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Character;)Z
    .registers 4
    .parameter "character"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$13;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 538
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher$13;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$13;->val$predicate:Lcom/google/common/base/Predicate;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
