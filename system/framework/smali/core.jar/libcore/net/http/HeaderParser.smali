.class final Llibcore/net/http/HeaderParser;
.super Ljava/lang/Object;
.source "HeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HeaderParser$CacheControlHandler;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static parseCacheControl(Ljava/lang/String;Llibcore/net/http/HeaderParser$CacheControlHandler;)V
    .registers 9
    .parameter "value"
    .parameter "handler"

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, pos:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_62

    .line 31
    move v4, v3

    .line 32
    .local v4, tokenStart:I
    const-string v5, "=,"

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 33
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, directive:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_24

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_2b

    .line 36
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 37
    const/4 v5, 0x0

    invoke-interface {p1, v0, v5}, Llibcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 41
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    .line 42
    invoke-static {p0, v3}, Llibcore/net/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_52

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-ne v5, v6, :cond_52

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    move v2, v3

    .line 50
    .local v2, parameterStart:I
    const-string v5, "\""

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 51
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, parameter:Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 61
    :goto_4e
    invoke-interface {p1, v0, v1}, Llibcore/net/http/HeaderParser$CacheControlHandler;->handle(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 56
    .end local v1           #parameter:Ljava/lang/String;
    .end local v2           #parameterStart:I
    :cond_52
    move v2, v3

    .line 57
    .restart local v2       #parameterStart:I
    const-string v5, ","

    invoke-static {p0, v3, v5}, Llibcore/net/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 58
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #parameter:Ljava/lang/String;
    goto :goto_4e

    .line 63
    .end local v0           #directive:Ljava/lang/String;
    .end local v1           #parameter:Ljava/lang/String;
    .end local v2           #parameterStart:I
    .end local v4           #tokenStart:I
    :cond_62
    return-void
.end method

.method public static parseSeconds(Ljava/lang/String;)I
    .registers 6
    .parameter "value"

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_19

    move-result-wide v1

    .line 100
    .local v1, seconds:J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_f

    .line 101
    const v3, 0x7fffffff

    .line 108
    .end local v1           #seconds:J
    :goto_e
    return v3

    .line 102
    .restart local v1       #seconds:J
    :cond_f
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_17

    .line 103
    const/4 v3, 0x0

    goto :goto_e

    .line 105
    :cond_17
    long-to-int v3, v1

    goto :goto_e

    .line 107
    .end local v1           #seconds:J
    :catch_19
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_e
.end method

.method private static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5
    .parameter "input"
    .parameter "pos"
    .parameter "characters"

    .prologue
    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_11

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 76
    :cond_11
    return p1

    .line 71
    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .parameter "input"
    .parameter "pos"

    .prologue
    .line 84
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_12

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    .local v0, c:C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    .line 90
    .end local v0           #c:C
    :cond_12
    return p1

    .line 84
    .restart local v0       #c:C
    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
