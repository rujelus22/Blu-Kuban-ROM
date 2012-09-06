.class public final Lasg;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .registers 3
    .parameter
    .parameter

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
    :cond_6
    :goto_6
    return p1

    .line 56
    :catch_7
    move-exception v0

    goto :goto_6
.end method

.method public static a(C)Z
    .registers 2
    .parameter

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

.method public static a(Ljava/lang/String;)Z
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

.method public static b(Ljava/lang/String;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    if-nez p0, :cond_5

    .line 41
    :cond_4
    :goto_4
    return v0

    .line 35
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    .line 36
    :goto_a
    if-ge v2, v3, :cond_4

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lasg;->a(C)Z

    move-result v4

    if-nez v4, :cond_18

    move v0, v1

    .line 38
    goto :goto_4

    .line 36
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method
