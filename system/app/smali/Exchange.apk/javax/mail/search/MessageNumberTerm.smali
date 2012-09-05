.class public final Ljavax/mail/search/MessageNumberTerm;
.super Ljavax/mail/search/IntegerComparisonTerm;
.source "MessageNumberTerm.java"


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 69
    instance-of v0, p1, Ljavax/mail/search/MessageNumberTerm;

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
    .registers 3
    .parameter

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v0

    invoke-super {p0, v0}, Ljavax/mail/search/IntegerComparisonTerm;->match(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v0

    .line 64
    :goto_8
    return v0

    .line 61
    :catch_9
    move-exception v0

    .line 64
    const/4 v0, 0x0

    goto :goto_8
.end method
