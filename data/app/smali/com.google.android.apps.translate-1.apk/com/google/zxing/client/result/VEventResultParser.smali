.class final Lcom/google/zxing/client/result/VEventResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VEventResultParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    .line 30
    return-void
.end method

.method public static parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/CalendarParsedResult;
    .registers 12
    .parameter "result"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 33
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v8

    .line 34
    .local v8, rawText:Ljava/lang/String;
    if-nez v8, :cond_a

    move-object v0, v10

    .line 50
    :goto_9
    return-object v0

    .line 37
    :cond_a
    const-string v0, "BEGIN:VEVENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 38
    .local v9, vEventStart:I
    if-gez v9, :cond_14

    move-object v0, v10

    .line 39
    goto :goto_9

    .line 42
    :cond_14
    const-string v0, "SUMMARY"

    invoke-static {v0, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, summary:Ljava/lang/String;
    const-string v0, "DTSTART"

    invoke-static {v0, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, start:Ljava/lang/String;
    const-string v0, "DTEND"

    invoke-static {v0, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, end:Ljava/lang/String;
    const-string v0, "LOCATION"

    invoke-static {v0, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, location:Ljava/lang/String;
    const-string v0, "DESCRIPTION"

    invoke-static {v0, v8, v5}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, description:Ljava/lang/String;
    :try_start_32
    new-instance v0, Lcom/google/zxing/client/result/CalendarParsedResult;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/client/result/CalendarParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_38} :catch_39

    goto :goto_9

    .line 49
    :catch_39
    move-exception v7

    .local v7, iae:Ljava/lang/IllegalArgumentException;
    move-object v0, v10

    .line 50
    goto :goto_9
.end method
