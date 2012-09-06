.class final Lcom/google/zxing/client/result/URIResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "URIResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 29
    return-void
.end method

.method static isBasicallyValidURI(Ljava/lang/String;)Z
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 49
    if-eqz p0, :cond_13

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_13

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_14

    .line 84
    :cond_13
    :goto_13
    return v4

    .line 54
    :cond_14
    const/16 v5, 0x2e

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 55
    .local v3, period:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_13

    .line 58
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 59
    .local v1, colon:I
    if-gez v3, :cond_2c

    if-ltz v1, :cond_13

    .line 62
    :cond_2c
    if-ltz v1, :cond_69

    .line 63
    if-ltz v3, :cond_32

    if-le v3, v1, :cond_4c

    .line 65
    :cond_32
    const/4 v2, 0x0

    .local v2, i:I
    :goto_33
    if-ge v2, v1, :cond_69

    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 67
    .local v0, c:C
    const/16 v5, 0x61

    if-lt v0, v5, :cond_41

    const/16 v5, 0x7a

    if-le v0, v5, :cond_49

    :cond_41
    const/16 v5, 0x41

    if-lt v0, v5, :cond_13

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_13

    .line 65
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 73
    .end local v0           #c:C
    .end local v2           #i:I
    :cond_4c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-ge v1, v5, :cond_13

    .line 76
    add-int/lit8 v2, v1, 0x1

    .restart local v2       #i:I
    :goto_56
    add-int/lit8 v5, v1, 0x3

    if-ge v2, v5, :cond_69

    .line 77
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 78
    .restart local v0       #c:C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_13

    const/16 v5, 0x39

    if-gt v0, v5, :cond_13

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 84
    .end local v0           #c:C
    .end local v2           #i:I
    :cond_69
    const/4 v4, 0x1

    goto :goto_13
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .registers 4
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, rawText:Ljava/lang/String;
    if-eqz v0, :cond_14

    const-string v2, "URL:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 35
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    :cond_14
    invoke-static {v0}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 40
    :goto_1a
    return-object v1

    :cond_1b
    new-instance v2, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v2, v0, v1}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1a
.end method
