.class public final Lcom/google/wireless/gdata2/data/StringUtils;
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
    .parameter "string"

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
    .registers 5
    .parameter "string"

    .prologue
    const/4 v2, 0x1

    .line 32
    if-nez p0, :cond_4

    .line 41
    :cond_3
    :goto_3
    return v2

    .line 35
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 36
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_3

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/wireless/gdata2/data/StringUtils;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_17

    .line 38
    const/4 v2, 0x0

    goto :goto_3

    .line 36
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static isWhitespace(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 72
    const/16 v0, 0x9

    if-gt v0, p0, :cond_8

    const/16 v0, 0xd

    if-le p0, v0, :cond_38

    :cond_8
    const/16 v0, 0x20

    if-eq p0, v0, :cond_38

    const/16 v0, 0x85

    if-eq p0, v0, :cond_38

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_38

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_38

    const/16 v0, 0x180e

    if-eq p0, v0, :cond_38

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_24

    const/16 v0, 0x200a

    if-le p0, v0, :cond_38

    :cond_24
    const/16 v0, 0x2028

    if-eq p0, v0, :cond_38

    const/16 v0, 0x2029

    if-eq p0, v0, :cond_38

    const/16 v0, 0x202f

    if-eq p0, v0, :cond_38

    const/16 v0, 0x205f

    if-eq p0, v0, :cond_38

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 3
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 53
    if-eqz p0, :cond_6

    .line 55
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_5} :catch_7

    move-result p1

    .line 60
    .end local p1
    :cond_6
    :goto_6
    return p1

    .line 56
    .restart local p1
    :catch_7
    move-exception v0

    goto :goto_6
.end method
