.class public final Ljavax/mail/search/RecipientTerm;
.super Ljavax/mail/search/AddressTerm;
.source "RecipientTerm.java"


# instance fields
.field protected type:Ljavax/mail/Message$RecipientType;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 96
    instance-of v0, p1, Ljavax/mail/search/RecipientTerm;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Ljavax/mail/search/RecipientTerm;

    iget-object v0, v0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-super {p0, p1}, Ljavax/mail/search/AddressTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getRecipientType()Ljavax/mail/Message$RecipientType;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljavax/mail/search/AddressTerm;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    :try_start_1
    iget-object v1, p0, Ljavax/mail/search/RecipientTerm;->type:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_16

    move v1, v0

    .line 79
    :goto_a
    array-length v3, v2

    if-ge v1, v3, :cond_16

    .line 81
    aget-object v3, v2, v1

    invoke-super {p0, v3}, Ljavax/mail/search/AddressTerm;->match(Ljavax/mail/Address;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_1a

    move-result v3

    if-eqz v3, :cond_17

    .line 83
    const/4 v0, 0x1

    .line 91
    :cond_16
    :goto_16
    return v0

    .line 79
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 88
    :catch_1a
    move-exception v1

    goto :goto_16
.end method
