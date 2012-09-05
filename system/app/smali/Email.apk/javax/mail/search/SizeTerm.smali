.class public final Ljavax/mail/search/SizeTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "SizeTerm.java"


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 74
    instance-of v0, p1, Ljavax/mail/search/SizeTerm;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Ljavax/mail/search/IntegerComparisonTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 4
    .parameter

    .prologue
    .line 60
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I

    move-result v0

    .line 61
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 63
    invoke-super {p0, v0}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 69
    :goto_b
    return v0

    .line 66
    :catch_c
    move-exception v0

    .line 69
    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method
