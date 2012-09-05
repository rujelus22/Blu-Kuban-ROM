.class final Lorg/apache/commons/codec/language/SoundexUtils;
.super Ljava/lang/Object;
.source "SoundexUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "str"

    .prologue
    .line 40
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 54
    .end local p0
    .local v0, chars:[C
    .local v2, count:I
    .local v3, i:I
    .local v4, len:I
    :cond_8
    :goto_8
    return-object p0

    .line 43
    .end local v0           #chars:[C
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #len:I
    .restart local p0
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 44
    .restart local v4       #len:I
    new-array v0, v4, [C

    .line 45
    .restart local v0       #chars:[C
    const/4 v1, 0x0

    .line 46
    .local v1, count:I
    const/4 v3, 0x0

    .restart local v3       #i:I
    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    :goto_12
    if-ge v3, v4, :cond_2a

    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 48
    add-int/lit8 v1, v2, 0x1

    .end local v2           #count:I
    .restart local v1       #count:I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 46
    :goto_26
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1           #count:I
    .restart local v2       #count:I
    goto :goto_12

    .line 51
    :cond_2a
    if-ne v2, v4, :cond_31

    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    .line 54
    :cond_31
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_3c
    move v1, v2

    .end local v2           #count:I
    .restart local v1       #count:I
    goto :goto_26
.end method

.method static difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .parameter "encoder"
    .parameter "s1"
    .parameter "s2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-interface {p0, p1}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p2}, Lorg/apache/commons/codec/StringEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codec/language/SoundexUtils;->differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static differenceEncoded(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .parameter "es1"
    .parameter "es2"

    .prologue
    .line 109
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 110
    :cond_4
    const/4 v0, 0x0

    .line 119
    :cond_5
    return v0

    .line 112
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 113
    .local v2, lengthToMatch:I
    const/4 v0, 0x0

    .line 114
    .local v0, diff:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_14
    if-ge v1, v2, :cond_5

    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_22

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method
