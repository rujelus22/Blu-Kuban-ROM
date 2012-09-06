.class final Lcom/google/common/base/CharMatcher$7;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .parameter "other"

    .prologue
    .line 343
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 286
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 4
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 338
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 292
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const/4 v0, -0x1

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 5
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 297
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 298
    .local v0, length:I
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 299
    const/4 v1, -0x1

    return v1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 303
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const/4 v0, -0x1

    return v0
.end method

.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 308
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
    .line 312
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 352
    sget-object v0, Lcom/google/common/base/CharMatcher$7;->ANY:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3
    .parameter "other"

    .prologue
    .line 348
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 358
    return-object p0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .parameter "sequence"

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 4
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 325
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .registers 2
    .parameter "table"

    .prologue
    .line 355
    return-void
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .parameter "sequence"

    .prologue
    .line 334
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
