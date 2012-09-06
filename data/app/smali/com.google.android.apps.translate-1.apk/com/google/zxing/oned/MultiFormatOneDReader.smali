.class public final Lcom/google/zxing/oned/MultiFormatOneDReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatOneDReader.java"


# instance fields
.field private final readers:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .registers 6
    .parameter "hints"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 39
    if-nez p1, :cond_ab

    const/4 v0, 0x0

    .line 41
    .local v0, possibleFormats:Ljava/util/Vector;
    :goto_6
    if-eqz p1, :cond_b6

    sget-object v2, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_b6

    const/4 v1, 0x1

    .line 43
    .local v1, useCode39CheckDigit:Z
    :goto_11
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    .line 44
    if-eqz v0, :cond_7a

    .line 45
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 49
    :cond_3a
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    :cond_44
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 52
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3, v1}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 54
    :cond_56
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 55
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 57
    :cond_68
    sget-object v2, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 58
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    :cond_7a
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 62
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 63
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code39Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v3}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 65
    iget-object v2, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    new-instance v3, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v3}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 67
    :cond_aa
    return-void

    .line 39
    .end local v0           #possibleFormats:Ljava/util/Vector;
    .end local v1           #useCode39CheckDigit:Z
    :cond_ab
    sget-object v2, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    move-object v0, v2

    goto/16 :goto_6

    .line 41
    .restart local v0       #possibleFormats:Ljava/util/Vector;
    :cond_b6
    const/4 v1, 0x0

    goto/16 :goto_11
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    .registers 9
    .parameter "rowNumber"
    .parameter "row"
    .parameter "hints"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v4, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 71
    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v3, :cond_1c

    .line 72
    iget-object v4, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/OneDReader;

    .line 74
    .local v1, reader:Lcom/google/zxing/oned/OneDReader;
    :try_start_11
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Hashtable;)Lcom/google/zxing/Result;
    :try_end_14
    .catch Lcom/google/zxing/ReaderException; {:try_start_11 .. :try_end_14} :catch_18

    move-result-object v2

    .line 75
    .local v2, result:Lcom/google/zxing/Result;
    if-eqz v2, :cond_19

    .line 76
    return-object v2

    .line 78
    .end local v2           #result:Lcom/google/zxing/Result;
    :catch_18
    move-exception v4

    .line 71
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 83
    .end local v1           #reader:Lcom/google/zxing/oned/OneDReader;
    :cond_1c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method

.method public reset()V
    .registers 5

    .prologue
    .line 87
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 88
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v2, :cond_17

    .line 89
    iget-object v3, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/Reader;

    .line 90
    .local v1, reader:Lcom/google/zxing/Reader;
    invoke-interface {v1}, Lcom/google/zxing/Reader;->reset()V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 92
    .end local v1           #reader:Lcom/google/zxing/Reader;
    :cond_17
    return-void
.end method
