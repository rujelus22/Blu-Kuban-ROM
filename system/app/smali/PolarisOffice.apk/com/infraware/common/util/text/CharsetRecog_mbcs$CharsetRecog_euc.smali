.class abstract Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc;
.super Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.source "CharsetRecog_mbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/util/text/CharsetRecog_mbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CharsetRecog_euc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;,
        Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetRecog_mbcs;-><init>()V

    return-void
.end method


# virtual methods
.method nextChar(Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;Lcom/infraware/common/util/text/CharsetDetector;)Z
    .registers 10
    .parameter "it"
    .parameter "det"

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0xa1

    const/4 v4, 0x1

    .line 319
    iget v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextIndex:I

    iput v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->index:I

    .line 320
    iput-boolean v3, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, firstByte:I
    const/4 v1, 0x0

    .line 323
    .local v1, secondByte:I
    const/4 v2, 0x0

    .line 327
    .local v2, thirdByte:I
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v0

    .end local v0           #firstByte:I
    iput v0, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 328
    .restart local v0       #firstByte:I
    if-gez v0, :cond_1c

    .line 330
    iput-boolean v4, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    .line 372
    :cond_17
    :goto_17
    iget-boolean v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->done:Z

    if-eqz v5, :cond_53

    :goto_1b
    return v3

    .line 333
    :cond_1c
    const/16 v5, 0x8d

    if-le v0, v5, :cond_17

    .line 338
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v1

    .line 339
    iget v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v1

    iput v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 341
    if-lt v0, v6, :cond_36

    const/16 v5, 0xfe

    if-gt v0, v5, :cond_36

    .line 343
    if-ge v1, v6, :cond_17

    .line 344
    iput-boolean v4, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_17

    .line 348
    :cond_36
    const/16 v5, 0x8e

    if-ne v0, v5, :cond_3f

    .line 355
    if-ge v1, v6, :cond_17

    .line 356
    iput-boolean v4, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_17

    .line 361
    :cond_3f
    const/16 v5, 0x8f

    if-ne v0, v5, :cond_17

    .line 364
    invoke-virtual {p1, p2}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->nextByte(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v2

    .line 365
    iget v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v2

    iput v5, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->charValue:I

    .line 366
    if-ge v2, v6, :cond_17

    .line 367
    iput-boolean v4, p1, Lcom/infraware/common/util/text/CharsetRecog_mbcs$iteratedChar;->error:Z

    goto :goto_17

    :cond_53
    move v3, v4

    .line 372
    goto :goto_1b
.end method
