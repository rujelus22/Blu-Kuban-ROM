.class public final Lcom/samsung/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "str"
    .parameter "chars"

    .prologue
    const/4 v2, 0x0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/samsung/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findLastNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "str"
    .parameter "chars"

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I
    .registers 13
    .parameter "str"
    .parameter "chars"
    .parameter "startIdx"
    .parameter "endIdx"
    .parameter "offset"
    .parameter "isEqual"

    .prologue
    const/4 v6, -0x1

    .line 61
    if-nez p4, :cond_5

    move v2, v6

    .line 91
    :cond_4
    :goto_4
    return v2

    .line 63
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 64
    .local v0, charCnt:I
    move v2, p2

    .line 66
    .local v2, idx:I
    :goto_a
    if-lez p4, :cond_10

    .line 67
    if-ge p3, v2, :cond_12

    :cond_e
    move v2, v6

    .line 91
    goto :goto_4

    .line 71
    :cond_10
    if-lt v2, p3, :cond_e

    .line 74
    :cond_12
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 75
    .local v5, strc:C
    const/4 v4, 0x0

    .line 76
    .local v4, noEqualCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_18
    if-lt v3, v0, :cond_1c

    .line 89
    add-int/2addr v2, p4

    .line 65
    goto :goto_a

    .line 77
    :cond_1c
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 78
    .local v1, charc:C
    if-eqz p5, :cond_27

    .line 79
    if-eq v5, v1, :cond_4

    .line 76
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 83
    :cond_27
    if-eq v5, v1, :cond_2b

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 85
    :cond_2b
    if-ne v4, v0, :cond_24

    goto :goto_4
.end method

.method public static final hasData(Ljava/lang/String;)Z
    .registers 3
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 30
    if-nez p0, :cond_4

    .line 34
    :cond_3
    :goto_3
    return v0

    .line 32
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 34
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static final toLong(Ljava/lang/String;)J
    .registers 4
    .parameter "value"

    .prologue
    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide v1

    .line 56
    :goto_4
    return-wide v1

    .line 53
    :catch_5
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/Exception;)V

    .line 56
    const-wide/16 v1, 0x0

    goto :goto_4
.end method

.method public static final trim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "trimStr"
    .parameter "trimChars"

    .prologue
    .line 116
    invoke-static {p0, p1}, Lcom/samsung/util/StringUtil;->findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 117
    .local v1, spIdx:I
    if-gez v1, :cond_8

    .line 118
    move-object v0, p0

    .line 128
    .local v0, buf:Ljava/lang/String;
    :goto_7
    return-object v0

    .line 121
    .end local v0           #buf:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, trimStr2:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/samsung/util/StringUtil;->findLastNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 123
    if-gez v1, :cond_18

    .line 124
    move-object v0, v2

    .line 125
    .restart local v0       #buf:Ljava/lang/String;
    goto :goto_7

    .line 127
    .end local v0           #buf:Ljava/lang/String;
    :cond_18
    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0       #buf:Ljava/lang/String;
    goto :goto_7
.end method
