.class public abstract Ljavax/mail/search/IntegerComparisonTerm;
.super Ljavax/mail/search/ComparisonTerm;
.source "IntegerComparisonTerm.java"


# instance fields
.field protected number:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 89
    instance-of v0, p1, Ljavax/mail/search/IntegerComparisonTerm;

    if-eqz v0, :cond_15

    move-object v0, p1

    check-cast v0, Ljavax/mail/search/IntegerComparisonTerm;

    iget v0, v0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    iget v1, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne v0, v1, :cond_15

    invoke-super {p0, p1}, Ljavax/mail/search/ComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getComparison()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    return v0
.end method

.method public getNumber()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 96
    iget v0, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    invoke-super {p0}, Ljavax/mail/search/ComparisonTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected match(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    iget v2, p0, Ljavax/mail/search/ComparisonTerm;->comparison:I

    packed-switch v2, :pswitch_data_2e

    move v0, v1

    .line 84
    :cond_8
    :goto_8
    return v0

    .line 72
    :pswitch_9
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-le p1, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 74
    :pswitch_f
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-lt p1, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 76
    :pswitch_15
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-eq p1, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 78
    :pswitch_1b
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ne p1, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 80
    :pswitch_21
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-gt p1, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 82
    :pswitch_27
    iget v2, p0, Ljavax/mail/search/IntegerComparisonTerm;->number:I

    if-ge p1, v2, :cond_8

    move v0, v1

    goto :goto_8

    .line 69
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_15
        :pswitch_1b
        :pswitch_21
        :pswitch_27
    .end packed-switch
.end method
