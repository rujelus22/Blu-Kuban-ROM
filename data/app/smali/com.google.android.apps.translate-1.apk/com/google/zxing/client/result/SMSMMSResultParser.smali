.class final Lcom/google/zxing/client/result/SMSMMSResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSMMSResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 42
    return-void
.end method

.method private static addNumberVia(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V
    .registers 7
    .parameter "numbers"
    .parameter "vias"
    .parameter "numberPart"

    .prologue
    .line 90
    const/16 v3, 0x3b

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 91
    .local v1, numberEnd:I
    if-gez v1, :cond_10

    .line 92
    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 105
    :goto_f
    return-void

    .line 95
    :cond_10
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 96
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, maybeVia:Ljava/lang/String;
    const-string v3, "via="

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 99
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, via:Ljava/lang/String;
    :goto_2b
    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_f

    .line 101
    .end local v2           #via:Ljava/lang/String;
    :cond_2f
    const/4 v2, 0x0

    .restart local v2       #via:Ljava/lang/String;
    goto :goto_2b
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .registers 16
    .parameter "result"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v8

    .line 46
    .local v8, rawText:Ljava/lang/String;
    if-nez v8, :cond_8

    .line 47
    const/4 v12, 0x0

    .line 86
    :goto_7
    return-object v12

    .line 49
    :cond_8
    const-string v12, "sms:"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2a

    const-string v12, "SMS:"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2a

    const-string v12, "mms:"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2a

    const-string v12, "MMS:"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2a

    .line 51
    const/4 v12, 0x0

    goto :goto_7

    .line 55
    :cond_2a
    invoke-static {v8}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    .line 56
    .local v3, nameValuePairs:Ljava/util/Hashtable;
    const/4 v10, 0x0

    .line 57
    .local v10, subject:Ljava/lang/String;
    const/4 v0, 0x0

    .line 58
    .local v0, body:Ljava/lang/String;
    const/4 v7, 0x0

    .line 59
    .local v7, querySyntax:Z
    if-eqz v3, :cond_4a

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4a

    .line 60
    const-string v12, "subject"

    invoke-virtual {v3, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #subject:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 61
    .restart local v10       #subject:Ljava/lang/String;
    const-string v12, "body"

    invoke-virtual {v3, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #body:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 62
    .restart local v0       #body:Ljava/lang/String;
    const/4 v7, 0x1

    .line 66
    :cond_4a
    const/16 v12, 0x3f

    const/4 v13, 0x4

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 69
    .local v6, queryStart:I
    if-ltz v6, :cond_55

    if-nez v7, :cond_7c

    .line 70
    :cond_55
    const/4 v12, 0x4

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 75
    .local v9, smsURIWithoutQuery:Ljava/lang/String;
    :goto_5a
    const/4 v2, -0x1

    .line 77
    .local v2, lastComma:I
    new-instance v5, Ljava/util/Vector;

    const/4 v12, 0x1

    invoke-direct {v5, v12}, Ljava/util/Vector;-><init>(I)V

    .line 78
    .local v5, numbers:Ljava/util/Vector;
    new-instance v11, Ljava/util/Vector;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/Vector;-><init>(I)V

    .line 79
    .local v11, vias:Ljava/util/Vector;
    :goto_67
    const/16 v12, 0x2c

    add-int/lit8 v13, v2, 0x1

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, comma:I
    if-le v1, v2, :cond_82

    .line 80
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, numberPart:Ljava/lang/String;
    invoke-static {v5, v11, v4}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    .line 82
    move v2, v1

    .line 83
    goto :goto_67

    .line 72
    .end local v1           #comma:I
    .end local v2           #lastComma:I
    .end local v4           #numberPart:Ljava/lang/String;
    .end local v5           #numbers:Ljava/util/Vector;
    .end local v9           #smsURIWithoutQuery:Ljava/lang/String;
    .end local v11           #vias:Ljava/util/Vector;
    :cond_7c
    const/4 v12, 0x4

    invoke-virtual {v8, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #smsURIWithoutQuery:Ljava/lang/String;
    goto :goto_5a

    .line 84
    .restart local v1       #comma:I
    .restart local v2       #lastComma:I
    .restart local v5       #numbers:Ljava/util/Vector;
    .restart local v11       #vias:Ljava/util/Vector;
    :cond_82
    add-int/lit8 v12, v2, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v11, v12}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Vector;Ljava/util/Vector;Ljava/lang/String;)V

    .line 86
    new-instance v12, Lcom/google/zxing/client/result/SMSParsedResult;

    invoke-static {v5}, Lcom/google/zxing/client/result/SMSMMSResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Lcom/google/zxing/client/result/SMSMMSResultParser;->toStringArray(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14, v10, v0}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7
.end method
