.class public final Lcom/google/zxing/MultiFormatReader;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private hints:Ljava/util/Hashtable;

.field private readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 6
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 149
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_1c

    .line 150
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Reader;

    .line 152
    .local v1, reader:Lcom/google/zxing/Reader;
    :try_start_11
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Hashtable;

    invoke-interface {v1, p1, v3}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    :try_end_16
    .catch Lcom/google/zxing/ReaderException; {:try_start_11 .. :try_end_16} :catch_18

    move-result-object v3

    return-object v3

    .line 153
    :catch_18
    move-exception v3

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 158
    .end local v1           #reader:Lcom/google/zxing/Reader;
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .registers 4
    .parameter "image"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .registers 3
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    if-nez v0, :cond_8

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 79
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 140
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 141
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 142
    iget-object v3, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Reader;

    .line 143
    .local v1, reader:Lcom/google/zxing/Reader;
    invoke-interface {v1}, Lcom/google/zxing/Reader;->reset()V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 145
    .end local v1           #reader:Lcom/google/zxing/Reader;
    :cond_17
    return-void
.end method

.method public setHints(Ljava/util/Hashtable;)V
    .registers 9
    .parameter "hints"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    iput-object p1, p0, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Hashtable;

    .line 92
    if-eqz p1, :cond_ca

    sget-object v4, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ca

    move v3, v6

    .line 93
    .local v3, tryHarder:Z
    :goto_f
    if-nez p1, :cond_cd

    const/4 v2, 0x0

    .line 94
    .local v2, formats:Ljava/util/Vector;
    :goto_12
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    .line 95
    if-eqz v2, :cond_9f

    .line 96
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d8

    :cond_53
    move v0, v6

    .line 104
    .local v0, addOneDReader:Z
    :goto_54
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    sget-object v4, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    move v1, v6

    .line 109
    .local v1, addUPCEANReader:Z
    :goto_6d
    if-eqz v0, :cond_7d

    if-nez v3, :cond_7d

    .line 110
    if-eqz v1, :cond_dd

    .line 111
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v5, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    :cond_7d
    :goto_7d
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 117
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v5}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 120
    :cond_8f
    if-eqz v0, :cond_9f

    if-eqz v3, :cond_9f

    .line 121
    if-eqz v1, :cond_e8

    .line 122
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v5, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 128
    .end local v0           #addOneDReader:Z
    .end local v1           #addUPCEANReader:Z
    :cond_9f
    :goto_9f
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_c9

    .line 129
    if-nez v3, :cond_b3

    .line 130
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v5, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 132
    :cond_b3
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v5}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 133
    if-eqz v3, :cond_c9

    .line 134
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v5, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 137
    :cond_c9
    return-void

    .end local v2           #formats:Ljava/util/Vector;
    .end local v3           #tryHarder:Z
    :cond_ca
    move v3, v5

    .line 92
    goto/16 :goto_f

    .line 93
    .restart local v3       #tryHarder:Z
    :cond_cd
    sget-object v4, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    move-object v2, v4

    goto/16 :goto_12

    .restart local v2       #formats:Ljava/util/Vector;
    :cond_d8
    move v0, v5

    .line 96
    goto/16 :goto_54

    .restart local v0       #addOneDReader:Z
    :cond_db
    move v1, v5

    .line 104
    goto :goto_6d

    .line 113
    .restart local v1       #addUPCEANReader:Z
    :cond_dd
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v5, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7d

    .line 124
    :cond_e8
    iget-object v4, p0, Lcom/google/zxing/MultiFormatReader;->readers:Ljava/util/Vector;

    new-instance v5, Lcom/google/zxing/oned/MultiFormatOneDReader;

    invoke-direct {v5, p1}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_9f
.end method
