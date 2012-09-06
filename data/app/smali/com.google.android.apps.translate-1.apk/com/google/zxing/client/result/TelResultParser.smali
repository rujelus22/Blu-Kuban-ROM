.class final Lcom/google/zxing/client/result/TelResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "TelResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 29
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;
    .registers 9
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x4

    .line 32
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, rawText:Ljava/lang/String;
    if-eqz v2, :cond_18

    const-string v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "TEL:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_18
    move-object v4, v5

    .line 41
    :goto_19
    return-object v4

    .line 37
    :cond_1a
    const-string v4, "TEL:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "tel:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, telURI:Ljava/lang/String;
    :goto_39
    const/16 v4, 0x3f

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 40
    .local v1, queryStart:I
    if-gez v1, :cond_4d

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, number:Ljava/lang/String;
    :goto_45
    new-instance v4, Lcom/google/zxing/client/result/TelParsedResult;

    invoke-direct {v4, v0, v3, v5}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .end local v0           #number:Ljava/lang/String;
    .end local v1           #queryStart:I
    .end local v3           #telURI:Ljava/lang/String;
    :cond_4b
    move-object v3, v2

    .line 37
    goto :goto_39

    .line 40
    .restart local v1       #queryStart:I
    .restart local v3       #telURI:Ljava/lang/String;
    :cond_4d
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method
