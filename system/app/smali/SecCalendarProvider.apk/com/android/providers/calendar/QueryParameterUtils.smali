.class public Lcom/android/providers/calendar/QueryParameterUtils;
.super Ljava/lang/Object;
.source "QueryParameterUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "uri"
    .parameter "parameter"

    .prologue
    const/4 v9, -0x1

    const/4 v6, 0x0

    .line 36
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, query:Ljava/lang/String;
    if-nez v3, :cond_9

    .line 71
    :cond_8
    :goto_8
    return-object v6

    .line 41
    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 42
    .local v4, queryLength:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 45
    .local v2, parameterLength:I
    const/4 v1, 0x0

    .line 47
    .local v1, index:I
    :cond_12
    invoke-virtual {v3, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 48
    if-eq v1, v9, :cond_8

    .line 52
    add-int/2addr v1, v2

    .line 54
    if-eq v4, v1, :cond_8

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3d

    if-ne v7, v8, :cond_12

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 64
    const/16 v6, 0x26

    invoke-virtual {v3, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 65
    .local v0, ampIndex:I
    if-ne v0, v9, :cond_36

    .line 66
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, value:Ljava/lang/String;
    :goto_31
    invoke-static {v5}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    .line 68
    .end local v5           #value:Ljava/lang/String;
    :cond_36
    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #value:Ljava/lang/String;
    goto :goto_31
.end method

.method public static readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z
    .registers 6
    .parameter "uri"
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/android/providers/calendar/QueryParameterUtils;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, flag:Ljava/lang/String;
    if-nez v0, :cond_7

    .end local p2
    :goto_6
    return p2

    .restart local p2
    :cond_7
    const-string v1, "false"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "0"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 p2, 0x1

    goto :goto_6

    :cond_21
    const/4 p2, 0x0

    goto :goto_6
.end method
