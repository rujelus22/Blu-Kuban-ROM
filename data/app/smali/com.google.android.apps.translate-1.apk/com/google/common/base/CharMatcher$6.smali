.class final Lcom/google/common/base/CharMatcher$6;
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
    .line 206
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3
    .parameter "other"

    .prologue
    .line 267
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 206
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
    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 263
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 212
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter "sequence"
    .parameter "start"

    .prologue
    .line 216
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 217
    .local v0, length:I
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 218
    if-ne p2, v0, :cond_a

    const/4 p2, -0x1

    .end local p2
    :cond_a
    return p2
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 222
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 226
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter "sequence"

    .prologue
    .line 231
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

.method public negate()Lcom/google/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 276
    sget-object v0, Lcom/google/common/base/CharMatcher$6;->NONE:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .parameter "other"

    .prologue
    .line 271
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-object p0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 280
    return-object p0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .parameter "sequence"

    .prologue
    .line 235
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v0, ""

    return-object v0
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 5
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 240
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 241
    .local v0, array:[C
    invoke-static {v0, p2}, Ljava/util/Arrays;->fill([CC)V

    .line 242
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 247
    .local v1, retval:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1b

    .line 248
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 250
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .parameter "sequence"

    .prologue
    .line 258
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v0, ""

    return-object v0
.end method
