.class abstract Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.super Lcom/infraware/common/util/text/CharsetRecognizer;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_big5;,
        Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc;,
        Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;,
        Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_sjis;,
        Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;[I)I
    .registers 22
    .parameter "det"
    .parameter "commonChars"

    .prologue
    .line 46
    const/4 v13, 0x0

    .line 47
    .local v13, singleByteCharCount:I
    const/4 v7, 0x0

    .line 48
    .local v7, doubleByteCharCount:I
    const/4 v3, 0x0

    .line 49
    .local v3, commonCharCount:I
    const/4 v2, 0x0

    .line 50
    .local v2, badCharCount:I
    const/4 v14, 0x0

    .line 51
    .local v14, totalCharCount:I
    const/4 v4, 0x0

    .line 52
    .local v4, confidence:I
    new-instance v8, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;

    invoke-direct {v8}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;-><init>()V

    .line 55
    .local v8, iter:Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;
    invoke-virtual {v8}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->reset()V

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v8, v1}, Lcom/infraware/common/util/text/CharsetRecog_mbcs;->nextChar(Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;Lcom/infraware/common/util/text/CharsetDetector;)Z

    move-result v15

    if-nez v15, :cond_26

    .line 80
    const/16 v15, 0xa

    if-gt v7, v15, :cond_5c

    if-nez v2, :cond_5c

    .line 82
    if-nez v7, :cond_59

    const/16 v15, 0xa

    if-ge v14, v15, :cond_59

    .line 86
    const/4 v4, 0x0

    .line 125
    :cond_25
    :goto_25
    return v4

    .line 56
    :cond_26
    add-int/lit8 v14, v14, 0x1

    .line 57
    iget-boolean v15, v8, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    if-eqz v15, :cond_36

    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 74
    :cond_2e
    :goto_2e
    const/4 v15, 0x2

    if-lt v2, v15, :cond_e

    mul-int/lit8 v15, v2, 0x5

    if-lt v15, v7, :cond_e

    goto :goto_25

    .line 60
    :cond_36
    iget v15, v8, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    int-to-long v15, v15

    const-wide v17, 0xffffffffL

    and-long v5, v15, v17

    .line 62
    .local v5, cv:J
    const-wide/16 v15, 0xff

    cmp-long v15, v5, v15

    if-gtz v15, :cond_49

    .line 63
    add-int/lit8 v13, v13, 0x1

    goto :goto_2e

    .line 65
    :cond_49
    add-int/lit8 v7, v7, 0x1

    .line 66
    if-eqz p2, :cond_2e

    .line 68
    long-to-int v15, v5

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v15

    if-ltz v15, :cond_2e

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 91
    .end local v5           #cv:J
    :cond_59
    const/16 v4, 0xa

    .line 94
    goto :goto_25

    .line 101
    :cond_5c
    mul-int/lit8 v15, v2, 0x14

    if-ge v7, v15, :cond_62

    .line 102
    const/4 v4, 0x0

    .line 103
    goto :goto_25

    .line 106
    :cond_62
    if-nez p2, :cond_71

    .line 110
    add-int/lit8 v15, v7, 0x1e

    mul-int/lit8 v16, v2, 0x14

    sub-int v4, v15, v16

    .line 111
    const/16 v15, 0x64

    if-le v4, v15, :cond_25

    .line 112
    const/16 v4, 0x64

    goto :goto_25

    .line 118
    :cond_71
    int-to-float v15, v7

    const/high16 v16, 0x4080

    div-float v15, v15, v16

    float-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    .line 119
    .local v9, maxVal:D
    const-wide v15, 0x4056800000000000L

    div-double v11, v15, v9

    .line 120
    .local v11, scaleFactor:D
    add-int/lit8 v15, v3, 0x1

    int-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    mul-double/2addr v15, v11

    const-wide/high16 v17, 0x4024

    add-double v15, v15, v17

    double-to-int v4, v15

    .line 121
    const/16 v15, 0x64

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_25
.end method

.method abstract nextChar(Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;Lcom/infraware/common/util/text/CharsetDetector;)Z
.end method
