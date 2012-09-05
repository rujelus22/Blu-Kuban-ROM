.class public final Lorg/codehaus/jackson/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


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

    sput-object v0, Lorg/codehaus/jackson/b/f;->a:Ljava/lang/String;

    .line 17
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/b/f;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)D
    .registers 3
    .parameter

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

.method public static final a([CII)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    aget-char v0, p0, p1

    add-int/lit8 v0, v0, -0x30

    .line 29
    add-int v1, p2, p1

    .line 31
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_5e

    .line 32
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 33
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    .line 34
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 35
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    .line 36
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 37
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    .line 38
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 39
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    .line 40
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 41
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    .line 42
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 43
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    .line 44
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    .line 45
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    .line 46
    mul-int/lit8 v0, v0, 0xa

    aget-char v1, p0, v2

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 55
    :cond_5e
    return v0
.end method

.method public static final a([CIIZ)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    if-eqz p3, :cond_e

    sget-object v0, Lorg/codehaus/jackson/b/f;->a:Ljava/lang/String;

    .line 151
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 152
    if-ge p2, v4, :cond_11

    move v0, v1

    .line 161
    :goto_d
    return v0

    .line 150
    :cond_e
    sget-object v0, Lorg/codehaus/jackson/b/f;->b:Ljava/lang/String;

    goto :goto_6

    .line 153
    :cond_11
    if-le p2, v4, :cond_15

    move v0, v2

    goto :goto_d

    :cond_15
    move v3, v2

    .line 155
    :goto_16
    if-ge v3, v4, :cond_2c

    .line 156
    add-int v5, p1, v3

    aget-char v5, p0, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v5, v6

    .line 157
    if-eqz v5, :cond_29

    .line 158
    if-gez v5, :cond_27

    move v0, v1

    goto :goto_d

    :cond_27
    move v0, v2

    goto :goto_d

    .line 155
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2c
    move v0, v1

    .line 161
    goto :goto_d
.end method

.method public static final b([CII)J
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    add-int/lit8 v0, p2, -0x9

    .line 121
    invoke-static {p0, p1, v0}, Lorg/codehaus/jackson/b/f;->a([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    .line 122
    add-int/2addr v0, p1

    const/16 v3, 0x9

    invoke-static {p0, v0, v3}, Lorg/codehaus/jackson/b/f;->a([CII)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method
