.class final Lcom/google/zxing/client/result/ProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ProductResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 31
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;
    .registers 9
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v1

    .line 36
    .local v1, format:Lcom/google/zxing/BarcodeFormat;
    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 63
    :cond_25
    :goto_25
    return-object v6

    .line 41
    :cond_26
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, rawText:Ljava/lang/String;
    if-eqz v4, :cond_25

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 47
    .local v2, length:I
    const/4 v5, 0x0

    .local v5, x:I
    :goto_31
    if-ge v5, v2, :cond_42

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 49
    .local v0, c:C
    const/16 v7, 0x30

    if-lt v0, v7, :cond_25

    const/16 v7, 0x39

    if-gt v0, v7, :cond_25

    .line 47
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 57
    .end local v0           #c:C
    :cond_42
    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 58
    invoke-static {v4}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, normalizedProductID:Ljava/lang/String;
    :goto_4e
    new-instance v6, Lcom/google/zxing/client/result/ProductParsedResult;

    invoke-direct {v6, v4, v3}, Lcom/google/zxing/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    .line 60
    .end local v3           #normalizedProductID:Ljava/lang/String;
    :cond_54
    move-object v3, v4

    .restart local v3       #normalizedProductID:Ljava/lang/String;
    goto :goto_4e
.end method
