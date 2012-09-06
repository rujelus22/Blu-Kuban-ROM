.class final Lcom/google/common/collect/Cut$BelowValue;
.super Lcom/google/common/collect/Cut;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .registers 3
    .parameter

    .prologue
    .line 234
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 235
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 232
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-super {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method final describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 269
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    return-void
.end method

.method final describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    return-void
.end method

.method final greatestValueBelow(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/cr;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method final isLessThan(Ljava/lang/Comparable;)Z
    .registers 3
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method final leastValueAbove(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method final typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 241
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method final typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 244
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method final withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 247
    sget-object v0, Lcom/google/common/collect/cq;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 254
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 251
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/cr;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 252
    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object p0

    :goto_1d
    :pswitch_1d
    return-object p0

    :cond_1e
    new-instance p0, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    goto :goto_1d

    .line 247
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method

.method final withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 258
    sget-object v0, Lcom/google/common/collect/cq;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 265
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 260
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/Cut$BelowValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/cr;->previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 261
    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object p0

    .line 263
    :goto_1d
    :pswitch_1d
    return-object p0

    .line 261
    :cond_1e
    new-instance p0, Lcom/google/common/collect/Cut$AboveValue;

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut$AboveValue;-><init>(Ljava/lang/Comparable;)V

    goto :goto_1d

    .line 258
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method
