.class public abstract Llibcore/net/UriCodec;
.super Ljava/lang/Object;
.source "UriCodec.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .registers 11
    .parameter "builder"
    .parameter "s"
    .parameter "charset"
    .parameter "isPartiallyEncoded"

    .prologue
    const/16 v5, 0x25

    const/4 v4, -0x1

    .line 96
    if-nez p2, :cond_b

    .line 97
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 100
    :cond_b
    const/4 v1, -0x1

    .line 101
    .local v1, escapeStart:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_63

    .line 102
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 103
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_1f

    const/16 v3, 0x7a

    if-le v0, v3, :cond_39

    :cond_1f
    const/16 v3, 0x41

    if-lt v0, v3, :cond_27

    const/16 v3, 0x5a

    if-le v0, v3, :cond_39

    :cond_27
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2f

    const/16 v3, 0x39

    if-le v0, v3, :cond_39

    :cond_2f
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    move-result v3

    if-nez v3, :cond_39

    if-ne v0, v5, :cond_5f

    if-eqz p4, :cond_5f

    .line 108
    :cond_39
    if-eq v1, v4, :cond_43

    .line 109
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 110
    const/4 v1, -0x1

    .line 112
    :cond_43
    if-ne v0, v5, :cond_51

    if-eqz p4, :cond_51

    .line 114
    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1, p2, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 115
    add-int/lit8 v2, v2, 0x2

    .line 101
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 116
    :cond_51
    const/16 v3, 0x20

    if-ne v0, v3, :cond_5b

    .line 117
    const/16 v3, 0x2b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 119
    :cond_5b
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4e

    .line 121
    :cond_5f
    if-ne v1, v4, :cond_4e

    .line 122
    move v1, v2

    goto :goto_4e

    .line 125
    .end local v0           #c:C
    :cond_63
    if-eq v1, v4, :cond_70

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, p3}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 128
    :cond_70
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;B)V
    .registers 3
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 211
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Byte;->toHexString(BZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 7
    .parameter "builder"
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_10

    aget-byte v1, v0, v2

    .line 206
    .local v1, b:B
    invoke-static {p0, v1}, Llibcore/net/UriCodec;->appendHex(Ljava/lang/StringBuilder;B)V

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 208
    .end local v1           #b:B
    :cond_10
    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 201
    const/4 v0, 0x0

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, v1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;ZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 14
    .parameter "s"
    .parameter "convertPlus"
    .parameter "charset"

    .prologue
    const/16 v10, 0x2b

    const/16 v9, 0x25

    const/4 v8, -0x1

    .line 149
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_14

    if-eqz p1, :cond_13

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v8, :cond_14

    .line 181
    .end local p0
    :cond_13
    :goto_13
    return-object p0

    .line 153
    .restart local p0
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .local v5, result:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 155
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_c4

    .line 156
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 157
    .local v0, c:C
    if-ne v0, v9, :cond_b7

    .line 159
    :cond_2f
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v6, v7, :cond_50

    .line 160
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incomplete % sequence at: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 162
    :cond_50
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v1

    .line 163
    .local v1, d1:I
    add-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v2

    .line 164
    .local v2, d2:I
    if-eq v1, v8, :cond_68

    if-ne v2, v8, :cond_91

    .line 165
    :cond_68
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid % sequence "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x3

    invoke-virtual {p0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 168
    :cond_91
    shl-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v2

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 169
    add-int/lit8 v3, v3, 0x3

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_a6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_2f

    .line 171
    :cond_a6
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_23

    .line 174
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_b7
    if-eqz p1, :cond_bd

    if-ne v0, v10, :cond_bd

    .line 175
    const/16 v0, 0x20

    .line 177
    :cond_bd
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_23

    .line 181
    .end local v0           #c:C
    :cond_c4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_13
.end method

.method private static hexToInt(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 189
    const/16 v0, 0x30

    if-gt v0, p0, :cond_b

    const/16 v0, 0x39

    if-gt p0, v0, :cond_b

    .line 190
    add-int/lit8 v0, p0, -0x30

    .line 196
    :goto_a
    return v0

    .line 191
    :cond_b
    const/16 v0, 0x61

    if-gt v0, p0, :cond_18

    const/16 v0, 0x66

    if-gt p0, v0, :cond_18

    .line 192
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 193
    :cond_18
    const/16 v0, 0x41

    if-gt v0, p0, :cond_25

    const/16 v0, 0x46

    if-gt p0, v0, :cond_25

    .line 194
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_a

    .line 196
    :cond_25
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public static validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "s"
    .parameter "legal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    .local v0, ch:C
    const/16 v2, 0x61

    if-lt v0, v2, :cond_13

    const/16 v2, 0x7a

    if-le v0, v2, :cond_32

    :cond_13
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1b

    const/16 v2, 0x5a

    if-le v0, v2, :cond_32

    :cond_1b
    const/16 v2, 0x30

    if-lt v0, v2, :cond_23

    const/16 v2, 0x39

    if-le v0, v2, :cond_32

    :cond_23
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-gt v2, v3, :cond_32

    .line 81
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character"

    invoke-direct {v2, p0, v3, v1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 75
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    .end local v0           #ch:C
    :cond_35
    return-void
.end method


# virtual methods
.method public final appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .parameter "builder"
    .parameter "s"

    .prologue
    .line 138
    sget-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 139
    return-void
.end method

.method public final appendPartiallyEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 5
    .parameter "builder"
    .parameter "s"

    .prologue
    .line 142
    sget-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 143
    return-void
.end method

.method public final encode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 5
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract isRetained(C)Z
.end method

.method public final validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "uri"
    .parameter "start"
    .parameter "end"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 44
    move v3, p2

    .local v3, i:I
    :goto_2
    if-ge v3, p3, :cond_a8

    .line 45
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 46
    .local v0, ch:C
    const/16 v4, 0x61

    if-lt v0, v4, :cond_10

    const/16 v4, 0x7a

    if-le v0, v4, :cond_26

    :cond_10
    const/16 v4, 0x41

    if-lt v0, v4, :cond_18

    const/16 v4, 0x5a

    if-le v0, v4, :cond_26

    :cond_18
    const/16 v4, 0x30

    if-lt v0, v4, :cond_20

    const/16 v4, 0x39

    if-le v0, v4, :cond_26

    :cond_20
    invoke-virtual {p0, v0}, Llibcore/net/UriCodec;->isRetained(C)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 50
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 51
    :cond_29
    const/16 v4, 0x25

    if-ne v0, v4, :cond_8f

    .line 52
    add-int/lit8 v4, v3, 0x2

    if-lt v4, p3, :cond_4a

    .line 53
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incomplete % sequence in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 55
    :cond_4a
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v1

    .line 56
    .local v1, d1:I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Llibcore/net/UriCodec;->hexToInt(C)I

    move-result v2

    .line 57
    .local v2, d2:I
    if-eq v1, v5, :cond_62

    if-ne v2, v5, :cond_8b

    .line 58
    :cond_62
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid % sequence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 61
    :cond_8b
    add-int/lit8 v3, v3, 0x3

    .line 62
    goto/16 :goto_2

    .line 63
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_8f
    new-instance v4, Ljava/net/URISyntaxException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal character in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    .line 66
    .end local v0           #ch:C
    :cond_a8
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
