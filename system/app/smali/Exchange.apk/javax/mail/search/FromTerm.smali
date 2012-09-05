.class public final Ljavax/mail/search/FromTerm;
.super Ljavax/mail/search/AddressTerm;
.source "FromTerm.java"


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 80
    instance-of v0, p1, Ljavax/mail/search/FromTerm;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Ljavax/mail/search/AddressTerm;->equals(Ljava/lang/Object;)Z

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
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 60
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;

    move-result-object v2

    .line 61
    if-eqz v2, :cond_14

    move v1, v0

    .line 63
    :goto_8
    array-length v3, v2

    if-ge v1, v3, :cond_14

    .line 65
    aget-object v3, v2, v1

    invoke-super {p0, v3}, Ljavax/mail/search/AddressTerm;->match(Ljavax/mail/Address;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_18

    move-result v3

    if-eqz v3, :cond_15

    .line 67
    const/4 v0, 0x1

    .line 75
    :cond_14
    :goto_14
    return v0

    .line 63
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 72
    :catch_18
    move-exception v1

    goto :goto_14
.end method
