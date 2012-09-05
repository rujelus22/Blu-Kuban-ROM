.class Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;
.super Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_gb_18030"
.end annotation


# static fields
.field static commonChars:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 513
    const/16 v0, 0x64

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    .line 509
    sput-object v0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->commonChars:[I

    .line 448
    return-void

    .line 513
    :array_a
    .array-data 0x4
        0xa1t 0xa1t 0x0t 0x0t
        0xa2t 0xa1t 0x0t 0x0t
        0xa3t 0xa1t 0x0t 0x0t
        0xa4t 0xa1t 0x0t 0x0t
        0xb0t 0xa1t 0x0t 0x0t
        0xb1t 0xa1t 0x0t 0x0t
        0xf1t 0xa1t 0x0t 0x0t
        0xf3t 0xa1t 0x0t 0x0t
        0xa1t 0xa3t 0x0t 0x0t
        0xact 0xa3t 0x0t 0x0t
        0xbat 0xa3t 0x0t 0x0t
        0xa8t 0xb1t 0x0t 0x0t
        0xb8t 0xb1t 0x0t 0x0t
        0xbet 0xb1t 0x0t 0x0t
        0xbbt 0xb2t 0x0t 0x0t
        0xc9t 0xb3t 0x0t 0x0t
        0xf6t 0xb3t 0x0t 0x0t
        0xf3t 0xb4t 0x0t 0x0t
        0xbdt 0xb5t 0x0t 0x0t
        0xc4t 0xb5t 0x0t 0x0t
        0xe3t 0xb5t 0x0t 0x0t
        0xaft 0xb6t 0x0t 0x0t
        0xd4t 0xb6t 0x0t 0x0t
        0xe0t 0xb6t 0x0t 0x0t
        0xa2t 0xb7t 0x0t 0x0t
        0xa8t 0xb7t 0x0t 0x0t
        0xbdt 0xb7t 0x0t 0x0t
        0xd6t 0xb7t 0x0t 0x0t
        0xddt 0xb7t 0x0t 0x0t
        0xb4t 0xb8t 0x0t 0x0t
        0xdft 0xb8t 0x0t 0x0t
        0xf6t 0xb8t 0x0t 0x0t
        0xabt 0xb9t 0x0t 0x0t
        0xc9t 0xb9t 0x0t 0x0t
        0xd8t 0xb9t 0x0t 0x0t
        0xfat 0xb9t 0x0t 0x0t
        0xfdt 0xb9t 0x0t 0x0t
        0xcdt 0xbat 0x0t 0x0t
        0xa7t 0xbbt 0x0t 0x0t
        0xd6t 0xbbt 0x0t 0x0t
        0xe1t 0xbbt 0x0t 0x0t
        0xfat 0xbbt 0x0t 0x0t
        0xbct 0xbct 0x0t 0x0t
        0xdbt 0xbct 0x0t 0x0t
        0xfet 0xbct 0x0t 0x0t
        0xcct 0xbdt 0x0t 0x0t
        0xcdt 0xbet 0x0t 0x0t
        0xddt 0xbet 0x0t 0x0t
        0xb4t 0xbft 0x0t 0x0t
        0xc6t 0xbft 0x0t 0x0t
        0xc9t 0xbft 0x0t 0x0t
        0xb4t 0xc0t 0x0t 0x0t
        0xedt 0xc0t 0x0t 0x0t
        0xcbt 0xc1t 0x0t 0x0t
        0xdbt 0xc2t 0x0t 0x0t
        0xc7t 0xc3t 0x0t 0x0t
        0xdct 0xc4t 0x0t 0x0t
        0xeat 0xc4t 0x0t 0x0t
        0xcct 0xc5t 0x0t 0x0t
        0xf7t 0xc6t 0x0t 0x0t
        0xf8t 0xc7t 0x0t 0x0t
        0xabt 0xc8t 0x0t 0x0t
        0xcbt 0xc8t 0x0t 0x0t
        0xd5t 0xc8t 0x0t 0x0t
        0xe7t 0xc8t 0x0t 0x0t
        0xcft 0xc9t 0x0t 0x0t
        0xfat 0xc9t 0x0t 0x0t
        0xb1t 0xcat 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t
        0xc7t 0xcat 0x0t 0x0t
        0xd0t 0xcat 0x0t 0x0t
        0xd6t 0xcat 0x0t 0x0t
        0xf5t 0xcat 0x0t 0x0t
        0xfdt 0xcat 0x0t 0x0t
        0xect 0xcct 0x0t 0x0t
        0xf8t 0xcdt 0x0t 0x0t
        0xaat 0xcet 0x0t 0x0t
        0xc4t 0xcet 0x0t 0x0t
        0xd2t 0xcet 0x0t 0x0t
        0xe5t 0xcet 0x0t 0x0t
        0xb5t 0xcft 0x0t 0x0t
        0xc2t 0xcft 0x0t 0x0t
        0xd6t 0xcft 0x0t 0x0t
        0xc2t 0xd0t 0x0t 0x0t
        0xc5t 0xd0t 0x0t 0x0t
        0xd0t 0xd0t 0x0t 0x0t
        0xd4t 0xd0t 0x0t 0x0t
        0xa7t 0xd1t 0x0t 0x0t
        0xaat 0xd2t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t
        0xb5t 0xd2t 0x0t 0x0t
        0xbbt 0xd2t 0x0t 0x0t
        0xd4t 0xd2t 0x0t 0x0t
        0xc3t 0xd3t 0x0t 0x0t
        0xd0t 0xd3t 0x0t 0x0t
        0xfdt 0xd3t 0x0t 0x0t
        0xc2t 0xd4t 0x0t 0x0t
        0xdat 0xd4t 0x0t 0x0t
        0xe2t 0xd5t 0x0t 0x0t
        0xd0t 0xd6t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 535
    const-string v0, "zh"

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 526
    const-string v0, "GB18030"

    return-object v0
.end method

.method match(Lcom/infraware/common/util/text/CharsetDetector;)I
    .registers 3
    .parameter "det"

    .prologue
    .line 530
    sget-object v0, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->commonChars:[I

    invoke-virtual {p0, p1, v0}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;->match(Lcom/infraware/common/util/text/CharsetDetector;[I)I

    move-result v0

    return v0
.end method

.method nextChar(Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;Lcom/infraware/common/util/text/CharsetDetector;)Z
    .registers 13
    .parameter "it"
    .parameter "det"

    .prologue
    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v4, 0x0

    const/16 v7, 0xfe

    const/4 v5, 0x1

    .line 457
    iget v6, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput v6, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 458
    iput-boolean v4, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, firstByte:I
    const/4 v2, 0x0

    .line 461
    .local v2, secondByte:I
    const/4 v3, 0x0

    .line 462
    .local v3, thirdByte:I
    const/4 v1, 0x0

    .line 465
    .local v1, fourthByte:I
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v0

    .end local v0           #firstByte:I
    iput v0, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 467
    .restart local v0       #firstByte:I
    if-gez v0, :cond_21

    .line 469
    iput-boolean v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 506
    :cond_1c
    :goto_1c
    iget-boolean v6, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    if-eqz v6, :cond_68

    :goto_20
    return v4

    .line 473
    :cond_21
    const/16 v6, 0x80

    if-le v0, v6, :cond_1c

    .line 478
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v2

    .line 479
    iget v6, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v2

    iput v6, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 481
    const/16 v6, 0x81

    if-lt v0, v6, :cond_1c

    if-gt v0, v7, :cond_1c

    .line 483
    const/16 v6, 0x40

    if-lt v2, v6, :cond_3e

    const/16 v6, 0x7e

    if-le v2, v6, :cond_1c

    :cond_3e
    const/16 v6, 0x50

    if-lt v2, v6, :cond_44

    if-le v2, v7, :cond_1c

    .line 488
    :cond_44
    if-lt v2, v8, :cond_65

    if-gt v2, v9, :cond_65

    .line 489
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v3

    .line 491
    const/16 v6, 0x81

    if-lt v3, v6, :cond_65

    if-gt v3, v7, :cond_65

    .line 492
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v1

    .line 494
    if-lt v1, v8, :cond_65

    if-gt v1, v9, :cond_65

    .line 495
    iget v6, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v6, v6, 0x10

    shl-int/lit8 v7, v3, 0x8

    or-int/2addr v6, v7

    or-int/2addr v6, v1

    iput v6, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    goto :goto_1c

    .line 501
    :cond_65
    iput-boolean v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_1c

    :cond_68
    move v4, v5

    .line 506
    goto :goto_20
.end method
