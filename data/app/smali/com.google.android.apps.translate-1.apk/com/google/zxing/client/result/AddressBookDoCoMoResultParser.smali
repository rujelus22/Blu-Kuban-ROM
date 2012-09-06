.class final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .registers 16
    .parameter "result"

    .prologue
    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v13

    .line 40
    .local v13, rawText:Ljava/lang/String;
    if-eqz v13, :cond_11

    const-string v0, "MECARD:"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 64
    :cond_11
    :goto_11
    return-object v9

    .line 43
    :cond_12
    const-string v0, "N:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v12

    .line 44
    .local v12, rawName:[Ljava/lang/String;
    if-eqz v12, :cond_11

    .line 47
    aget-object v0, v12, v14

    invoke-static {v0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 48
    .local v11, name:Ljava/lang/String;
    const-string v0, "SOUND:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, pronunciation:Ljava/lang/String;
    const-string v0, "TEL:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, phoneNumbers:[Ljava/lang/String;
    const-string v0, "EMAIL:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, emails:[Ljava/lang/String;
    const-string v0, "NOTE:"

    invoke-static {v0, v13, v14}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, note:Ljava/lang/String;
    const-string v0, "ADR:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, addresses:[Ljava/lang/String;
    const-string v0, "BDAY:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, birthday:Ljava/lang/String;
    if-eqz v8, :cond_4f

    const/16 v0, 0x8

    invoke-static {v8, v0}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 56
    const/4 v8, 0x0

    .line 58
    :cond_4f
    const-string v0, "URL:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 62
    .local v10, url:Ljava/lang/String;
    const-string v0, "ORG:"

    invoke-static {v0, v13, v1}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, org:Ljava/lang/String;
    new-instance v0, Lcom/google/zxing/client/result/AddressBookParsedResult;

    invoke-static {v11}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v10}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    goto :goto_11
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 77
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 78
    .local v0, comma:I
    if-ltz v0, :cond_2a

    .line 80
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    .end local p0
    :cond_2a
    return-object p0
.end method
