.class public Lcom/google/android/apps/reader/provider/ReaderItem;
.super Ljava/lang/Object;
.source "ReaderItem.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static getItemId(Ljava/lang/String;)J
    .registers 6
    .parameter "externalId"

    .prologue
    .line 44
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 45
    .local v1, index:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_f

    .line 46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_f
    add-int/lit8 v2, v1, 0x1

    .line 49
    .local v2, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 50
    .local v0, end:I
    const/16 v3, 0x10

    invoke-static {p0, v2, v0, v3}, Lcom/google/android/apps/reader/provider/ReaderItem;->parseUnsignedLong(Ljava/lang/String;III)J

    move-result-wide v3

    return-wide v3
.end method

.method private static parseUnsignedLong(Ljava/lang/String;III)J
    .registers 13
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "radix"

    .prologue
    .line 22
    if-nez p0, :cond_8

    .line 23
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 25
    :cond_8
    const-wide/16 v3, 0x0

    .line 26
    .local v3, value:J
    move v2, p1

    .local v2, i:I
    :goto_b
    if-ge v2, p2, :cond_2a

    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 28
    .local v0, c:C
    invoke-static {v0, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 29
    .local v1, digit:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_22

    .line 30
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 32
    :cond_22
    int-to-long v5, p3

    mul-long/2addr v5, v3

    int-to-long v7, v1

    add-long v3, v5, v7

    .line 26
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 34
    .end local v0           #c:C
    .end local v1           #digit:I
    :cond_2a
    return-wide v3
.end method
