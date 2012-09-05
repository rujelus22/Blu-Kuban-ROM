.class final Lcom/google/protobuf/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static incompleteStateFor(I)I
    .registers 2
    .parameter "byte1"

    .prologue
    .line 294
    const/16 v0, -0xc

    if-le p0, v0, :cond_5

    const/4 p0, -0x1

    .end local p0
    :cond_5
    return p0
.end method

.method private static incompleteStateFor(II)I
    .registers 3
    .parameter "byte1"
    .parameter "byte2"

    .prologue
    .line 299
    const/16 v0, -0xc

    if-gt p0, v0, :cond_8

    const/16 v0, -0x41

    if-le p1, v0, :cond_a

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    goto :goto_9
.end method

.method private static incompleteStateFor(III)I
    .registers 5
    .parameter "byte1"
    .parameter "byte2"
    .parameter "byte3"

    .prologue
    const/16 v1, -0x41

    .line 305
    const/16 v0, -0xc

    if-gt p0, v0, :cond_a

    if-gt p1, v1, :cond_a

    if-le p2, v1, :cond_c

    :cond_a
    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    shl-int/lit8 v0, p1, 0x8

    xor-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x10

    xor-int/2addr v0, v1

    goto :goto_b
.end method

.method private static incompleteStateFor([BII)I
    .registers 6
    .parameter "bytes"
    .parameter "index"
    .parameter "limit"

    .prologue
    .line 312
    add-int/lit8 v1, p1, -0x1

    aget-byte v0, p0, v1

    .line 313
    .local v0, byte1:I
    sub-int v1, p2, p1

    packed-switch v1, :pswitch_data_26

    .line 317
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 314
    :pswitch_f
    invoke-static {v0}, Lcom/google/protobuf/Utf8;->incompleteStateFor(I)I

    move-result v1

    .line 316
    :goto_13
    return v1

    .line 315
    :pswitch_14
    aget-byte v1, p0, p1

    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result v1

    goto :goto_13

    .line 316
    :pswitch_1b
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result v1

    goto :goto_13

    .line 313
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method public static isValidUtf8([BII)Z
    .registers 4
    .parameter "bytes"
    .parameter "index"
    .parameter "limit"

    .prologue
    .line 93
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static partialIsValidUtf8(I[BII)I
    .registers 13
    .parameter "state"
    .parameter "bytes"
    .parameter "index"
    .parameter "limit"

    .prologue
    const/16 v8, -0x20

    const/16 v6, -0x60

    const/4 v4, -0x1

    const/16 v7, -0x41

    .line 116
    if-eqz p0, :cond_84

    .line 124
    if-lt p2, p3, :cond_c

    .line 199
    .end local p0
    :goto_b
    return p0

    .line 127
    .restart local p0
    :cond_c
    int-to-byte v0, p0

    .line 129
    .local v0, byte1:I
    if-ge v0, v8, :cond_1c

    .line 134
    const/16 v5, -0x3e

    if-lt v0, v5, :cond_1a

    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, index:I
    aget-byte v5, p1, p2

    if-le v5, v7, :cond_83

    move p2, v3

    .end local v3           #index:I
    .restart local p2
    :cond_1a
    move p0, v4

    .line 137
    goto :goto_b

    .line 139
    :cond_1c
    const/16 v5, -0x10

    if-ge v0, v5, :cond_48

    .line 143
    shr-int/lit8 v5, p0, 0x8

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v1, v5

    .line 144
    .local v1, byte2:I
    if-nez v1, :cond_33

    .line 145
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #index:I
    aget-byte v1, p1, p2

    .line 146
    if-lt v3, p3, :cond_34

    .line 147
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    .end local p0
    move p2, v3

    .end local v3           #index:I
    .restart local p2
    goto :goto_b

    .restart local p0
    :cond_33
    move v3, p2

    .line 150
    .end local p2
    .restart local v3       #index:I
    :cond_34
    if-gt v1, v7, :cond_8b

    if-ne v0, v8, :cond_3a

    if-lt v1, v6, :cond_8b

    :cond_3a
    const/16 v5, -0x13

    if-ne v0, v5, :cond_40

    if-ge v1, v6, :cond_8b

    :cond_40
    add-int/lit8 p2, v3, 0x1

    .end local v3           #index:I
    .restart local p2
    aget-byte v5, p1, v3

    if-le v5, v7, :cond_84

    :goto_46
    move p0, v4

    .line 157
    goto :goto_b

    .line 163
    .end local v1           #byte2:I
    :cond_48
    shr-int/lit8 v5, p0, 0x8

    xor-int/lit8 v5, v5, -0x1

    int-to-byte v1, v5

    .line 164
    .restart local v1       #byte2:I
    const/4 v2, 0x0

    .line 165
    .local v2, byte3:I
    if-nez v1, :cond_5c

    .line 166
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .restart local v3       #index:I
    aget-byte v1, p1, p2

    .line 167
    if-lt v3, p3, :cond_60

    .line 168
    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8;->incompleteStateFor(II)I

    move-result p0

    .end local p0
    move p2, v3

    .end local v3           #index:I
    .restart local p2
    goto :goto_b

    .line 171
    .restart local p0
    :cond_5c
    shr-int/lit8 v5, p0, 0x10

    int-to-byte v2, v5

    move v3, p2

    .line 173
    .end local p2
    .restart local v3       #index:I
    :cond_60
    if-nez v2, :cond_6e

    .line 174
    add-int/lit8 p2, v3, 0x1

    .end local v3           #index:I
    .restart local p2
    aget-byte v2, p1, v3

    .line 175
    if-lt p2, p3, :cond_6d

    .line 176
    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Utf8;->incompleteStateFor(III)I

    move-result p0

    goto :goto_b

    :cond_6d
    move v3, p2

    .line 184
    .end local p2
    .restart local v3       #index:I
    :cond_6e
    if-gt v1, v7, :cond_89

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_89

    if-gt v2, v7, :cond_89

    add-int/lit8 p2, v3, 0x1

    .end local v3           #index:I
    .restart local p2
    aget-byte v5, p1, v3

    if-le v5, v7, :cond_84

    :goto_81
    move p0, v4

    .line 194
    goto :goto_b

    .end local v1           #byte2:I
    .end local v2           #byte3:I
    .end local p2
    .restart local v3       #index:I
    :cond_83
    move p2, v3

    .line 199
    .end local v0           #byte1:I
    .end local v3           #index:I
    .restart local p2
    :cond_84
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8([BII)I

    move-result p0

    goto :goto_b

    .end local p2
    .restart local v0       #byte1:I
    .restart local v1       #byte2:I
    .restart local v2       #byte3:I
    .restart local v3       #index:I
    :cond_89
    move p2, v3

    .end local v3           #index:I
    .restart local p2
    goto :goto_81

    .end local v2           #byte3:I
    .end local p2
    .restart local v3       #index:I
    :cond_8b
    move p2, v3

    .end local v3           #index:I
    .restart local p2
    goto :goto_46
.end method

.method public static partialIsValidUtf8([BII)I
    .registers 4
    .parameter "bytes"
    .parameter "index"
    .parameter "limit"

    .prologue
    .line 223
    :goto_0
    if-ge p1, p2, :cond_9

    aget-byte v0, p0, p1

    if-ltz v0, :cond_9

    .line 224
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 227
    :cond_9
    if-lt p1, p2, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->partialIsValidUtf8NonAscii([BII)I

    move-result v0

    goto :goto_c
.end method

.method private static partialIsValidUtf8NonAscii([BII)I
    .registers 12
    .parameter "bytes"
    .parameter "index"
    .parameter "limit"

    .prologue
    const/16 v8, -0x20

    const/16 v7, -0x60

    const/4 v3, -0x1

    const/16 v6, -0x41

    .line 238
    move v2, p1

    .end local p1
    .local v2, index:I
    :goto_8
    if-lt v2, p2, :cond_d

    .line 239
    const/4 v0, 0x0

    move p1, v2

    .line 287
    .end local v2           #index:I
    .restart local p1
    :cond_c
    :goto_c
    return v0

    .line 241
    .end local p1
    .restart local v2       #index:I
    :cond_d
    add-int/lit8 p1, v2, 0x1

    .end local v2           #index:I
    .restart local p1
    aget-byte v0, p0, v2

    .local v0, byte1:I
    if-gez v0, :cond_75

    .line 243
    if-ge v0, v8, :cond_24

    .line 246
    if-ge p1, p2, :cond_c

    .line 252
    const/16 v4, -0x3e

    if-lt v0, v4, :cond_22

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #index:I
    aget-byte v4, p0, p1

    if-le v4, v6, :cond_70

    move p1, v2

    .end local v2           #index:I
    .restart local p1
    :cond_22
    move v0, v3

    .line 254
    goto :goto_c

    .line 256
    :cond_24
    const/16 v4, -0x10

    if-ge v0, v4, :cond_49

    .line 259
    add-int/lit8 v4, p2, -0x1

    if-lt p1, v4, :cond_31

    .line 260
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result v0

    goto :goto_c

    .line 262
    :cond_31
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #index:I
    aget-byte v1, p0, p1

    .local v1, byte2:I
    if-gt v1, v6, :cond_73

    if-ne v0, v8, :cond_3b

    if-lt v1, v7, :cond_73

    :cond_3b
    const/16 v4, -0x13

    if-ne v0, v4, :cond_41

    if-ge v1, v7, :cond_73

    :cond_41
    add-int/lit8 p1, v2, 0x1

    .end local v2           #index:I
    .restart local p1
    aget-byte v4, p0, v2

    if-le v4, v6, :cond_71

    :goto_47
    move v0, v3

    .line 269
    goto :goto_c

    .line 274
    .end local v1           #byte2:I
    :cond_49
    add-int/lit8 v4, p2, -0x2

    if-lt p1, v4, :cond_52

    .line 275
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8;->incompleteStateFor([BII)I

    move-result v0

    goto :goto_c

    .line 277
    :cond_52
    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #index:I
    aget-byte v1, p0, p1

    .restart local v1       #byte2:I
    if-gt v1, v6, :cond_6d

    shl-int/lit8 v4, v0, 0x1c

    add-int/lit8 v5, v1, 0x70

    add-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1e

    if-nez v4, :cond_6d

    add-int/lit8 p1, v2, 0x1

    .end local v2           #index:I
    .restart local p1
    aget-byte v4, p0, v2

    if-gt v4, v6, :cond_6e

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #index:I
    aget-byte v4, p0, p1

    if-le v4, v6, :cond_70

    :cond_6d
    move p1, v2

    .end local v2           #index:I
    .restart local p1
    :cond_6e
    move v0, v3

    .line 287
    goto :goto_c

    .end local v1           #byte2:I
    .end local p1
    .restart local v2       #index:I
    :cond_70
    move p1, v2

    .end local v2           #index:I
    .restart local p1
    :cond_71
    move v2, p1

    .line 290
    .end local p1
    .restart local v2       #index:I
    goto :goto_8

    .restart local v1       #byte2:I
    :cond_73
    move p1, v2

    .end local v2           #index:I
    .restart local p1
    goto :goto_47

    .end local v1           #byte2:I
    :cond_75
    move v2, p1

    .end local p1
    .restart local v2       #index:I
    goto :goto_8
.end method
