.class abstract Lcom/google/common/base/Splitter$SplittingIterator;
.super Lcom/google/common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field limit:I

.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;

.field final trimmer:Lcom/google/common/base/CharMatcher;


# direct methods
.method protected constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/google/common/base/AbstractIterator;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 489
    #getter for: Lcom/google/common/base/Splitter;->trimmer:Lcom/google/common/base/CharMatcher;
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$200(Lcom/google/common/base/Splitter;)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    .line 490
    #getter for: Lcom/google/common/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$300(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 491
    #getter for: Lcom/google/common/base/Splitter;->limit:I
    invoke-static {p1}, Lcom/google/common/base/Splitter;->access$400(Lcom/google/common/base/Splitter;)I

    move-result v0

    iput v0, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 492
    iput-object p2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 493
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 496
    :cond_1
    iget v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    if-eq v3, v6, :cond_80

    .line 497
    iget v2, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 500
    .local v2, start:I
    iget v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v3}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 501
    .local v1, separatorPosition:I
    if-ne v1, v6, :cond_2a

    .line 502
    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 503
    .local v0, end:I
    iput v6, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 509
    :goto_17
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 505
    .end local v0           #end:I
    :cond_2a
    move v0, v1

    .line 506
    .restart local v0       #end:I
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v3

    iput v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_17

    .line 512
    :cond_32
    :goto_32
    if-le v0, v2, :cond_47

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 513
    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 516
    :cond_47
    iget-boolean v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v3, :cond_4d

    if-eq v2, v0, :cond_1

    .line 520
    :cond_4d
    iget v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6f

    .line 524
    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 525
    iput v6, p0, Lcom/google/common/base/Splitter$SplittingIterator;->offset:I

    .line 527
    :goto_5a
    if-le v0, v2, :cond_75

    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->trimmer:Lcom/google/common/base/CharMatcher;

    iget-object v4, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v5, v0, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 528
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    .line 531
    :cond_6f
    iget v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->limit:I

    .line 534
    :cond_75
    iget-object v3, p0, Lcom/google/common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .end local v0           #end:I
    .end local v1           #separatorPosition:I
    .end local v2           #start:I
    :goto_7f
    return-object v3

    :cond_80
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_7f
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
