.class final Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "BookmarkDoCoMoResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    .line 27
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .registers 8
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, rawText:Ljava/lang/String;
    if-eqz v0, :cond_10

    const-string v5, "MEBKM:"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 43
    :cond_10
    :goto_10
    return-object v4

    .line 34
    :cond_11
    const-string v5, "TITLE:"

    invoke-static {v5, v0, v6}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, title:Ljava/lang/String;
    const-string v5, "URL:"

    invoke-static {v5, v0, v6}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, rawUri:[Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 39
    const/4 v5, 0x0

    aget-object v3, v1, v5

    .line 40
    .local v3, uri:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 43
    new-instance v4, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v4, v3, v2}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method
