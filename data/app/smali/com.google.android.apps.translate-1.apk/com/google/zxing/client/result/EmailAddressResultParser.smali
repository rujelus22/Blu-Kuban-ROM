.class final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .registers 11
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    .line 33
    .local v4, rawText:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 60
    :cond_7
    :goto_7
    return-object v6

    .line 37
    :cond_8
    const-string v7, "mailto:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "MAILTO:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 39
    :cond_18
    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, emailAddress:Ljava/lang/String;
    const/16 v6, 0x3f

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 41
    .local v3, queryStart:I
    if-ltz v3, :cond_2a

    .line 42
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 44
    :cond_2a
    invoke-static {v4}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 45
    .local v2, nameValues:Ljava/util/Hashtable;
    const/4 v5, 0x0

    .line 46
    .local v5, subject:Ljava/lang/String;
    const/4 v0, 0x0

    .line 47
    .local v0, body:Ljava/lang/String;
    if-eqz v2, :cond_50

    .line 48
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_40

    .line 49
    const-string v6, "to"

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailAddress:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 51
    .restart local v1       #emailAddress:Ljava/lang/String;
    :cond_40
    const-string v6, "subject"

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #subject:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 52
    .restart local v5       #subject:Ljava/lang/String;
    const-string v6, "body"

    invoke-virtual {v2, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #body:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 54
    .restart local v0       #body:Ljava/lang/String;
    :cond_50
    new-instance v6, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v6, v1, v5, v0, v4}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 56
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #emailAddress:Ljava/lang/String;
    .end local v2           #nameValues:Ljava/util/Hashtable;
    .end local v3           #queryStart:I
    .end local v5           #subject:Ljava/lang/String;
    :cond_56
    invoke-static {v4}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 59
    move-object v1, v4

    .line 60
    .restart local v1       #emailAddress:Ljava/lang/String;
    new-instance v7, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "mailto:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v1, v6, v6, v8}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_7
.end method
