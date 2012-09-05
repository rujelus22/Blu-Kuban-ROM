.class Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser"
.end annotation


# static fields
.field private static final N_GRAM_MASK:I = 0xffffff


# instance fields
.field private byteIndex:I

.field private byteMap:[B

.field private hitCount:I

.field private ngram:I

.field private ngramCount:I

.field private ngramList:[I

.field private spaceChar:B


# direct methods
.method public constructor <init>([I[B)V
    .registers 4
    .parameter "theNgramList"
    .parameter "theByteMap"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    .line 35
    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 47
    iput-object p1, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    .line 48
    iput-object p2, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    .line 50
    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 52
    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 53
    return-void
.end method

.method private addByte(I)V
    .registers 4
    .parameter "b"

    .prologue
    .line 109
    iget v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    .line 110
    iget v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    invoke-direct {p0, v0}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->lookup(I)V

    .line 111
    return-void
.end method

.method private lookup(I)V
    .registers 3
    .parameter "thisNgram"

    .prologue
    .line 99
    iget v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    .line 101
    iget-object v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    invoke-static {v0, p1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->search([II)I

    move-result v0

    if-ltz v0, :cond_14

    .line 102
    iget v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    .line 105
    :cond_14
    return-void
.end method

.method private nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 5
    .parameter "det"

    .prologue
    .line 115
    iget v0, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    iget v1, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    if-lt v0, v1, :cond_8

    .line 116
    const/4 v0, -0x1

    .line 119
    :goto_7
    return v0

    :cond_8
    iget-object v0, p1, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    iget v1, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_7
.end method

.method private static search([II)I
    .registers 4
    .parameter "table"
    .parameter "value"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 62
    .local v0, index:I
    const/16 v1, 0x20

    aget v1, p0, v1

    if-gt v1, p1, :cond_9

    .line 63
    add-int/lit8 v0, v0, 0x20

    .line 66
    :cond_9
    add-int/lit8 v1, v0, 0x10

    aget v1, p0, v1

    if-gt v1, p1, :cond_11

    .line 67
    add-int/lit8 v0, v0, 0x10

    .line 70
    :cond_11
    add-int/lit8 v1, v0, 0x8

    aget v1, p0, v1

    if-gt v1, p1, :cond_19

    .line 71
    add-int/lit8 v0, v0, 0x8

    .line 74
    :cond_19
    add-int/lit8 v1, v0, 0x4

    aget v1, p0, v1

    if-gt v1, p1, :cond_21

    .line 75
    add-int/lit8 v0, v0, 0x4

    .line 78
    :cond_21
    add-int/lit8 v1, v0, 0x2

    aget v1, p0, v1

    if-gt v1, p1, :cond_29

    .line 79
    add-int/lit8 v0, v0, 0x2

    .line 82
    :cond_29
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-gt v1, p1, :cond_31

    .line 83
    add-int/lit8 v0, v0, 0x1

    .line 86
    :cond_31
    aget v1, p0, v0

    if-le v1, p1, :cond_37

    .line 87
    add-int/lit8 v0, v0, -0x1

    .line 90
    :cond_37
    if-ltz v0, :cond_3d

    aget v1, p0, v0

    if-eq v1, p1, :cond_3e

    .line 91
    :cond_3d
    const/4 v0, -0x1

    .line 94
    .end local v0           #index:I
    :cond_3e
    return v0
.end method


# virtual methods
.method public parse(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 3
    .parameter "det"

    .prologue
    .line 124
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->parse(Lcom/infraware/common/util/text/CharsetDetector;B)I

    move-result v0

    return v0
.end method

.method public parse(Lcom/infraware/common/util/text/CharsetDetector;B)I
    .registers 12
    .parameter "det"
    .parameter "spaceCh"

    .prologue
    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, ignoreSpace:Z
    iput-byte p2, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    .line 132
    :cond_3
    :goto_3
    invoke-direct {p0, p1}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v0

    .local v0, b:I
    if-gez v0, :cond_22

    .line 146
    iget-byte v5, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    invoke-direct {p0, v5}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 148
    iget v5, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    int-to-double v5, v5

    iget v7, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    int-to-double v7, v7

    div-double v3, v5, v7

    .line 156
    .local v3, rawPercent:D
    const-wide v5, 0x3fd51eb851eb851fL

    cmpl-double v5, v3, v5

    if-lez v5, :cond_39

    .line 157
    const/16 v5, 0x62

    .line 160
    :goto_21
    return v5

    .line 133
    .end local v3           #rawPercent:D
    :cond_22
    iget-object v5, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    aget-byte v2, v5, v0

    .line 136
    .local v2, mb:B
    if-eqz v2, :cond_3

    .line 137
    iget-byte v5, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v5, :cond_2e

    if-nez v1, :cond_31

    .line 138
    :cond_2e
    invoke-direct {p0, v2}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    .line 141
    :cond_31
    iget-byte v5, p0, Lcom/infraware/common/util/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v5, :cond_37

    const/4 v1, 0x1

    :goto_36
    goto :goto_3

    :cond_37
    const/4 v1, 0x0

    goto :goto_36

    .line 160
    .end local v2           #mb:B
    .restart local v3       #rawPercent:D
    :cond_39
    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v5, v3

    double-to-int v5, v5

    goto :goto_21
.end method
