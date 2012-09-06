.class final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 33
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .registers 8
    .parameter "result"

    .prologue
    const/16 v6, 0x3b

    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, rawText:Ljava/lang/String;
    if-eqz v1, :cond_10

    const-string v5, "WIFI:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 39
    :cond_10
    const/4 v5, 0x0

    .line 48
    :goto_11
    return-object v5

    .line 43
    :cond_12
    const/4 v3, 0x0

    .line 44
    .local v3, trim:Z
    const-string v5, "S:"

    invoke-static {v5, v1, v6, v3}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, ssid:Ljava/lang/String;
    const-string v5, "P:"

    invoke-static {v5, v1, v6, v3}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, pass:Ljava/lang/String;
    const-string v5, "T:"

    invoke-static {v5, v1, v6, v3}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, type:Ljava/lang/String;
    new-instance v5, Lcom/google/zxing/client/result/WifiParsedResult;

    invoke-direct {v5, v4, v2, v0}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
