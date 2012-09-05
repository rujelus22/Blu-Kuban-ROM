.class public final Lcom/google/wireless/gdata/data/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 20
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmptyOrWhitespace(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    if-nez p0, :cond_6

    move v0, v4

    .line 41
    :goto_5
    return v0

    .line 35
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v3

    .line 36
    :goto_b
    if-ge v1, v0, :cond_1c

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_19

    move v0, v3

    .line 38
    goto :goto_5

    .line 36
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1c
    move v0, v4

    .line 41
    goto :goto_5
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    if-eqz p0, :cond_8

    .line 47
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v0

    .line 52
    :goto_6
    return v0

    .line 48
    :catch_7
    move-exception v0

    :cond_8
    move v0, p1

    .line 52
    goto :goto_6
.end method
