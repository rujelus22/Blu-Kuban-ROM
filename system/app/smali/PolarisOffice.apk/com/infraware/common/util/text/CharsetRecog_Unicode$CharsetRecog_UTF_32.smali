.class abstract Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;
.super Lcom/infraware/common/util/text/CharsetRecog_Unicode;
.source "CharsetRecog_Unicode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_Unicode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_UTF_32"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_Unicode;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getChar([BI)I
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 12
    .parameter "det"

    .prologue
    const/4 v8, 0x0

    .line 81
    iget-object v4, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    .line 82
    .local v4, input:[B
    iget v9, p1, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    div-int/lit8 v9, v9, 0x4

    mul-int/lit8 v5, v9, 0x4

    .line 83
    .local v5, limit:I
    const/4 v7, 0x0

    .line 84
    .local v7, numValid:I
    const/4 v6, 0x0

    .line 85
    .local v6, numInvalid:I
    const/4 v2, 0x0

    .line 86
    .local v2, hasBOM:Z
    const/4 v1, 0x0

    .line 88
    .local v1, confidence:I
    if-nez v5, :cond_10

    .line 121
    :goto_f
    return v8

    .line 91
    :cond_10
    invoke-virtual {p0, v4, v8}, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v8

    const v9, 0xfeff

    if-ne v8, v9, :cond_1a

    .line 92
    const/4 v2, 0x1

    .line 95
    :cond_1a
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1b
    if-lt v3, v5, :cond_25

    .line 108
    if-eqz v2, :cond_42

    if-nez v6, :cond_42

    .line 109
    const/16 v1, 0x64

    :cond_23
    :goto_23
    move v8, v1

    .line 121
    goto :goto_f

    .line 96
    :cond_25
    invoke-virtual {p0, v4, v3}, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32;->getChar([BI)I

    move-result v0

    .line 98
    .local v0, ch:I
    if-ltz v0, :cond_3a

    const v8, 0x10ffff

    if-ge v0, v8, :cond_3a

    const v8, 0xd800

    if-lt v0, v8, :cond_3f

    const v8, 0xdfff

    if-gt v0, v8, :cond_3f

    .line 99
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    .line 95
    :goto_3c
    add-int/lit8 v3, v3, 0x4

    goto :goto_1b

    .line 101
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    .line 110
    .end local v0           #ch:I
    :cond_42
    if-eqz v2, :cond_4b

    mul-int/lit8 v8, v6, 0xa

    if-le v7, v8, :cond_4b

    .line 111
    const/16 v1, 0x50

    goto :goto_23

    .line 112
    :cond_4b
    const/4 v8, 0x3

    if-le v7, v8, :cond_53

    if-nez v6, :cond_53

    .line 113
    const/16 v1, 0x64

    goto :goto_23

    .line 114
    :cond_53
    if-lez v7, :cond_5a

    if-nez v6, :cond_5a

    .line 115
    const/16 v1, 0x50

    goto :goto_23

    .line 116
    :cond_5a
    mul-int/lit8 v8, v6, 0xa

    if-le v7, v8, :cond_23

    .line 118
    const/16 v1, 0x19

    goto :goto_23
.end method
