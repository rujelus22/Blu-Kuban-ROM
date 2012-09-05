.class abstract Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;
.super Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;
.source "FIFEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field offset:I

.field final omitEmptyStrings:Z

.field final toSplit:Ljava/lang/CharSequence;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "splitter"
    .parameter "toSplit"

    .prologue
    .line 498
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;-><init>(Lcom/google/android/apps/plus/phone/FIFEUtil$1;)V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->offset:I

    .line 499
    #getter for: Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;->access$200(Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 500
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    .line 501
    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 505
    :cond_1
    iget v3, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->offset:I

    if-eq v3, v4, :cond_30

    .line 506
    iget v2, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->offset:I

    .line 509
    .local v2, start:I
    iget v3, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->offset:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    .line 510
    .local v1, separatorPosition:I
    if-ne v1, v4, :cond_28

    .line 511
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 512
    .local v0, end:I
    iput v4, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->offset:I

    .line 518
    :goto_17
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v3, :cond_1d

    if-eq v2, v0, :cond_1

    .line 522
    :cond_1d
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 524
    .end local v0           #end:I
    .end local v1           #separatorPosition:I
    .end local v2           #start:I
    :goto_27
    return-object v3

    .line 514
    .restart local v1       #separatorPosition:I
    .restart local v2       #start:I
    :cond_28
    move v0, v1

    .line 515
    .restart local v0       #end:I
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->offset:I

    goto :goto_17

    .line 524
    .end local v0           #end:I
    .end local v1           #separatorPosition:I
    .end local v2           #start:I
    :cond_30
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$SplittingIterator;->endOfData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_27
.end method

.method abstract separatorEnd(I)I
.end method

.method abstract separatorStart(I)I
.end method
