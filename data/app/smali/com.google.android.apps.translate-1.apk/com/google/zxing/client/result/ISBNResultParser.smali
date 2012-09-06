.class public Lcom/google/zxing/client/result/ISBNResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ISBNResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 30
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 36
    .local v0, format:Lcom/google/zxing/BarcodeFormat;
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 51
    :cond_d
    :goto_d
    return-object v3

    .line 39
    :cond_e
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, rawText:Ljava/lang/String;
    if-eqz v2, :cond_d

    .line 43
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 44
    .local v1, length:I
    const/16 v4, 0xd

    if-ne v1, v4, :cond_d

    .line 47
    const-string v4, "978"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "979"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 51
    :cond_2c
    new-instance v3, Lcom/google/zxing/client/result/ISBNParsedResult;

    invoke-direct {v3, v2}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    goto :goto_d
.end method
