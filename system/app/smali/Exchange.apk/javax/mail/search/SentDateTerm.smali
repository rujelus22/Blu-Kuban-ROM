.class public final Ljavax/mail/search/SentDateTerm;
.super Ljavax/mail/search/DateTerm;
.source "SentDateTerm.java"


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 75
    instance-of v0, p1, Ljavax/mail/search/SentDateTerm;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Ljavax/mail/search/DateTerm;->equals(Ljava/lang/Object;)Z

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
    .line 61
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_c

    .line 64
    invoke-super {p0, v0}, Ljavax/mail/search/DateTerm;->match(Ljava/util/Date;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v0

    .line 70
    :goto_a
    return v0

    .line 67
    :catch_b
    move-exception v0

    .line 70
    :cond_c
    const/4 v0, 0x0

    goto :goto_a
.end method
