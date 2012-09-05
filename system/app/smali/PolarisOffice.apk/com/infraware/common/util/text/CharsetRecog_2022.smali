.class abstract Lcom/infraware/common/util/text/CharsetRecog_2022;
.super Lcom/infraware/common/util/text/CharsetRecognizer;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022CN;,
        Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022JP;,
        Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022KR;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method match([BI[[B)I
    .registers 14
    .parameter "text"
    .parameter "textLen"
    .parameter "escapeSequences"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, hits:I
    const/4 v4, 0x0

    .line 37
    .local v4, misses:I
    const/4 v7, 0x0

    .line 40
    .local v7, shifts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-lt v2, p2, :cond_a

    .line 70
    if-nez v1, :cond_47

    .line 71
    const/4 v5, 0x0

    .line 92
    :cond_9
    :goto_9
    return v5

    .line 41
    :cond_a
    aget-byte v8, p1, v2

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_16

    .line 43
    const/4 v0, 0x0

    .local v0, escN:I
    :goto_11
    array-length v8, p3

    if-lt v0, v8, :cond_27

    .line 61
    add-int/lit8 v4, v4, 0x1

    .line 64
    .end local v0           #escN:I
    :cond_16
    aget-byte v8, p1, v2

    const/16 v9, 0xe

    if-eq v8, v9, :cond_22

    aget-byte v8, p1, v2

    const/16 v9, 0xf

    if-ne v8, v9, :cond_24

    .line 66
    :cond_22
    add-int/lit8 v7, v7, 0x1

    .line 40
    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 44
    .restart local v0       #escN:I
    :cond_27
    aget-object v6, p3, v0

    .line 46
    .local v6, seq:[B
    sub-int v8, p2, v2

    array-length v9, v6

    if-ge v8, v9, :cond_31

    .line 43
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 50
    :cond_31
    const/4 v3, 0x1

    .local v3, j:I
    :goto_32
    array-length v8, v6

    if-lt v3, v8, :cond_3c

    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v2, v8

    .line 58
    goto :goto_24

    .line 51
    :cond_3c
    aget-byte v8, v6, v3

    add-int v9, v2, v3

    aget-byte v9, p1, v9

    if-ne v8, v9, :cond_2e

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 80
    .end local v0           #escN:I
    .end local v3           #j:I
    .end local v6           #seq:[B
    :cond_47
    mul-int/lit8 v8, v1, 0x64

    mul-int/lit8 v9, v4, 0x64

    sub-int/2addr v8, v9

    add-int v9, v1, v4

    div-int v5, v8, v9

    .line 85
    .local v5, quality:I
    add-int v8, v1, v7

    const/4 v9, 0x5

    if-ge v8, v9, :cond_5c

    .line 86
    add-int v8, v1, v7

    rsub-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v5, v8

    .line 89
    :cond_5c
    if-gez v5, :cond_9

    .line 90
    const/4 v5, 0x0

    goto :goto_9
.end method
