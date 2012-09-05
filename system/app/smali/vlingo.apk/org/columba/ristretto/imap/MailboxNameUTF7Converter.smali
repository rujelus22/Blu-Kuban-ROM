.class public Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;
.super Ljava/lang/Object;
.source "MailboxNameUTF7Converter.java"


# static fields
.field private static final BASE64:I = 0x1

.field private static final PRINTABLE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "mailboxName"

    .prologue
    const/16 v11, 0x2d

    const/4 v10, -0x1

    const/16 v9, 0x26

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, lastEnd:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 185
    .local v3, nextAnd:I
    if-ne v3, v10, :cond_d

    .line 227
    .end local p0
    :goto_c
    return-object p0

    .line 187
    .restart local p0
    :cond_d
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 189
    .local v5, result:Ljava/lang/StringBuffer;
    :goto_16
    if-eq v3, v10, :cond_85

    .line 191
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_31

    .line 195
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 196
    add-int/lit8 v2, v3, 0x2

    .line 222
    :goto_2c
    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_16

    .line 199
    :cond_31
    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 200
    const/4 v1, 0x0

    .line 203
    .local v1, expanded:I
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2c

    const/16 v8, 0x2f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    .local v4, rawEncoded:Ljava/lang/StringBuffer;
    :goto_49
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_59

    .line 205
    const/16 v6, 0x41

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 210
    :cond_59
    invoke-static {v4}, Lorg/columba/ristretto/coder/Base64;->decode(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    .local v0, decoded:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 212
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7b

    .line 214
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    rem-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 217
    :cond_7b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 225
    .end local v0           #decoded:Ljava/nio/ByteBuffer;
    .end local v1           #expanded:I
    .end local v4           #rawEncoded:Ljava/lang/StringBuffer;
    :cond_85
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_c
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "mailboxName"

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, dataBits:I
    const/4 v6, 0x0

    .line 70
    .local v6, mode:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    add-int/lit8 v11, v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, buffer:Ljava/nio/ByteBuffer;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v8, result:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v5, v11, :cond_c3

    .line 77
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 79
    .local v1, c:C
    invoke-static {v1}, Lorg/columba/ristretto/imap/MailboxNameUTF7Converter;->isPrintable(C)Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 80
    if-eqz v6, :cond_7b

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    if-lez v11, :cond_7b

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3

    if-eqz v11, :cond_41

    .line 83
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3

    rsub-int/lit8 v11, v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 85
    :cond_41
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 88
    const/4 v11, 0x0

    invoke-static {v0, v11}, Lorg/columba/ristretto/coder/Base64;->encode(Ljava/nio/ByteBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 89
    .local v3, encoded:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2f

    const/16 v13, 0x2c

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, rawEncoded:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/lit8 v4, v11, 0x6

    .line 98
    .local v4, encodedBits:I
    sub-int v11, v4, v2

    div-int/lit8 v9, v11, 0x6

    .line 100
    .local v9, superfluentChars:I
    if-lez v9, :cond_72

    .line 101
    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 104
    :cond_72
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const/4 v6, 0x0

    .line 108
    const/16 v11, 0x2d

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    .end local v3           #encoded:Ljava/lang/StringBuffer;
    .end local v4           #encodedBits:I
    .end local v7           #rawEncoded:Ljava/lang/String;
    .end local v9           #superfluentChars:I
    :cond_7b
    const/16 v11, 0x26

    if-ne v1, v11, :cond_87

    .line 113
    const-string v11, "&-"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    :goto_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 115
    :cond_87
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_84

    .line 118
    :cond_8b
    const/4 v11, 0x1

    if-eq v6, v11, :cond_94

    .line 119
    const/16 v11, 0x26

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    const/4 v6, 0x1

    .line 124
    :cond_94
    add-int/lit8 v11, v5, 0x1

    :try_start_96
    invoke-virtual {p0, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-16"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 125
    .local v10, utfBytes:[B
    const/4 v11, 0x0

    aget-byte v11, v10, v11

    const/4 v12, -0x2

    if-eq v11, v12, :cond_b4

    .line 126
    const/4 v11, 0x0

    aget-byte v11, v10, v11

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    const/4 v11, 0x1

    aget-byte v11, v10, v11

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 128
    add-int/lit8 v2, v2, 0x10

    .line 130
    :cond_b4
    const/4 v11, 0x2

    aget-byte v11, v10, v11

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 131
    const/4 v11, 0x3

    aget-byte v11, v10, v11

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_c0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_96 .. :try_end_c0} :catch_119

    .line 133
    add-int/lit8 v2, v2, 0x10

    goto :goto_84

    .line 140
    .end local v1           #c:C
    .end local v10           #utfBytes:[B
    :cond_c3
    if-eqz v6, :cond_114

    .line 142
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3

    if-eqz v11, :cond_da

    .line 143
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    rem-int/lit8 v11, v11, 0x3

    rsub-int/lit8 v11, v11, 0x3

    new-array v11, v11, [B

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 145
    :cond_da
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v11

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 148
    const/4 v11, 0x0

    invoke-static {v0, v11}, Lorg/columba/ristretto/coder/Base64;->encode(Ljava/nio/ByteBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 149
    .restart local v3       #encoded:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 152
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2f

    const/16 v13, 0x2c

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 157
    .restart local v7       #rawEncoded:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/lit8 v4, v11, 0x6

    .line 158
    .restart local v4       #encodedBits:I
    sub-int v11, v4, v2

    div-int/lit8 v9, v11, 0x6

    .line 160
    .restart local v9       #superfluentChars:I
    if-lez v9, :cond_10b

    .line 161
    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 164
    :cond_10b
    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const/4 v6, 0x0

    .line 168
    const/16 v11, 0x2d

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    .end local v3           #encoded:Ljava/lang/StringBuffer;
    .end local v4           #encodedBits:I
    .end local v7           #rawEncoded:Ljava/lang/String;
    .end local v9           #superfluentChars:I
    :cond_114
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 134
    .restart local v1       #c:C
    :catch_119
    move-exception v11

    goto/16 :goto_84
.end method

.method private static isPrintable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 231
    const/16 v0, 0x20

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
