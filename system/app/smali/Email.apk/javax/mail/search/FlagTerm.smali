.class public final Ljavax/mail/search/FlagTerm;
.super Ljavax/mail/search/SearchTerm;
.source "FlagTerm.java"


# instance fields
.field protected flags:Ljavax/mail/Flags;

.field protected set:Z


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 122
    instance-of v1, p1, Ljavax/mail/search/FlagTerm;

    if-eqz v1, :cond_18

    .line 124
    check-cast p1, Ljavax/mail/search/FlagTerm;

    .line 125
    iget-boolean v1, p1, Ljavax/mail/search/FlagTerm;->set:Z

    iget-boolean v2, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-ne v1, v2, :cond_18

    iget-object v1, p1, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    iget-object v2, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1, v2}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    .line 127
    :cond_18
    return v0
.end method

.method public getFlags()Ljavax/mail/Flags;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    return-object v0
.end method

.method public getTestSet()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method public match(Ljavax/mail/Message;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v2

    .line 92
    iget-boolean v1, p0, Ljavax/mail/search/FlagTerm;->set:Z

    if-eqz v1, :cond_10

    .line 94
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v2, v1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags;)Z

    move-result v0

    .line 117
    :cond_f
    :goto_f
    return v0

    .line 96
    :cond_10
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getSystemFlags()[Ljavax/mail/Flags$Flag;

    move-result-object v3

    move v1, v0

    .line 97
    :goto_17
    array-length v4, v3

    if-ge v1, v4, :cond_25

    .line 99
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 104
    :cond_25
    iget-object v1, p0, Ljavax/mail/search/FlagTerm;->flags:Ljavax/mail/Flags;

    invoke-virtual {v1}, Ljavax/mail/Flags;->getUserFlags()[Ljava/lang/String;

    move-result-object v3

    move v1, v0

    .line 105
    :goto_2c
    array-length v4, v3

    if-ge v1, v4, :cond_3a

    .line 107
    aget-object v4, v3, v1

    invoke-virtual {v2, v4}, Ljavax/mail/Flags;->contains(Ljava/lang/String;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_3c

    move-result v4

    if-nez v4, :cond_f

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 112
    :cond_3a
    const/4 v0, 0x1

    goto :goto_f

    .line 114
    :catch_3c
    move-exception v1

    goto :goto_f
.end method
