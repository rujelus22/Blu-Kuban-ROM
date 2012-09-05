.class public Lcom/wssnps/mmspdu/EncodedStringValue;
.super Ljava/lang/Object;
.source "EncodedStringValue.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private mCharacterSet:I

.field private mData:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 6
    .parameter "charset"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p2, :cond_e

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_e
    iput p1, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mCharacterSet:I

    .line 55
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    .line 56
    iget-object v0, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "data"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    :try_start_3
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    .line 72
    const/16 v1, 0x6a

    iput v1, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mCharacterSet:I
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_f} :catch_10

    .line 76
    :goto_f
    return-void

    .line 73
    :catch_10
    move-exception v0

    .line 74
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_f
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "data"

    .prologue
    .line 66
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p1}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(I[B)V

    .line 67
    return-void
.end method

.method public static copy(Lcom/wssnps/mmspdu/EncodedStringValue;)Lcom/wssnps/mmspdu/EncodedStringValue;
    .registers 4
    .parameter "value"

    .prologue
    .line 256
    if-nez p0, :cond_4

    .line 257
    const/4 v0, 0x0

    .line 260
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/wssnps/mmspdu/EncodedStringValue;

    iget v1, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mCharacterSet:I

    iget-object v2, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    invoke-direct {v0, v1, v2}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(I[B)V

    goto :goto_3
.end method


# virtual methods
.method public appendTextString([B)V
    .registers 7
    .parameter "textString"

    .prologue
    const/4 v4, 0x0

    .line 157
    if-nez p1, :cond_b

    .line 158
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Text-string is null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_b
    iget-object v2, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    if-nez v2, :cond_1b

    .line 162
    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    .line 163
    iget-object v2, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :goto_1a
    return-void

    .line 165
    :cond_1b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 167
    .local v1, newTextString:Ljava/io/ByteArrayOutputStream;
    :try_start_20
    iget-object v2, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 168
    invoke-virtual {v1, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_28} :catch_2f

    .line 174
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    goto :goto_1a

    .line 169
    :catch_2f
    move-exception v0

    .line 170
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 171
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "appendTextString: failed when write a new Text-string"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 184
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 185
    iget-object v3, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    array-length v2, v3

    .line 186
    .local v2, len:I
    new-array v0, v2, [B

    .line 187
    .local v0, dstBytes:[B
    iget-object v3, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :try_start_e
    new-instance v3, Lcom/wssnps/mmspdu/EncodedStringValue;

    iget v4, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mCharacterSet:I

    invoke-direct {v3, v4, v0}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(I[B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_16

    return-object v3

    .line 191
    :catch_16
    move-exception v1

    .line 192
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    new-instance v3, Ljava/lang/CloneNotSupportedException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getCharacterSet()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mCharacterSet:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 132
    iget v3, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mCharacterSet:I

    if-nez v3, :cond_c

    .line 133
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 143
    :goto_b
    return-object v3

    .line 136
    :cond_c
    :try_start_c
    iget v3, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mCharacterSet:I

    invoke-static {v3}, Lcom/wssnps/mmspdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, name:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    invoke-direct {v3, v4, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_19} :catch_1a

    goto :goto_b

    .line 138
    .end local v2           #name:Ljava/lang/String;
    :catch_1a
    move-exception v1

    .line 139
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 141
    :try_start_1e
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    const-string v5, "iso-8859-1"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_b

    .line 142
    :catch_28
    move-exception v0

    .line 143
    .local v0, _:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    goto :goto_b
.end method

.method public getTextString()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 103
    iget-object v1, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 105
    .local v0, byteArray:[B
    iget-object v1, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    iget-object v2, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-object v0
.end method

.method public setTextString([B)V
    .registers 5
    .parameter "textString"

    .prologue
    const/4 v2, 0x0

    .line 116
    if-nez p1, :cond_b

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EncodedStringValue: Text-string is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_b
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    .line 121
    iget-object v0, p0, Lcom/wssnps/mmspdu/EncodedStringValue;->mData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    return-void
.end method
