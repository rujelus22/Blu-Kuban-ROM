.class final Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSTOMMSTOResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 34
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .registers 7
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    .line 38
    .local v3, rawText:Ljava/lang/String;
    if-nez v3, :cond_8

    .line 54
    :cond_7
    :goto_7
    return-object v4

    .line 41
    :cond_8
    const-string v5, "smsto:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "SMSTO:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "mmsto:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_28

    const-string v5, "MMSTO:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 47
    :cond_28
    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, number:Ljava/lang/String;
    const/4 v0, 0x0

    .line 49
    .local v0, body:Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 50
    .local v1, bodyStart:I
    if-ltz v1, :cond_41

    .line 51
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 54
    :cond_41
    new-instance v5, Lcom/google/zxing/client/result/SMSParsedResult;

    invoke-direct {v5, v2, v4, v4, v0}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_7
.end method
