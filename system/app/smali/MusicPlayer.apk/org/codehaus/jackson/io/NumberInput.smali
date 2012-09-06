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
    .line 10
    const-wide/high16 v0, -0x8000

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 11
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
    .registers 11
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"
    .parameter "negative"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 69
    if-eqz p3, :cond_d

    sget-object v1, Lorg/codehaus/jackson/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 70
    .local v1, cmpStr:Ljava/lang/String;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 71
    .local v0, cmpLen:I
    if-ge p2, v0, :cond_10

    .line 79
    :cond_c
    :goto_c
    return v3

    .line 69
    .end local v0           #cmpLen:I
    .end local v1           #cmpStr:Ljava/lang/String;
    :cond_d
    sget-object v1, Lorg/codehaus/jackson/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    goto :goto_6

    .line 72
    .restart local v0       #cmpLen:I
    .restart local v1       #cmpStr:Ljava/lang/String;
    :cond_10
    if-le p2, v0, :cond_14

    move v3, v4

    goto :goto_c

    .line 74
    :cond_14
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v0, :cond_c

    .line 75
    add-int v5, p1, v2

    aget-char v5, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-le v5, v6, :cond_23

    move v3, v4

    .line 76
    goto :goto_c

    .line 74
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15
.end method

.method public static final parseInt([CII)I
    .registers 6
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 22
    aget-char v1, p0, p1

    add-int/lit8 v0, v1, -0x30

    .line 23
    .local v0, num:I
    add-int/2addr p2, p1

    .line 25
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 26
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 27
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 28
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

    .line 29
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_65

    .line 30
    mul-int/lit8 v1, v0, 0xa

    aget-char v2, p0, p1

    add-int/lit8 v2, v2, -0x30

    add-int v0, v1, v2

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

    .line 49
    :cond_65
    return v0
.end method

.method public static final parseLong([CII)J
    .registers 10
    .parameter "digitChars"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 55
    add-int/lit8 v0, p2, -0x9

    .line 56
    .local v0, len1:I
    invoke-static {p0, p1, v0}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0x3b9aca00

    mul-long v1, v3, v5

    .line 57
    .local v1, val:J
    add-int v3, p1, v0

    const/16 v4, 0x9

    invoke-static {p0, v3, v4}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v1

    return-wide v3
.end method
