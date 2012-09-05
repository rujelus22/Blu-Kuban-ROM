.class public abstract Lcom/vlingo/client/core/util/UrlUtils;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractValueForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "urlKey"
    .parameter "urlString"

    .prologue
    const/4 v4, -0x1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 27
    .local v1, valueIndex:I
    if-eq v1, v4, :cond_38

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 29
    const-string v2, "&"

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 30
    .local v0, valueEndIndex:I
    if-ne v0, v4, :cond_2f

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    :cond_2f
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vlingo/client/core/util/UrlUtils;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .end local v0           #valueEndIndex:I
    :goto_37
    return-object v2

    :cond_38
    const/4 v2, 0x0

    goto :goto_37
.end method

.method public static urlDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "decodeStr"

    .prologue
    const/16 v9, 0x2b

    const/16 v8, 0x20

    .line 53
    if-nez p0, :cond_8

    .line 54
    const/4 v6, 0x0

    .line 83
    :goto_7
    return-object v6

    .line 57
    :cond_8
    const/4 v5, 0x0

    .line 59
    .local v5, less:I
    const/4 v0, 0x0

    .line 61
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ge v4, v6, :cond_50

    .line 62
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 64
    .local v2, c:C
    const/16 v6, 0x25

    if-ne v2, v6, :cond_42

    .line 66
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v4, 0x3

    :try_start_1f
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v2, v6

    .line 68
    if-nez v0, :cond_32

    .line 69
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .end local v0           #buf:Ljava/lang/StringBuffer;
    .local v1, buf:Ljava/lang/StringBuffer;
    move-object v0, v1

    .line 71
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    :cond_32
    sub-int v6, v4, v5

    sub-int v7, v4, v5

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 72
    sub-int v6, v4, v5

    invoke-virtual {v0, v6, v2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_40} :catch_45

    .line 73
    add-int/lit8 v5, v5, 0x2

    .line 61
    :cond_42
    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 74
    :catch_45
    move-exception v3

    .line 75
    .local v3, e:Ljava/lang/Throwable;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 80
    .end local v2           #c:C
    .end local v3           #e:Ljava/lang/Throwable;
    :cond_50
    if-nez v0, :cond_57

    .line 81
    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 83
    :cond_57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    goto :goto_7
.end method

.method public static urlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "str"

    .prologue
    .line 40
    if-eqz p0, :cond_8

    .line 42
    :try_start_2
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Lcom/vlingo/client/core/util/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_7} :catch_9

    move-result-object p0

    .line 48
    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    :cond_8
    :goto_8
    return-object p0

    .line 44
    .end local v0           #ex:Ljava/io/UnsupportedEncodingException;
    :catch_9
    move-exception v0

    .line 45
    .restart local v0       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method
