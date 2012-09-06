.class final Lcom/google/common/collect/Cut$AboveValue;
.super Lcom/google/common/collect/Cut;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .registers 3
    .parameter

    .prologue
    .line 292
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 293
    return-void
.end method


# virtual methods
.method final canonical(Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 3
    .parameter

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$AboveValue;->leastValueAbove(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    goto :goto_a
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 290
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-super {p0, p1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v0

    return v0
.end method

.method final describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 327
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    return-void
.end method

.method final describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    return-void
.end method

.method final greatestValueBelow(Lcom/google/common/collect/cr;)Ljava/lang/Comparable;
    .registers 3
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method final isLessThan(Ljava/lang/Comparable;)Z
    .registers 3
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-static {v0, p1}, Lcom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_a

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
    .line 333
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/cr;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method final typeAsLowerBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 299
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method final typeAsUpperBound()Lcom/google/common/collect/BoundType;
    .registers 2

    .prologue
    .line 302
    sget-object v0, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method final withLowerBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 305
    sget-object v0, Lcom/google/common/collect/cq;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 312
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 309
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/cr;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 310
    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object p0

    :goto_1d
    :pswitch_1d
    return-object p0

    :cond_1e
    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object p0

    goto :goto_1d

    .line 305
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_11
        :pswitch_1d
    .end packed-switch
.end method

.method final withUpperBoundType(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/cr;)Lcom/google/common/collect/Cut;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 316
    sget-object v0, Lcom/google/common/collect/cq;->a:[I

    invoke-virtual {p1}, Lcom/google/common/collect/BoundType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 323
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 318
    :pswitch_11
    iget-object v0, p0, Lcom/google/common/collect/Cut$AboveValue;->endpoint:Ljava/lang/Comparable;

    invoke-virtual {p2, v0}, Lcom/google/common/collect/cr;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    .line 319
    if-nez v0, :cond_1e

    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object p0

    .line 321
    :goto_1d
    :pswitch_1d
    return-object p0

    .line 319
    :cond_1e
    invoke-static {v0}, Lcom/google/common/collect/Cut$AboveValue;->belowValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object p0

    goto :goto_1d

    .line 316
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method
