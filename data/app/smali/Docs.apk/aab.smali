.class public final Laab;
.super Ljava/lang/Object;
.source "TextSanitizers.java"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 47
    :goto_3
    return-object v0

    .line 39
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const/4 v0, 0x0

    .line 41
    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 44
    invoke-static {v2}, Laab;->a(I)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v2

    :goto_1b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 46
    goto :goto_a

    .line 44
    :cond_24
    const/16 v1, 0x20

    goto :goto_1b

    .line 47
    :cond_27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 20
    const/16 v1, 0xf

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
