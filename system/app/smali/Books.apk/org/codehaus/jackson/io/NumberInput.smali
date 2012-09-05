.class public final Lorg/codehaus/jackson/io/NumberInput;
.super Ljava/lang/Object;
.source "NumberInput.java"


# static fields
.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 17
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final inLongRange([CIIZ)Z
    .registers 12
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"
    .parameter "negative"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 150
    if-eqz p3, :cond_d

    sget-object v1, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 151
    .local v1, cmpStr:Ljava/lang/String;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    .local v0, cmpLen:I
    if-ge p2, v0, :cond_10

    .line 161
    :cond_c
    :goto_c
    return v4

    .line 150
    .end local v0           #cmpLen:I
    .end local v1           #cmpStr:Ljava/lang/String;
    :cond_d
    sget-object v1, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    goto :goto_6

    .line 153
    .restart local v0       #cmpLen:I
    .restart local v1       #cmpStr:Ljava/lang/String;
    :cond_10
    if-le p2, v0, :cond_14

    move v4, v5

    goto :goto_c

    .line 155
    :cond_14
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    if-ge v3, v0, :cond_c

    .line 156
    add-int v6, p1, v3

    aget-char v6, p0, v6

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int v2, v6, v7

    .line 157
    .local v2, diff:I
    if-eqz v2, :cond_27

    .line 158
    if-ltz v2, :cond_c

    move v4, v5

    goto :goto_c

    .line 155
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method public static final parseDouble(Ljava/lang/String;)D
    .registers 3
    .parameter "numStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 299
    const-wide/high16 v0, 0x10

    .line 301
    :goto_a
    return-wide v0

    :cond_b
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_a
.end method

.method public static final parseInt([CII)I
    .registers 6
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 28
    aget-char v1, p0, p1

    add-int/lit8 v0, v1, -0x30

    .line 29
    .local v0, num:I
    add-int/2addr p2, p1

    .line 31
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 32
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 33
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 34
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 35
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 36
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 37
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 38
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 39
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 40
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 41
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 42
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 43
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 44
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 45
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 46
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 55
    :cond_65
    return v0
.end method

.method public static final parseLong([CII)J
    .registers 10
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 120
    add-int/lit8 v0, p2, -0x9

    .line 121
    .local v0, len1:I
    invoke-static {p0, p1, v0}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x3b9aca00

    mul-long v1, v3, v5

    .line 122
    .local v1, val:J
    add-int v3, p1, v0

    const/16 v4, 0x9

    invoke-static {p0, v3, v4}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    return-wide v3
.end method
