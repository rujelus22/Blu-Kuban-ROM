.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private formats:I

.field private final resultBuffer:[I


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 4
    .parameter "hints"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 52
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    .line 53
    const/16 v1, 0x10

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    .line 55
    if-nez p1, :cond_52

    const/4 v0, 0x0

    .line 57
    .local v0, possibleFormats:Ljava/util/Vector;
    :goto_f
    if-eqz v0, :cond_49

    .line 58
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 59
    iget v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    .line 61
    :cond_1f
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 62
    iget v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    .line 64
    :cond_2d
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 65
    iget v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    .line 67
    :cond_3b
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 68
    iget v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    .line 71
    :cond_49
    iget v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    if-nez v1, :cond_51

    .line 72
    const/16 v1, 0xd

    iput v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    .line 96
    :cond_51
    return-void

    .line 55
    .end local v0           #possibleFormats:Ljava/util/Vector;
    :cond_52
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    move-object v0, v1

    goto :goto_f
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "upce"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 198
    const/4 v3, 0x6

    new-array v2, v3, [C

    .line 199
    .local v2, upceChars:[C
    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 200
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 201
    .local v1, result:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    aget-char v0, v2, v9

    .line 203
    .local v0, lastChar:C
    packed-switch v0, :pswitch_data_62

    .line 223
    invoke-virtual {v1, v2, v5, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 224
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    :goto_2b
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 207
    :pswitch_38
    invoke-virtual {v1, v2, v5, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 209
    const-string v3, "0000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v1, v2, v6, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 213
    :pswitch_47
    invoke-virtual {v1, v2, v5, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 214
    const-string v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v1, v2, v7, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 218
    :pswitch_53
    invoke-virtual {v1, v2, v5, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 219
    const-string v3, "00000"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    aget-char v3, v2, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b

    .line 203
    nop

    :pswitch_data_62
    .packed-switch 0x30
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_47
        :pswitch_53
    .end packed-switch
.end method

.method private createResult(Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/Result;
    .registers 16
    .parameter "format"
    .parameter "length"
    .parameter "rowNumber"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 162
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 163
    .local v2, value:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, p2, :cond_16

    .line 164
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    add-int/lit8 v4, v0, 0x3

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 166
    :cond_16
    new-instance v1, Lcom/google/zxing/Result;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v11, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/ResultPoint;

    iget-object v8, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v8, v8, v10

    int-to-float v8, v8

    int-to-float v9, p3

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v7, v5, v6

    new-instance v6, Lcom/google/zxing/ResultPoint;

    iget-object v7, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v7, v7, v11

    int-to-float v7, v7

    int-to-float v8, p3

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v6, v5, v10

    invoke-direct {v1, v3, v4, v5, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 173
    .local v1, result:Lcom/google/zxing/Result;
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v3, v3, v10

    iget-object v4, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v4, v4, v11

    if-le v3, v4, :cond_53

    .line 174
    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    new-instance v4, Ljava/lang/Integer;

    const/16 v5, 0xb4

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 176
    :cond_53
    return-object v1
.end method

.method private native nativeDecodeRow([ZIZ[I)Z
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .registers 5
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->decodeRowBidirect(ILcom/google/zxing/common/BitArray;Z)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeRowBidirect(ILcom/google/zxing/common/BitArray;Z)Lcom/google/zxing/Result;
    .registers 9
    .parameter "rowNumber"
    .parameter "row"
    .parameter "bidirect"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 147
    sget-object v0, Lcom/google/zxing/common/BitArray;->bits:[Z

    iget v1, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->formats:I

    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->nativeDecodeRow([ZIZ[I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 148
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v0, v0, v3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 149
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->createResult(Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/Result;

    move-result-object v0

    .line 158
    :goto_1e
    return-object v0

    .line 150
    :cond_1f
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v0, v0, v3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2f

    .line 151
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->createResult(Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_1e

    .line 152
    :cond_2f
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v0, v0, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3d

    .line 153
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p0, v0, v4, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->createResult(Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_1e

    .line 154
    :cond_3d
    iget-object v0, p0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->resultBuffer:[I

    aget v0, v0, v3

    if-ne v0, v4, :cond_4a

    .line 155
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p0, v0, v4, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->createResult(Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/Result;

    move-result-object v0

    goto :goto_1e

    .line 158
    :cond_4a
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 189
    return-void
.end method

.method public supportBidirect()Z
    .registers 2

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method
