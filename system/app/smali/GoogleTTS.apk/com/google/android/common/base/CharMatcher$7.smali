.class final Lcom/google/android/common/base/CharMatcher$7;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 309
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/android/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/4 v0, -0x1

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 5
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 319
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 320
    .local v0, length:I
    invoke-static {p2, v0}, Lcom/google/android/common/base/Preconditions;->checkPositionIndex(II)I

    .line 321
    const/4 v1, -0x1

    return v1
.end method

.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 331
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public negate()Lcom/google/android/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 365
    sget-object v0, Lcom/google/android/common/base/CharMatcher$7;->ANY:Lcom/google/android/common/base/CharMatcher;

    return-object v0
.end method

.method public or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .registers 3
    .parameter "other"

    .prologue
    .line 362
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/base/CharMatcher;

    return-object v0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 370
    return-object p0
.end method

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .registers 2
    .parameter "table"

    .prologue
    .line 368
    return-void
.end method
