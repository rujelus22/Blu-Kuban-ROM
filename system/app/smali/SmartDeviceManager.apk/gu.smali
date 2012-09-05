.class public final Lgu;
.super Ljava/lang/Object;
.source "a"


# static fields
.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;


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

    sput-object v0, Lgu;->a:Ljava/lang/String;

    .line 11
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgu;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a([CII)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    .line 22
    aget-char v0, p0, p1

    sub-int/2addr v0, v4

    .line 23
    add-int v1, p2, p1

    .line 25
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_57

    .line 26
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 27
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    .line 28
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 29
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    .line 30
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 31
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    .line 32
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 33
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    .line 34
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 35
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    .line 36
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 37
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    .line 38
    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 39
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    .line 40
    mul-int/lit8 v0, v0, 0xa

    aget-char v1, p0, v2

    sub-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 49
    :cond_57
    return v0
.end method

.method public static final a(Ljava/lang/String;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    sget-object v0, Lgu;->b:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 99
    if-ge v2, v1, :cond_10

    move v0, v6

    .line 108
    :goto_f
    return v0

    .line 100
    :cond_10
    if-le v2, v1, :cond_14

    move v0, v5

    goto :goto_f

    :cond_14
    move v2, v5

    .line 103
    :goto_15
    if-ge v2, v1, :cond_26

    .line 104
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_23

    move v0, v5

    .line 105
    goto :goto_f

    .line 103
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_26
    move v0, v6

    .line 108
    goto :goto_f
.end method

.method public static final a([CIIZ)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    if-eqz p3, :cond_e

    sget-object v0, Lgu;->a:Ljava/lang/String;

    .line 73
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 74
    if-ge p2, v1, :cond_11

    move v0, v6

    .line 82
    :goto_d
    return v0

    .line 72
    :cond_e
    sget-object v0, Lgu;->b:Ljava/lang/String;

    goto :goto_6

    .line 75
    :cond_11
    if-le p2, v1, :cond_15

    move v0, v5

    goto :goto_d

    :cond_15
    move v2, v5

    .line 77
    :goto_16
    if-ge v2, v1, :cond_27

    .line 78
    add-int v3, p1, v2

    aget-char v3, p0, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_24

    move v0, v5

    .line 79
    goto :goto_d

    .line 77
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_27
    move v0, v6

    .line 82
    goto :goto_d
.end method

.method public static final b([CII)J
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x9

    .line 55
    sub-int v0, p2, v5

    .line 56
    invoke-static {p0, p1, v0}, Lgu;->a([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    .line 57
    add-int/2addr v0, p1

    invoke-static {p0, v0, v5}, Lgu;->a([CII)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method
