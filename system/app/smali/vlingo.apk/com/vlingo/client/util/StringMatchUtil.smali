.class public abstract Lcom/vlingo/client/util/StringMatchUtil;
.super Ljava/lang/Object;
.source "StringMatchUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isExactMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "query"
    .parameter "matchString"

    .prologue
    .line 48
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    .line 49
    :cond_8
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 52
    :goto_11
    return v0

    .line 49
    :cond_12
    const/4 v0, 0x0

    goto :goto_11

    .line 51
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_11
.end method

.method public static isMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter "query"
    .parameter "matchString"

    .prologue
    const/4 v5, 0x1

    .line 33
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    .line 44
    :cond_9
    :goto_9
    return v5

    .line 35
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, words:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_17
    if-ge v1, v2, :cond_2e

    aget-object v3, v0, v1

    .line 37
    .local v3, word:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2b

    .line 39
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 36
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 44
    .end local v3           #word:Ljava/lang/String;
    :cond_2e
    const/4 v5, 0x0

    goto :goto_9
.end method

.method public static isPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .parameter "query"
    .parameter "matchString"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 56
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_14

    .line 57
    :cond_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_13

    :cond_12
    move v7, v8

    .line 75
    :cond_13
    :goto_13
    return v7

    .line 59
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 60
    const-string v9, " "

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 61
    .local v6, queryWords:[Ljava/lang/String;
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, matchWords:[Ljava/lang/String;
    array-length v4, v6

    .line 63
    .local v4, queryLen:I
    array-length v1, v3

    .line 64
    .local v1, matchLen:I
    if-gt v4, v1, :cond_13

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2d
    array-length v9, v6

    if-ge v0, v9, :cond_45

    .line 69
    aget-object v9, v6, v0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, queryWord:Ljava/lang/String;
    aget-object v9, v3, v0

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, matchWord:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .end local v2           #matchWord:Ljava/lang/String;
    .end local v5           #queryWord:Ljava/lang/String;
    :cond_45
    move v7, v8

    .line 75
    goto :goto_13
.end method
