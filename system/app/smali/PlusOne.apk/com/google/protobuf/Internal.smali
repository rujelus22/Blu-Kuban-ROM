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

.method public static isValidUtf8(Lcom/google/protobuf/ByteString;)Z
    .registers 13
    .parameter "byteString"

    .prologue
    const/16 v11, 0xf4

    const/16 v10, 0xbf

    const/16 v9, 0x80

    const/4 v7, 0x0

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
    if-ge v5, v6, :cond_7c

    .line 121
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v0, v8, 0xff

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
    const/16 v8, 0xc2

    if-lt v0, v8, :cond_21

    if-le v0, v11, :cond_22

    .line 184
    .end local v0           #byte1:I
    :cond_21
    :goto_21
    return v7

    .line 131
    .restart local v0       #byte1:I
    :cond_22
    if-ge v4, v6, :cond_21

    .line 135
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v1, v8, 0xff

    .line 136
    .local v1, byte2:I
    if-lt v1, v9, :cond_30

    if-le v1, v10, :cond_32

    :cond_30
    move v4, v5

    .line 138
    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_21

    .line 140
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_32
    const/16 v8, 0xdf

    if-le v0, v8, :cond_d

    .line 146
    if-lt v5, v6, :cond_3a

    move v4, v5

    .line 148
    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_21

    .line 150
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_3a
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v2, v8, 0xff

    .line 151
    .local v2, byte3:I
    if-lt v2, v9, :cond_21

    if-gt v2, v10, :cond_21

    .line 155
    const/16 v8, 0xef

    if-gt v0, v8, :cond_5c

    .line 158
    const/16 v8, 0xe0

    if-ne v0, v8, :cond_52

    const/16 v8, 0xa0

    if-lt v1, v8, :cond_21

    :cond_52
    const/16 v8, 0xed

    if-ne v0, v8, :cond_5a

    const/16 v8, 0x9f

    if-gt v1, v8, :cond_21

    :cond_5a
    :goto_5a
    move v5, v4

    .line 183
    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_d

    .line 167
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_5c
    if-ge v4, v6, :cond_21

    .line 171
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v8

    and-int/lit16 v3, v8, 0xff

    .line 172
    .local v3, byte4:I
    if-lt v3, v9, :cond_6a

    if-le v3, v10, :cond_6c

    :cond_6a
    move v4, v5

    .line 174
    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_21

    .line 177
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_6c
    const/16 v8, 0xf0

    if-ne v0, v8, :cond_74

    const/16 v8, 0x90

    if-lt v1, v8, :cond_7a

    :cond_74
    if-ne v0, v11, :cond_7f

    const/16 v8, 0x8f

    if-le v1, v8, :cond_7f

    :cond_7a
    move v4, v5

    .line 180
    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_21

    .line 184
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v2           #byte3:I
    .end local v3           #byte4:I
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_7c
    const/4 v7, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_21

    .end local v4           #index:I
    .restart local v0       #byte1:I
    .restart local v1       #byte2:I
    .restart local v2       #byte3:I
    .restart local v3       #byte4:I
    .restart local v5       #index:I
    :cond_7f
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_5a
.end method
