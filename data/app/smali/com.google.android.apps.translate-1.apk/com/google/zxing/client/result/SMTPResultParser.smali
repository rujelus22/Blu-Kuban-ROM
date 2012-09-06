.class final Lcom/google/zxing/client/result/SMTPResultParser;
.super Ljava/lang/Object;
.source "SMTPResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .registers 11
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0x3a

    const/4 v8, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, rawText:Ljava/lang/String;
    if-nez v4, :cond_b

    .line 56
    :cond_a
    :goto_a
    return-object v6

    .line 39
    :cond_b
    const-string v7, "smtp:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1b

    const-string v7, "SMTP:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 42
    :cond_1b
    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, emailAddress:Ljava/lang/String;
    const/4 v5, 0x0

    .line 44
    .local v5, subject:Ljava/lang/String;
    const/4 v0, 0x0

    .line 45
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 46
    .local v1, colon:I
    if-ltz v1, :cond_42

    .line 47
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 50
    if-ltz v1, :cond_42

    .line 51
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 55
    :cond_42
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, mailtoURI:Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    invoke-direct {v6, v2, v5, v0, v3}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
