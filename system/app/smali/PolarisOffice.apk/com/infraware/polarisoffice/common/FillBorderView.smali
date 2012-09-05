.class Lcom/infraware/polarisoffice/common/FillBorderView;
.super Landroid/view/View;
.source "FillBorderView.java"


# static fields
.field public static final BORDER_ALL:I = 0x9

.field public static final BORDER_BOTTOM:I = 0x4

.field public static final BORDER_CNT:I = 0x4

.field public static final BORDER_HORIZONTAL:I = 0x6

.field public static final BORDER_INSIDE:I = 0x8

.field public static final BORDER_LEFT:I = 0x1

.field public static final BORDER_NONE:I = 0x0

.field public static final BORDER_OUTBOX:I = 0x7

.field public static final BORDER_RIGHT:I = 0x3

.field public static final BORDER_TOP:I = 0x2

.field public static final BORDER_VERTICAL:I = 0x5


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field mBColor:I

.field mBStyle:B

.field mBorderLine:[Landroid/graphics/Rect;

.field mBorderMask:J

.field mHBorderLine:Landroid/graphics/Rect;

.field mHColor:I

.field mHStyle:B

.field mLColor:I

.field mLStyle:B

.field mRColor:I

.field mRStyle:B

.field mSelectedColor:I

.field mSelectedStyle:B

.field mStyle:I

.field mTColor:I

.field mTStyle:B

.field mVBorderLine:Landroid/graphics/Rect;

.field mVColor:I

.field mVStyle:B

.field mbModified:Z

.field mbUseHBorder:Z

.field mbUseVBorder:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "FillBorderView"

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->LOG_CAT:Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    .line 47
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->setInit()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string v0, "FillBorderView"

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->LOG_CAT:Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    .line 52
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->setInit()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string v0, "FillBorderView"

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->LOG_CAT:Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    .line 57
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->setInit()V

    .line 58
    return-void
.end method


# virtual methods
.method checkBorder(I)V
    .registers 6
    .parameter "nControlID"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    packed-switch p1, :pswitch_data_198

    .line 438
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    shr-int/lit8 v0, v0, 0x14

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    .line 439
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    .line 440
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    .line 441
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    .line 442
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    .line 443
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    .line 447
    :goto_39
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    shl-int/lit8 v0, v0, 0x14

    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    or-int/2addr v0, v1

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    .line 448
    return-void

    .line 331
    :pswitch_57
    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    goto :goto_39

    .line 334
    :pswitch_64
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    .line 335
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    goto :goto_39

    .line 338
    :pswitch_79
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    .line 339
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    goto :goto_39

    .line 342
    :pswitch_86
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    .line 343
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    goto :goto_39

    .line 346
    :pswitch_a3
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->isChanged(I)Z

    move-result v0

    if-nez v0, :cond_bd

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    if-eqz v0, :cond_bd

    .line 348
    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    .line 349
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    .line 357
    :goto_b1
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->setModified(Z)V

    .line 358
    iget-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    goto/16 :goto_39

    .line 353
    :cond_bd
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    .line 354
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    goto :goto_b1

    .line 361
    :pswitch_c6
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->isChanged(I)Z

    move-result v0

    if-nez v0, :cond_e8

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    if-eqz v0, :cond_e8

    .line 363
    const-string v0, "FillBorderView"

    const-string v1, "border top style none"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    .line 365
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    .line 374
    :goto_dc
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->setModified(Z)V

    .line 375
    iget-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    goto/16 :goto_39

    .line 369
    :cond_e8
    const-string v0, "FillBorderView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "border top style selected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    .line 371
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    goto :goto_dc

    .line 378
    :pswitch_107
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->isChanged(I)Z

    move-result v0

    if-nez v0, :cond_122

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    if-eqz v0, :cond_122

    .line 380
    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    .line 381
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    .line 389
    :goto_116
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->setModified(Z)V

    .line 390
    iget-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    goto/16 :goto_39

    .line 385
    :cond_122
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    .line 386
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    goto :goto_116

    .line 393
    :pswitch_12b
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->isChanged(I)Z

    move-result v0

    if-nez v0, :cond_146

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    if-eqz v0, :cond_146

    .line 395
    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    .line 396
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    .line 404
    :goto_13a
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->setModified(Z)V

    .line 405
    iget-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    goto/16 :goto_39

    .line 400
    :cond_146
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    .line 401
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    goto :goto_13a

    .line 408
    :pswitch_14f
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->isChanged(I)Z

    move-result v0

    if-nez v0, :cond_16a

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    if-eqz v0, :cond_16a

    .line 410
    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    .line 411
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    .line 419
    :goto_15e
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->setModified(Z)V

    .line 420
    iget-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    goto/16 :goto_39

    .line 415
    :cond_16a
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    .line 416
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    goto :goto_15e

    .line 423
    :pswitch_173
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->isChanged(I)Z

    move-result v0

    if-nez v0, :cond_18e

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    if-eqz v0, :cond_18e

    .line 425
    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    .line 426
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    .line 434
    :goto_182
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->setModified(Z)V

    .line 435
    iget-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    goto/16 :goto_39

    .line 430
    :cond_18e
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iput-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    .line 431
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    goto :goto_182

    .line 328
    nop

    :pswitch_data_198
    .packed-switch 0x0
        :pswitch_57
        :pswitch_a3
        :pswitch_c6
        :pswitch_107
        :pswitch_12b
        :pswitch_14f
        :pswitch_173
        :pswitch_64
        :pswitch_79
        :pswitch_86
    .end packed-switch
.end method

.method checkPressRect(II)V
    .registers 8
    .parameter "nX"
    .parameter "nY"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 508
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1, p2}, Lcom/infraware/polarisoffice/common/FillBorderView;->isPress(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 509
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    .line 520
    :cond_11
    :goto_11
    return-void

    .line 510
    :cond_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1, p2}, Lcom/infraware/polarisoffice/common/FillBorderView;->isPress(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 511
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_11

    .line 512
    :cond_21
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v3

    invoke-virtual {p0, v0, p1, p2}, Lcom/infraware/polarisoffice/common/FillBorderView;->isPress(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 513
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_11

    .line 514
    :cond_2f
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v4

    invoke-virtual {p0, v0, p1, p2}, Lcom/infraware/polarisoffice/common/FillBorderView;->isPress(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 515
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_11

    .line 516
    :cond_3d
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseHBorder:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/infraware/polarisoffice/common/FillBorderView;->isPress(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 517
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_11

    .line 518
    :cond_4e
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseVBorder:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/infraware/polarisoffice/common/FillBorderView;->isPress(Landroid/graphics/Rect;II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 519
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    goto :goto_11
.end method

.method getBBorderColor()I
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    return v0
.end method

.method getBBorderStyle()B
    .registers 2

    .prologue
    .line 111
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    return v0
.end method

.method getBorderMask()J
    .registers 3

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    return-wide v0
.end method

.method getBorderStyle()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    return v0
.end method

.method getCurrentColor(I)I
    .registers 3
    .parameter "nIndex"

    .prologue
    .line 557
    packed-switch p1, :pswitch_data_18

    .line 571
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 559
    :pswitch_5
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    goto :goto_4

    .line 561
    :pswitch_8
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    goto :goto_4

    .line 563
    :pswitch_b
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    goto :goto_4

    .line 565
    :pswitch_e
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    goto :goto_4

    .line 567
    :pswitch_11
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    goto :goto_4

    .line 569
    :pswitch_14
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    goto :goto_4

    .line 557
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method getCurrentStyle(I)B
    .registers 3
    .parameter "nIndex"

    .prologue
    .line 539
    packed-switch p1, :pswitch_data_18

    .line 553
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 541
    :pswitch_5
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    goto :goto_4

    .line 543
    :pswitch_8
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    goto :goto_4

    .line 545
    :pswitch_b
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    goto :goto_4

    .line 547
    :pswitch_e
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    goto :goto_4

    .line 549
    :pswitch_11
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    goto :goto_4

    .line 551
    :pswitch_14
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    goto :goto_4

    .line 539
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method getHBorderColor()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    return v0
.end method

.method getHBorderStyle()B
    .registers 2

    .prologue
    .line 127
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    return v0
.end method

.method getLBorderColor()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    return v0
.end method

.method getLBorderStyle()B
    .registers 2

    .prologue
    .line 87
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    return v0
.end method

.method getRBorderColor()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    return v0
.end method

.method getRBorderStyle()B
    .registers 2

    .prologue
    .line 103
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    return v0
.end method

.method getSelectedColor()I
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    return v0
.end method

.method getSelectedStyle()B
    .registers 2

    .prologue
    .line 183
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    return v0
.end method

.method getTBorderColor()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    return v0
.end method

.method getTBorderStyle()B
    .registers 2

    .prologue
    .line 95
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    return v0
.end method

.method getVBorderColor()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    return v0
.end method

.method getVBorderStyle()B
    .registers 2

    .prologue
    .line 119
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    return v0
.end method

.method init()V
    .registers 7

    .prologue
    const/4 v5, -0x1

    const/16 v4, 0xe

    .line 262
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/FillBorderView;->checkBorder(I)V

    .line 264
    const/4 v0, 0x1

    .line 265
    .local v0, bColor:Z
    const/4 v1, 0x1

    .line 266
    .local v1, bStyle:Z
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    if-nez v2, :cond_83

    .line 268
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    .line 277
    :cond_10
    :goto_10
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    if-eqz v2, :cond_26

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    if-eq v2, v4, :cond_26

    .line 279
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iget-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    if-eq v2, v3, :cond_1f

    .line 280
    const/4 v1, 0x0

    .line 282
    :cond_1f
    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    if-eq v2, v3, :cond_26

    .line 283
    const/4 v0, 0x0

    .line 286
    :cond_26
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    if-eqz v2, :cond_3c

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    if-eq v2, v4, :cond_3c

    .line 288
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iget-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    if-eq v2, v3, :cond_35

    .line 289
    const/4 v1, 0x0

    .line 291
    :cond_35
    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    if-eq v2, v3, :cond_3c

    .line 292
    const/4 v0, 0x0

    .line 296
    :cond_3c
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    if-eqz v2, :cond_52

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    if-eq v2, v4, :cond_52

    .line 298
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iget-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    if-eq v2, v3, :cond_4b

    .line 299
    const/4 v1, 0x0

    .line 301
    :cond_4b
    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    if-eq v2, v3, :cond_52

    .line 302
    const/4 v0, 0x0

    .line 305
    :cond_52
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    if-eqz v2, :cond_68

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    if-eq v2, v4, :cond_68

    .line 307
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iget-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    if-eq v2, v3, :cond_61

    .line 308
    const/4 v1, 0x0

    .line 310
    :cond_61
    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    if-eq v2, v3, :cond_68

    .line 311
    const/4 v0, 0x0

    .line 314
    :cond_68
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    if-eqz v2, :cond_7e

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    if-eq v2, v4, :cond_7e

    .line 316
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    iget-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    if-eq v2, v3, :cond_77

    .line 317
    const/4 v1, 0x0

    .line 319
    :cond_77
    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    iget v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    if-eq v2, v3, :cond_7e

    .line 320
    const/4 v0, 0x0

    .line 323
    :cond_7e
    if-nez v0, :cond_82

    .line 324
    iput v5, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    .line 325
    :cond_82
    return-void

    .line 271
    :cond_83
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    if-eqz v2, :cond_10

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    if-eq v2, v4, :cond_10

    .line 273
    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    iput-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    .line 274
    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    goto/16 :goto_10
.end method

.method isBBorder()Z
    .registers 3

    .prologue
    .line 249
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isChanged(I)Z
    .registers 5
    .parameter "nControlID"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 453
    .local v0, bModified:Z
    packed-switch p1, :pswitch_data_5a

    .line 504
    :cond_4
    :goto_4
    return v0

    .line 456
    :pswitch_5
    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    if-ne v1, v2, :cond_11

    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    if-eq v1, v2, :cond_4

    .line 458
    :cond_11
    const/4 v0, 0x1

    .line 461
    goto :goto_4

    .line 463
    :pswitch_13
    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    if-ne v1, v2, :cond_1f

    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    if-eq v1, v2, :cond_4

    .line 465
    :cond_1f
    const/4 v0, 0x1

    .line 468
    goto :goto_4

    .line 470
    :pswitch_21
    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    if-ne v1, v2, :cond_2d

    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    if-eq v1, v2, :cond_4

    .line 472
    :cond_2d
    const/4 v0, 0x1

    .line 475
    goto :goto_4

    .line 477
    :pswitch_2f
    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    if-ne v1, v2, :cond_3b

    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    if-eq v1, v2, :cond_4

    .line 479
    :cond_3b
    const/4 v0, 0x1

    .line 482
    goto :goto_4

    .line 484
    :pswitch_3d
    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    if-ne v1, v2, :cond_49

    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    if-eq v1, v2, :cond_4

    .line 486
    :cond_49
    const/4 v0, 0x1

    .line 489
    goto :goto_4

    .line 491
    :pswitch_4b
    iget-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    iget-byte v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    if-ne v1, v2, :cond_57

    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    if-eq v1, v2, :cond_4

    .line 493
    :cond_57
    const/4 v0, 0x1

    .line 496
    goto :goto_4

    .line 453
    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_13
        :pswitch_21
        :pswitch_2f
        :pswitch_3d
        :pswitch_4b
    .end packed-switch
.end method

.method isHBorder()Z
    .registers 3

    .prologue
    .line 257
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isLBorder()Z
    .registers 3

    .prologue
    .line 237
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isModified()Z
    .registers 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbModified:Z

    return v0
.end method

.method isPress(Landroid/graphics/Rect;II)Z
    .registers 9
    .parameter "rcLine"
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 523
    if-eqz p1, :cond_a3

    .line 524
    const-string v1, "FillBorderView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isPress : left "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "top "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "right "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bottom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 526
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 527
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 528
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 529
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 530
    const-string v1, "FillBorderView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isPress : left "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "top "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "right "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bottom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 532
    const/4 v1, 0x1

    .line 535
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_a2
    return v1

    :cond_a3
    const/4 v1, 0x0

    goto :goto_a2
.end method

.method public isRBorder()Z
    .registers 3

    .prologue
    .line 245
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isTBorder()Z
    .registers 3

    .prologue
    .line 241
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method isUseHBorder()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseHBorder:Z

    return v0
.end method

.method isUseVBorder()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseVBorder:Z

    return v0
.end method

.method isVBorder()Z
    .registers 3

    .prologue
    .line 253
    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16
    .parameter "canvas"

    .prologue
    .line 626
    const-string v0, "FillBorderView"

    const-string v1, "FillBorderView onDraw"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 628
    .local v5, paint:Landroid/graphics/Paint;
    const/high16 v0, -0x100

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 630
    const/4 v7, 0x3

    .line 631
    .local v7, inc:I
    const/4 v9, 0x4

    .line 649
    .local v9, line_width:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_14
    const/4 v0, 0x4

    if-lt v8, v0, :cond_ef

    .line 706
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseHBorder:Z

    if-eqz v0, :cond_81

    .line 707
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getCurrentStyle(I)B

    move-result v13

    .line 708
    .local v13, style:B
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getCurrentColor(I)I

    move-result v6

    .line 709
    .local v6, color:I
    const/high16 v0, -0x100

    if-ne v6, v0, :cond_20f

    .line 710
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 714
    :goto_2f
    if-nez v13, :cond_214

    .line 715
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 716
    .local v10, pt1:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 717
    .local v11, pt2:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Point;->x:I

    .line 718
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v10, Landroid/graphics/Point;->y:I

    .line 719
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 720
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v11, Landroid/graphics/Point;->y:I

    .line 721
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 722
    const/high16 v0, 0x4080

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 723
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_266

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 724
    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 735
    .end local v6           #color:I
    .end local v10           #pt1:Landroid/graphics/Point;
    .end local v11           #pt2:Landroid/graphics/Point;
    .end local v13           #style:B
    :cond_81
    :goto_81
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseVBorder:Z

    if-eqz v0, :cond_eb

    .line 736
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getCurrentStyle(I)B

    move-result v13

    .line 737
    .restart local v13       #style:B
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getCurrentColor(I)I

    move-result v6

    .line 738
    .restart local v6       #color:I
    const/high16 v0, -0x100

    if-ne v6, v0, :cond_23a

    .line 739
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 743
    :goto_99
    if-nez v13, :cond_23f

    .line 744
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 745
    .restart local v10       #pt1:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 746
    .restart local v11       #pt2:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v10, Landroid/graphics/Point;->x:I

    .line 747
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Point;->y:I

    .line 748
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 749
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v11, Landroid/graphics/Point;->y:I

    .line 750
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 751
    const/high16 v0, 0x4080

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 753
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_26e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 754
    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 765
    .end local v6           #color:I
    .end local v10           #pt1:Landroid/graphics/Point;
    .end local v11           #pt2:Landroid/graphics/Point;
    .end local v13           #style:B
    :cond_eb
    :goto_eb
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 766
    return-void

    .line 650
    :cond_ef
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getCurrentStyle(I)B

    move-result v13

    .line 651
    .restart local v13       #style:B
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->getCurrentColor(I)I

    move-result v6

    .line 652
    .restart local v6       #color:I
    const/high16 v0, -0x100

    if-ne v6, v0, :cond_164

    .line 653
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 657
    :goto_101
    if-nez v13, :cond_1c2

    .line 658
    if-eqz v8, :cond_108

    const/4 v0, 0x1

    if-ne v8, v0, :cond_168

    .line 659
    :cond_108
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 660
    .restart local v10       #pt1:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 661
    .restart local v11       #pt2:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Point;->x:I

    .line 662
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v10, Landroid/graphics/Point;->y:I

    .line 663
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 664
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v11, Landroid/graphics/Point;->y:I

    .line 665
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 666
    const/high16 v0, 0x4080

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 667
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_276

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 668
    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 649
    .end local v10           #pt1:Landroid/graphics/Point;
    .end local v11           #pt2:Landroid/graphics/Point;
    :goto_160
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_14

    .line 655
    :cond_164
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_101

    .line 671
    :cond_168
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 672
    .restart local v10       #pt1:Landroid/graphics/Point;
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 673
    .restart local v11       #pt2:Landroid/graphics/Point;
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v10, Landroid/graphics/Point;->x:I

    .line 674
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Point;->y:I

    .line 675
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v11, Landroid/graphics/Point;->x:I

    .line 676
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v11, Landroid/graphics/Point;->y:I

    .line 677
    const v0, -0x777778

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 678
    const/high16 v0, 0x4080

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 679
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_27e

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 680
    iget v0, v10, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget v0, v10, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_160

    .line 683
    .end local v10           #pt1:Landroid/graphics/Point;
    .end local v11           #pt2:Landroid/graphics/Point;
    :cond_1c2
    const/4 v0, 0x2

    if-ne v13, v0, :cond_206

    .line 684
    new-instance v12, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v3, v3, v8

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 685
    .local v12, rect:Landroid/graphics/Rect;
    packed-switch v8, :pswitch_data_286

    .line 699
    :goto_1e5
    invoke-virtual {p1, v12, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_160

    .line 687
    :pswitch_1ea
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x3

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_1e5

    .line 690
    :pswitch_1f1
    iget v0, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x3

    iput v0, v12, Landroid/graphics/Rect;->top:I

    goto :goto_1e5

    .line 693
    :pswitch_1f8
    iget v0, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x3

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_1e5

    .line 696
    :pswitch_1ff
    iget v0, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x3

    iput v0, v12, Landroid/graphics/Rect;->left:I

    goto :goto_1e5

    .line 702
    .end local v12           #rect:Landroid/graphics/Rect;
    :cond_206
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    aget-object v0, v0, v8

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_160

    .line 712
    :cond_20f
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2f

    .line 726
    :cond_214
    const/4 v0, 0x2

    if-ne v13, v0, :cond_233

    .line 727
    new-instance v12, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, 0x3

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 728
    .restart local v12       #rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v12, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_81

    .line 731
    .end local v12           #rect:Landroid/graphics/Rect;
    :cond_233
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_81

    .line 741
    :cond_23a
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_99

    .line 756
    :cond_23f
    const/4 v0, 0x2

    if-ne v13, v0, :cond_25e

    .line 757
    new-instance v12, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 758
    .restart local v12       #rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v12, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_eb

    .line 761
    .end local v12           #rect:Landroid/graphics/Rect;
    :cond_25e
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_eb

    .line 723
    nop

    :array_266
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 753
    :array_26e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 667
    :array_276
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 679
    :array_27e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 685
    :pswitch_data_286
    .packed-switch 0x0
        :pswitch_1ea
        :pswitch_1f1
        :pswitch_1f8
        :pswitch_1ff
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .registers 15
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 576
    const-string v8, "FillBorderView"

    const-string v9, "onSizeChanged"

    invoke-static {v8, v9}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 579
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getPaddingLeft()I

    move-result v2

    .line 580
    .local v2, nLPadding:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getPaddingTop()I

    move-result v5

    .line 581
    .local v5, nTPadding:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getPaddingRight()I

    move-result v4

    .line 582
    .local v4, nRPadding:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getPaddingBottom()I

    move-result v0

    .line 584
    .local v0, nBPadding:I
    move v3, v2

    .line 585
    .local v3, nLeft:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getWidth()I

    move-result v8

    sub-int v7, v8, v4

    .line 586
    .local v7, nWidth:I
    move v6, v5

    .line 587
    .local v6, nTop:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBorderView;->getHeight()I

    move-result v8

    sub-int v1, v8, v0

    .line 589
    .local v1, nHeight:I
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 590
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput v7, v8, Landroid/graphics/Rect;->right:I

    .line 591
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 592
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    add-int/lit8 v9, v6, 0x3

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 594
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 595
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iput v7, v8, Landroid/graphics/Rect;->right:I

    .line 596
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    add-int/lit8 v9, v1, -0x3

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 597
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 599
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 600
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    add-int/lit8 v9, v3, 0x3

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 601
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 602
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 604
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    add-int/lit8 v9, v7, -0x3

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 605
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    iput v7, v8, Landroid/graphics/Rect;->right:I

    .line 606
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 607
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 609
    iget-boolean v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseVBorder:Z

    if-eqz v8, :cond_bc

    .line 610
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    div-int/lit8 v9, v7, 0x2

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 611
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/lit8 v9, v9, 0x3

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 612
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iput v6, v8, Landroid/graphics/Rect;->top:I

    .line 613
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    iput v1, v8, Landroid/graphics/Rect;->bottom:I

    .line 616
    :cond_bc
    iget-boolean v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseHBorder:Z

    if-eqz v8, :cond_d8

    .line 617
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iput v3, v8, Landroid/graphics/Rect;->left:I

    .line 618
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iput v7, v8, Landroid/graphics/Rect;->right:I

    .line 619
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    div-int/lit8 v9, v1, 0x2

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 620
    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/lit8 v9, v9, 0x3

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 622
    :cond_d8
    return-void
.end method

.method setBBorderColor(I)V
    .registers 2
    .parameter "nBColor"

    .prologue
    .line 163
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    .line 164
    return-void
.end method

.method setBBorderStyle(B)V
    .registers 2
    .parameter "nBStyle"

    .prologue
    .line 115
    iput-byte p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    .line 116
    return-void
.end method

.method setBorderMask(J)V
    .registers 3
    .parameter "nBorderMask"

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    .line 234
    return-void
.end method

.method setBorderStyle(I)V
    .registers 2
    .parameter "nStyle"

    .prologue
    .line 79
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    .line 80
    return-void
.end method

.method setHBorderColor(I)V
    .registers 2
    .parameter "nHColor"

    .prologue
    .line 179
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    .line 180
    return-void
.end method

.method setHBorderStyle(B)V
    .registers 2
    .parameter "nHStyle"

    .prologue
    .line 131
    iput-byte p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    .line 132
    return-void
.end method

.method setInit()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 61
    const-string v1, "FillBorderView"

    const-string v2, "FillBorderView"

    invoke-static {v1, v2}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mStyle:I

    .line 63
    iput-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHStyle:B

    iput-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    iput-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBStyle:B

    iput-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    iput-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    iput-byte v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    .line 64
    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHColor:I

    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBColor:I

    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    .line 65
    const/4 v1, 0x1

    iput-byte v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    .line 66
    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    .line 68
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbModified:Z

    .line 69
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseVBorder:Z

    iput-boolean v3, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseHBorder:Z

    .line 70
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderMask:J

    .line 72
    new-array v1, v5, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_39
    if-lt v0, v5, :cond_3c

    .line 76
    return-void

    .line 74
    :cond_3c
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mBorderLine:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_39
.end method

.method setLBorderColor(I)V
    .registers 2
    .parameter "nLColor"

    .prologue
    .line 139
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLColor:I

    .line 140
    return-void
.end method

.method setLBorderStyle(B)V
    .registers 2
    .parameter "nLStyle"

    .prologue
    .line 91
    iput-byte p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mLStyle:B

    .line 92
    return-void
.end method

.method setModified(Z)V
    .registers 2
    .parameter "bModified"

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbModified:Z

    .line 204
    return-void
.end method

.method setRBorderColor(I)V
    .registers 2
    .parameter "nRColor"

    .prologue
    .line 155
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRColor:I

    .line 156
    return-void
.end method

.method setRBorderStyle(B)V
    .registers 2
    .parameter "nRStyle"

    .prologue
    .line 107
    iput-byte p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mRStyle:B

    .line 108
    return-void
.end method

.method setSelectedColor(I)V
    .registers 2
    .parameter "nSelectedColor"

    .prologue
    .line 195
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedColor:I

    .line 196
    return-void
.end method

.method setSelectedStyle(B)V
    .registers 2
    .parameter "nSelectedStyle"

    .prologue
    .line 187
    iput-byte p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mSelectedStyle:B

    .line 188
    return-void
.end method

.method setTBorderColor(I)V
    .registers 2
    .parameter "nTColor"

    .prologue
    .line 147
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTColor:I

    .line 148
    return-void
.end method

.method setTBorderStyle(B)V
    .registers 2
    .parameter "nTStyle"

    .prologue
    .line 99
    iput-byte p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mTStyle:B

    .line 100
    return-void
.end method

.method setUseHBorder(Z)V
    .registers 3
    .parameter "bUseHBorder"

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseHBorder:Z

    .line 212
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseHBorder:Z

    if-eqz v0, :cond_d

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mHBorderLine:Landroid/graphics/Rect;

    .line 215
    :cond_d
    return-void
.end method

.method setUseVBorder(Z)V
    .registers 3
    .parameter "bUseVBorder"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseVBorder:Z

    .line 223
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mbUseVBorder:Z

    if-eqz v0, :cond_d

    .line 224
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVBorderLine:Landroid/graphics/Rect;

    .line 226
    :cond_d
    return-void
.end method

.method setVBorderColor(I)V
    .registers 2
    .parameter "nVColor"

    .prologue
    .line 171
    iput p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVColor:I

    .line 172
    return-void
.end method

.method setVBorderStyle(B)V
    .registers 2
    .parameter "nVStyle"

    .prologue
    .line 123
    iput-byte p1, p0, Lcom/infraware/polarisoffice/common/FillBorderView;->mVStyle:B

    .line 124
    return-void
.end method
