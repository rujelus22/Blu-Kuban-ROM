.class public Lcom/google/googlenav/az;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .registers 7
    .parameter

    .prologue
    .line 77
    .line 78
    if-nez p0, :cond_a

    .line 79
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    .line 82
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_18
    const-wide/16 v1, 0x0

    .line 85
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 87
    const/4 v4, -0x1

    if-ne v3, v4, :cond_34

    .line 89
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_34
    const-wide/16 v4, 0xa

    mul-long/2addr v1, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 93
    :cond_3c
    return-wide v1
.end method

.method public static a(J)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 33
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_a
    return-object v0

    .line 37
    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 40
    const-string v5, "9223372036854775808"

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_2c
    if-ltz v2, :cond_51

    .line 48
    if-ltz v1, :cond_4e

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_34
    add-int/lit8 v0, v0, -0x30

    .line 51
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    .line 55
    add-int/2addr v0, v7

    add-int/2addr v0, v3

    .line 56
    rem-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    div-int/lit8 v3, v0, 0xa

    .line 45
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2c

    .line 48
    :cond_4e
    const/16 v0, 0x30

    goto :goto_34

    .line 59
    :cond_51
    if-eqz v3, :cond_56

    .line 60
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    :cond_56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 104
    invoke-static {p0, v3}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v1

    .line 105
    invoke-static {p0, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {p1, v3}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v3

    .line 108
    invoke-static {p1, v4}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 110
    if-ne v3, v0, :cond_19

    if-ne v1, v0, :cond_19

    .line 116
    :goto_18
    return v0

    .line 113
    :cond_19
    if-eqz v4, :cond_1d

    if-nez v2, :cond_1f

    .line 114
    :cond_1d
    const/4 v0, 0x0

    goto :goto_18

    .line 116
    :cond_1f
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_18
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;ZLjava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 134
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v1

    .line 135
    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v2

    .line 137
    if-ne p1, v0, :cond_11

    if-ne v1, v0, :cond_11

    .line 143
    :goto_10
    return v0

    .line 140
    :cond_11
    if-eqz p2, :cond_15

    if-nez v2, :cond_17

    .line 141
    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    .line 143
    :cond_17
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10
.end method
