.class public Lcom/google/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$EnumLiteMap;,
        Lcom/google/protobuf/Internal$EnumLite;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .registers 4
    .parameter "bytes"

    .prologue
    .line 93
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    .line 94
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isValidUtf8(Lcom/google/protobuf/ByteString;)Z
    .registers 13
    .parameter "byteString"

    .prologue
    const/16 v11, 0xf4

    const/16 v10, 0xbf

    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, index:I
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    .local v6, size:I
    move v5, v4

    .line 120
    .end local v4           #index:I
    .local v5, index:I
    :cond_d
    :goto_d
    if-ge v5, v6, :cond_8a

    .line 121
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 122
    .local v0, byte1:I
    if-ge v0, v9, :cond_1b

    move v5, v4

    .line 124
    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_d

    .line 127
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_1b
    const/16 v7, 0xc2

    if-lt v0, v7, :cond_21

    if-le v0, v11, :cond_23

    :cond_21
    move v7, v8

    .line 184
    .end local v0           #byte1:I
    :goto_22
    return v7

    .line 131
    .restart local v0       #byte1:I
    :cond_23
    if-lt v4, v6, :cond_27

    move v7, v8

    .line 133
    goto :goto_22

    .line 135
    :cond_27
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v1, v7, 0xff

    .line 136
    .local v1, byte2:I
    if-lt v1, v9, :cond_33

    if-le v1, v10, :cond_36

    :cond_33
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 138
    goto :goto_22

    .line 140
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_36
    const/16 v7, 0xdf

    if-le v0, v7, :cond_d

    .line 146
    if-lt v5, v6, :cond_3f

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 148
    goto :goto_22

    .line 150
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_3f
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v2, v7, 0xff

    .line 151
    .local v2, byte3:I
    if-lt v2, v9, :cond_4b

    if-le v2, v10, :cond_4d

    :cond_4b
    move v7, v8

    .line 153
    goto :goto_22

    .line 155
    :cond_4d
    const/16 v7, 0xef

    if-gt v0, v7, :cond_63

    .line 158
    const/16 v7, 0xe0

    if-ne v0, v7, :cond_59

    const/16 v7, 0xa0

    if-lt v1, v7, :cond_61

    :cond_59
    const/16 v7, 0xed

    if-ne v0, v7, :cond_88

    const/16 v7, 0x9f

    if-le v1, v7, :cond_88

    :cond_61
    move v7, v8

    .line 161
    goto :goto_22

    .line 167
    :cond_63
    if-lt v4, v6, :cond_67

    move v7, v8

    .line 169
    goto :goto_22

    .line 171
    :cond_67
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v3, v7, 0xff

    .line 172
    .local v3, byte4:I
    if-lt v3, v9, :cond_73

    if-le v3, v10, :cond_76

    :cond_73
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 174
    goto :goto_22

    .line 177
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_76
    const/16 v7, 0xf0

    if-ne v0, v7, :cond_7e

    const/16 v7, 0x90

    if-lt v1, v7, :cond_84

    :cond_7e
    if-ne v0, v11, :cond_87

    const/16 v7, 0x8f

    if-le v1, v7, :cond_87

    :cond_84
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 180
    goto :goto_22

    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_87
    move v4, v5

    .end local v3           #byte4:I
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_88
    move v5, v4

    .line 183
    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_d

    .line 184
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v2           #byte3:I
    :cond_8a
    const/4 v7, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_22
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "bytes"

    .prologue
    .line 74
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 75
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 78
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
