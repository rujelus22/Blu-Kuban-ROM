.class final Lcom/google/zxing/client/result/EmailDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "EmailDoCoMoResultParser.java"


# static fields
.field private static final ATEXT_SYMBOLS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/16 v0, 0x15

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_SYMBOLS:[C

    return-void

    :array_a
    .array-data 0x2
        0x40t 0x0t
        0x2et 0x0t
        0x21t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2ft 0x0t
        0x3dt 0x0t
        0x3ft 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static isAtextSymbol(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_SYMBOLS:[C

    array-length v1, v1

    if-ge v0, v1, :cond_11

    .line 80
    sget-object v1, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->ATEXT_SYMBOLS:[C

    aget-char v1, v1, v0

    if-ne p0, v1, :cond_e

    .line 81
    const/4 v1, 0x1

    .line 84
    :goto_d
    return v1

    .line 79
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method static isBasicallyValidEmailAddress(Ljava/lang/String;)Z
    .registers 6
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    .line 58
    if-nez p0, :cond_5

    move v0, v3

    .line 75
    :cond_4
    :goto_4
    return v0

    .line 61
    :cond_5
    const/4 v0, 0x0

    .line 62
    .local v0, atFound:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 63
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 64
    .local v1, c:C
    const/16 v4, 0x61

    if-lt v1, v4, :cond_19

    const/16 v4, 0x7a

    if-le v1, v4, :cond_31

    :cond_19
    const/16 v4, 0x41

    if-lt v1, v4, :cond_21

    const/16 v4, 0x5a

    if-le v1, v4, :cond_31

    :cond_21
    const/16 v4, 0x30

    if-lt v1, v4, :cond_29

    const/16 v4, 0x39

    if-le v1, v4, :cond_31

    :cond_29
    invoke-static {v1}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isAtextSymbol(C)Z

    move-result v4

    if-nez v4, :cond_31

    move v0, v3

    .line 66
    goto :goto_4

    .line 68
    :cond_31
    const/16 v4, 0x40

    if-ne v1, v4, :cond_3a

    .line 69
    if-eqz v0, :cond_39

    move v0, v3

    .line 70
    goto :goto_4

    .line 72
    :cond_39
    const/4 v0, 0x1

    .line 62
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .registers 10
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, rawText:Ljava/lang/String;
    if-eqz v1, :cond_10

    const-string v6, "MATMSG:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 48
    :cond_10
    :goto_10
    return-object v5

    .line 38
    :cond_11
    const-string v6, "TO:"

    const/4 v7, 0x1

    invoke-static {v6, v1, v7}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, rawTo:[Ljava/lang/String;
    if-eqz v2, :cond_10

    .line 42
    aget-object v4, v2, v8

    .line 43
    .local v4, to:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 46
    const-string v5, "SUB:"

    invoke-static {v5, v1, v8}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, subject:Ljava/lang/String;
    const-string v5, "BODY:"

    invoke-static {v5, v1, v8}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, body:Ljava/lang/String;
    new-instance v5, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "mailto:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v3, v0, v6}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method
