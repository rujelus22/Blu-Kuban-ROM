.class public Lcom/infraware/polarisoffice/common/ShapeActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "ShapeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;
.implements Lcom/infraware/office/evengine/E$EV_BORDER_STYLE;
.implements Lcom/infraware/office/evengine/E$EV_LINE_ARROW_TYPE;


# static fields
.field private static final DIALOG_LINESTYLE:I = 0x64


# instance fields
.field private fillColor:Landroid/widget/TextView;

.field private lineColor:Landroid/widget/TextView;

.field private lineDashes:Landroid/widget/TextView;

.field private lineStyle:Landroid/widget/TextView;

.field private mCancelBtn:Landroid/widget/Button;

.field private mColorAlertDialog:Landroid/app/AlertDialog;

.field private mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

.field private mDashesDialog:Landroid/app/AlertDialog;

.field private mDashes_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

.field private mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

.field private mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

.field mLineStyle:I

.field private mLineStyleBtn:Landroid/widget/Button;

.field private mLineStyleDialog:Landroid/app/AlertDialog;

.field mLineStyleList:[Ljava/lang/CharSequence;

.field private mOKBtn:Landroid/widget/Button;

.field private mObjectMaskAtt:I

.field private mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

.field private mSelectColorBtn:Landroid/widget/CompoundButton;

.field private m_eObjectType:I

.field private m_nArrDashesDrawable:Landroid/content/res/TypedArray;

.field private m_nArrLeftArrowDrawable:Landroid/content/res/TypedArray;

.field private m_nArrRightArrowDrawable:Landroid/content/res/TypedArray;

.field private m_nArrowStyle:I

.field private m_nBorderColor:I

.field private m_nBorderStyle:I

.field private m_nBorderThickness:I

.field private m_nDasheSelectedNum:I

.field private m_nFillColor:I

.field private m_nLeftArrowSelectedNum:I

.field private m_nRightArrowSelectedNum:I

.field private m_nTitleName:I

.field private mbLineColorAlert:Ljava/lang/Boolean;

.field private onOKCancelClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 25
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 28
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleDialog:Landroid/app/AlertDialog;

    .line 29
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashesDialog:Landroid/app/AlertDialog;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyle:I

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashes_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    .line 42
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mOKBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mCancelBtn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleBtn:Landroid/widget/Button;

    .line 43
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    .line 44
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    .line 45
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    .line 46
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    .line 47
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrDashesDrawable:Landroid/content/res/TypedArray;

    .line 48
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrLeftArrowDrawable:Landroid/content/res/TypedArray;

    .line 49
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrRightArrowDrawable:Landroid/content/res/TypedArray;

    .line 50
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderStyle:I

    .line 51
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrowStyle:I

    .line 52
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nFillColor:I

    .line 53
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderColor:I

    .line 54
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 55
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_eObjectType:I

    .line 56
    iput v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nTitleName:I

    .line 61
    new-instance v0, Lcom/infraware/polarisoffice/common/ShapeActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ShapeActivity$1;-><init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->onOKCancelClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method

.method private ChagetoDashesLineIndex(I)I
    .registers 3
    .parameter "borderStyle"

    .prologue
    .line 395
    packed-switch p1, :pswitch_data_e

    .line 401
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 396
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 397
    :pswitch_7
    const/4 v0, 0x2

    goto :goto_4

    .line 398
    :pswitch_9
    const/4 v0, 0x3

    goto :goto_4

    .line 399
    :pswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 395
    nop

    :pswitch_data_e
    .packed-switch 0x3
        :pswitch_7
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method private ChangeIndexToDashesLine(I)I
    .registers 3
    .parameter "index"

    .prologue
    .line 406
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 407
    packed-switch p1, :pswitch_data_16

    .line 413
    const/16 v0, 0xf

    :goto_b
    return v0

    .line 408
    :pswitch_c
    const/4 v0, 0x4

    goto :goto_b

    .line 409
    :pswitch_e
    const/4 v0, 0x3

    goto :goto_b

    .line 410
    :pswitch_10
    const/16 v0, 0x9

    goto :goto_b

    .line 411
    :pswitch_13
    const/16 v0, 0xb

    goto :goto_b

    .line 407
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method private ChangeIndextoArrow(II)I
    .registers 6
    .parameter "left_ArrowIndex"
    .parameter "right_ArrowIndex"

    .prologue
    const/4 v2, 0x4

    const v1, 0xfff0

    .line 444
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrowStyle:I

    .line 445
    .local v0, nArrowType:I
    packed-switch p1, :pswitch_data_46

    .line 457
    :goto_9
    if-lt v2, p1, :cond_11

    .line 458
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit16 v1, v1, 0x800

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 460
    :cond_11
    packed-switch p2, :pswitch_data_54

    .line 472
    :goto_14
    if-lt v2, p2, :cond_1c

    .line 473
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 474
    :cond_1c
    return v0

    .line 446
    :pswitch_1d
    and-int/2addr v0, v1

    .line 447
    goto :goto_9

    .line 448
    :pswitch_1f
    and-int/2addr v1, v0

    or-int/lit8 v0, v1, 0x1

    .line 449
    goto :goto_9

    .line 450
    :pswitch_23
    and-int/2addr v1, v0

    or-int/lit8 v0, v1, 0x2

    .line 451
    goto :goto_9

    .line 452
    :pswitch_27
    and-int/2addr v1, v0

    or-int/lit8 v0, v1, 0x4

    .line 453
    goto :goto_9

    .line 454
    :pswitch_2b
    and-int/2addr v1, v0

    or-int/lit8 v0, v1, 0x8

    goto :goto_9

    .line 461
    :pswitch_2f
    and-int/lit8 v0, v0, 0xf

    .line 462
    goto :goto_14

    .line 463
    :pswitch_32
    and-int/lit8 v1, v0, 0xf

    or-int/lit8 v0, v1, 0x10

    .line 464
    goto :goto_14

    .line 465
    :pswitch_37
    and-int/lit8 v1, v0, 0xf

    or-int/lit8 v0, v1, 0x20

    .line 466
    goto :goto_14

    .line 467
    :pswitch_3c
    and-int/lit8 v1, v0, 0xf

    or-int/lit8 v0, v1, 0x40

    .line 468
    goto :goto_14

    .line 469
    :pswitch_41
    and-int/lit8 v1, v0, 0xf

    or-int/lit16 v0, v1, 0x80

    goto :goto_14

    .line 445
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_27
        :pswitch_2b
    .end packed-switch

    .line 460
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_32
        :pswitch_37
        :pswitch_3c
        :pswitch_41
    .end packed-switch
.end method

.method private ChangetoLeftArrowIndex(I)I
    .registers 3
    .parameter "nArrowType"

    .prologue
    .line 418
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_6

    .line 419
    const/4 v0, 0x1

    .line 427
    :goto_5
    return v0

    .line 420
    :cond_6
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_c

    .line 421
    const/4 v0, 0x2

    goto :goto_5

    .line 422
    :cond_c
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_12

    .line 423
    const/4 v0, 0x3

    goto :goto_5

    .line 424
    :cond_12
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_18

    .line 425
    const/4 v0, 0x4

    goto :goto_5

    .line 427
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private ChangetoRightArrowIndex(I)I
    .registers 3
    .parameter "nArrowType"

    .prologue
    .line 431
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 432
    const/4 v0, 0x1

    .line 440
    :goto_5
    return v0

    .line 433
    :cond_6
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_c

    .line 434
    const/4 v0, 0x2

    goto :goto_5

    .line 435
    :cond_c
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_12

    .line 436
    const/4 v0, 0x3

    goto :goto_5

    .line 437
    :cond_12
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_18

    .line 438
    const/4 v0, 0x4

    goto :goto_5

    .line 440
    :cond_18
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private InitShapeData()V
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    .line 110
    .local v0, graphicAtt:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_eObjectType:I

    .line 111
    iget v1, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nFillColor:I

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nFillColor:I

    .line 112
    iget v1, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderColor:I

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderColor:I

    .line 113
    iget v1, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderThickness:I

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    .line 114
    iget v1, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderStyle:I

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderStyle:I

    .line 115
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderStyle:I

    if-nez v1, :cond_3e

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    .line 119
    :cond_21
    :goto_21
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderStyle:I

    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->ChagetoDashesLineIndex(I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    .line 120
    iget v1, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nArrowType:I

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrowStyle:I

    .line 121
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrowStyle:I

    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->ChangetoLeftArrowIndex(I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    .line 122
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrowStyle:I

    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->ChangetoRightArrowIndex(I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    .line 123
    return-void

    .line 117
    :cond_3e
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    if-nez v1, :cond_21

    .line 118
    const/4 v1, 0x1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    goto :goto_21
.end method

.method private OnApplyData()V
    .registers 13

    .prologue
    .line 85
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    if-eqz v0, :cond_c

    .line 86
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->ChangeIndexToDashesLine(I)I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderStyle:I

    .line 87
    :cond_c
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    invoke-direct {p0, v0, v1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->ChangeIndextoArrow(II)I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrowStyle:I

    .line 88
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v11

    .line 89
    .local v11, graphicAtt:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    iput v0, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderThickness:I

    .line 90
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderStyle:I

    iput v0, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderStyle:I

    .line 91
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrowStyle:I

    iput v0, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nArrowType:I

    .line 92
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getColor()I

    move-result v0

    iput v0, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nFillColor:I

    .line 93
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getColor()I

    move-result v0

    iput v0, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderColor:I

    .line 94
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    iput v0, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    .line 95
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    iget v2, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nFillColor:I

    iget v3, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nGradient:I

    iget v4, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderColor:I

    iget v5, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderThickness:I

    iget v6, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderStyle:I

    iget v7, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nWidth:I

    iget v8, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nHeight:I

    iget v9, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nArrowType:I

    iget v10, v11, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nRate:I

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/office/evengine/EvInterface;->ISetObjectAttribute(IIIIIIIIII)V

    .line 96
    return-void
.end method

.method private PrepareResources()V
    .registers 6

    .prologue
    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 127
    const v0, 0x7f0c01f0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->fillColor:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0c01f3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->lineStyle:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0c01f5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->lineColor:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0c01f7

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->lineDashes:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0c01f1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ColorSelButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 133
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_eObjectType:I

    if-ne v0, v4, :cond_13e

    .line 134
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->fillColor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    const v0, 0x7f0c01f2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_53
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleList:[Ljava/lang/CharSequence;

    .line 143
    const v0, 0x7f0c01f4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleBtn:Landroid/widget/Button;

    .line 144
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v0, 0x7f0c01f8

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ImgSelButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashes_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    .line 147
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrDashesDrawable:Landroid/content/res/TypedArray;

    .line 148
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashes_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ImgSelButton;->addAllImageID(I)V

    .line 149
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashes_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setCurrentIdx(I)V

    .line 150
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashes_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    invoke-virtual {v0, p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v0, 0x7f0c01fb

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ImgSelButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    .line 153
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_eObjectType:I

    if-ne v0, v4, :cond_14c

    .line 154
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrLeftArrowDrawable:Landroid/content/res/TypedArray;

    .line 155
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ImgSelButton;->addAllImageID(I)V

    .line 156
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setCurrentIdx(I)V

    .line 157
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    invoke-virtual {v0, p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :goto_d2
    const v0, 0x7f0c01fc

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ImgSelButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    .line 167
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_eObjectType:I

    if-ne v0, v4, :cond_167

    .line 168
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrRightArrowDrawable:Landroid/content/res/TypedArray;

    .line 169
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ImgSelButton;->addAllImageID(I)V

    .line 170
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setCurrentIdx(I)V

    .line 171
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    invoke-virtual {v0, p0}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :goto_102
    const v0, 0x7f0c01f6

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ColorSelButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 177
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderColor:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 178
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f0c01fd

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mOKBtn:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mOKBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->onOKCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f0c01fe

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mCancelBtn:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->onOKCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    return-void

    .line 139
    :cond_13e
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nFillColor:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 140
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_53

    .line 161
    :cond_14c
    const v0, 0x7f0c01fa

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    const v0, 0x7f0c01f9

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setVisibility(I)V

    goto/16 :goto_d2

    .line 174
    :cond_167
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/common/ImgSelButton;->setVisibility(I)V

    goto :goto_102
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/ShapeActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->OnApplyData()V

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/common/ShapeActivity;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->onClickColorButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/common/ShapeActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    return-void
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/common/ShapeActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 54
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    return v0
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/ShapeActivity;)Lcom/infraware/polarisoffice/common/ImgSelButton;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashes_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/common/ShapeActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    return v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/common/ShapeActivity;)Lcom/infraware/polarisoffice/common/ImgSelButton;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLeftArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/common/ShapeActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    return v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/common/ShapeActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 46
    iput p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/common/ShapeActivity;)Lcom/infraware/polarisoffice/common/ImgSelButton;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mRightArrow_btn:Lcom/infraware/polarisoffice/common/ImgSelButton;

    return-object v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/common/ShapeActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    return v0
.end method

.method private onClickColorButton(Landroid/view/View;)V
    .registers 5
    .parameter "colorButton"

    .prologue
    .line 339
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2f

    .line 340
    check-cast p1, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;

    .end local p1
    invoke-virtual {p1}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->GetButtonColor()I

    move-result v0

    .line 341
    .local v0, nColor:I
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_14

    .line 342
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 344
    :cond_14
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 345
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 346
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 360
    :goto_27
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 361
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 363
    .end local v0           #nColor:I
    :cond_2f
    return-void

    .line 349
    .restart local v0       #nColor:I
    :cond_30
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 350
    if-eqz v0, :cond_44

    .line 351
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 352
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    goto :goto_27

    .line 355
    :cond_44
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 356
    iget v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    goto :goto_27
.end method

.method private onDashesDialog()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 217
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 218
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    new-instance v7, Lcom/infraware/common/control/list/BaseListAdapter;

    invoke-direct {v7, p0}, Lcom/infraware/common/control/list/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 219
    .local v7, dashesAdapter:Lcom/infraware/common/control/list/BaseListAdapter;
    const v0, 0x7f0801d6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 221
    const/4 v8, 0x0

    .local v8, i:I
    :goto_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrDashesDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-lt v8, v0, :cond_35

    .line 227
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    new-instance v1, Lcom/infraware/polarisoffice/common/ShapeActivity$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/ShapeActivity$2;-><init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    invoke-virtual {v6, v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashesDialog:Landroid/app/AlertDialog;

    .line 236
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 237
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 238
    return-void

    .line 222
    :cond_35
    const/4 v5, 0x0

    .line 223
    .local v5, bRadiCheck:Z
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nDasheSelectedNum:I

    if-ne v0, v8, :cond_3b

    .line 224
    const/4 v5, 0x1

    .line 225
    :cond_3b
    new-instance v0, Lcom/infraware/common/control/list/BaseListItem;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrDashesDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/common/control/list/BaseListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZZ)V

    invoke-virtual {v7, v0}, Lcom/infraware/common/control/list/BaseListAdapter;->addItem(Lcom/infraware/common/control/list/BaseListItem;)V

    .line 221
    add-int/lit8 v8, v8, 0x1

    goto :goto_12
.end method

.method private onLeftArrowDialog()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 241
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    new-instance v7, Lcom/infraware/common/control/list/BaseListAdapter;

    invoke-direct {v7, p0}, Lcom/infraware/common/control/list/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 244
    .local v7, dashesAdapter:Lcom/infraware/common/control/list/BaseListAdapter;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_c
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrLeftArrowDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-lt v9, v0, :cond_29

    .line 251
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    new-instance v1, Lcom/infraware/polarisoffice/common/ShapeActivity$3;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/ShapeActivity$3;-><init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    invoke-virtual {v6, v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 261
    .local v8, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v8, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 262
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void

    .line 245
    .end local v8           #dlg:Landroid/app/AlertDialog;
    :cond_29
    const/4 v5, 0x0

    .line 246
    .local v5, bRadiCheck:Z
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nLeftArrowSelectedNum:I

    if-ne v0, v9, :cond_2f

    .line 247
    const/4 v5, 0x1

    .line 248
    :cond_2f
    new-instance v0, Lcom/infraware/common/control/list/BaseListItem;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrLeftArrowDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/common/control/list/BaseListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZZ)V

    invoke-virtual {v7, v0}, Lcom/infraware/common/control/list/BaseListAdapter;->addItem(Lcom/infraware/common/control/list/BaseListItem;)V

    .line 244
    add-int/lit8 v9, v9, 0x1

    goto :goto_c
.end method

.method private onRightArrowdialog()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 266
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    new-instance v7, Lcom/infraware/common/control/list/BaseListAdapter;

    invoke-direct {v7, p0}, Lcom/infraware/common/control/list/BaseListAdapter;-><init>(Landroid/content/Context;)V

    .line 269
    .local v7, dashesAdapter:Lcom/infraware/common/control/list/BaseListAdapter;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_c
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrRightArrowDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-lt v9, v0, :cond_29

    .line 275
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    new-instance v1, Lcom/infraware/polarisoffice/common/ShapeActivity$4;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/ShapeActivity$4;-><init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    invoke-virtual {v6, v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 284
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 285
    .local v8, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v8, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 286
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 287
    return-void

    .line 270
    .end local v8           #dlg:Landroid/app/AlertDialog;
    :cond_29
    const/4 v5, 0x0

    .line 271
    .local v5, bRadiCheck:Z
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nRightArrowSelectedNum:I

    if-ne v0, v9, :cond_2f

    .line 272
    const/4 v5, 0x1

    .line 273
    :cond_2f
    new-instance v0, Lcom/infraware/common/control/list/BaseListItem;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nArrRightArrowDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/infraware/common/control/list/BaseListItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;IZZ)V

    invoke-virtual {v7, v0}, Lcom/infraware/common/control/list/BaseListAdapter;->addItem(Lcom/infraware/common/control/list/BaseListItem;)V

    .line 269
    add-int/lit8 v9, v9, 0x1

    goto :goto_c
.end method


# virtual methods
.method public OnClickMoreColors(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 378
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 379
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 392
    :goto_13
    return-void

    .line 382
    :cond_14
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 383
    if-eqz p1, :cond_28

    .line 384
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 385
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    goto :goto_13

    .line 388
    :cond_28
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    .line 389
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mObjectMaskAtt:I

    goto :goto_13
.end method

.method public OnSelectColor(Ljava/lang/Boolean;)V
    .registers 14
    .parameter "bLineColorAlert"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 290
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 291
    .local v6, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget v7, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nTitleName:I

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 293
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 296
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    .line 297
    const/4 v5, 0x0

    .line 298
    .local v5, selButton:Lcom/infraware/polarisoffice/common/ColorSelButton;
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 299
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 300
    const v7, 0x7f0c003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 306
    :goto_37
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 307
    .local v0, btnArray:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06001a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 308
    .local v2, colorArray:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 310
    .local v3, colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_7a

    .line 324
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 325
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 327
    const v7, 0x7f080251

    new-instance v8, Lcom/infraware/polarisoffice/common/ShapeActivity$6;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/common/ShapeActivity$6;-><init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 334
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 335
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 336
    return-void

    .line 303
    .end local v0           #btnArray:Landroid/content/res/TypedArray;
    .end local v2           #colorArray:Landroid/content/res/TypedArray;
    .end local v3           #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    .end local v4           #i:I
    :cond_77
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    goto :goto_37

    .line 311
    .restart local v0       #btnArray:Landroid/content/res/TypedArray;
    .restart local v2       #colorArray:Landroid/content/res/TypedArray;
    .restart local v3       #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    .restart local v4       #i:I
    :cond_7a
    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    check-cast v3, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;

    .line 312
    .restart local v3       #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->SetButtonColor(I)V

    .line 313
    new-instance v7, Lcom/infraware/polarisoffice/common/ShapeActivity$5;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/common/ShapeActivity$5;-><init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    invoke-virtual {v3, v7}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->GetButtonColor()I

    move-result v7

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getColor()I

    move-result v8

    if-ne v7, v8, :cond_a2

    .line 320
    invoke-virtual {v3, v11}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->setChecked(Z)V

    .line 321
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    .line 310
    :cond_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f
.end method

.method public OnSelectMoreColor()V
    .registers 3

    .prologue
    .line 366
    new-instance v0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 367
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 368
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const v1, 0x7f080234

    invoke-virtual {v0, p0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V

    .line 371
    :goto_17
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 372
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->show()V

    .line 373
    return-void

    .line 370
    :cond_23
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const v1, 0x7f080200

    invoke-virtual {v0, p0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V

    goto :goto_17
.end method

.method public OnShapeLineTypeDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 213
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->showDialog(I)V

    .line 214
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->OnApplyData()V

    .line 81
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_30

    .line 209
    :goto_7
    return-void

    .line 190
    :sswitch_8
    const v0, 0x7f080200

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nTitleName:I

    .line 191
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->OnSelectColor(Ljava/lang/Boolean;)V

    goto :goto_7

    .line 194
    :sswitch_16
    const v0, 0x7f080234

    iput v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nTitleName:I

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->OnSelectColor(Ljava/lang/Boolean;)V

    goto :goto_7

    .line 198
    :sswitch_24
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->onDashesDialog()V

    goto :goto_7

    .line 201
    :sswitch_28
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->onLeftArrowDialog()V

    goto :goto_7

    .line 204
    :sswitch_2c
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->onRightArrowdialog()V

    goto :goto_7

    .line 188
    :sswitch_data_30
    .sparse-switch
        0x7f0c01f1 -> :sswitch_8
        0x7f0c01f6 -> :sswitch_16
        0x7f0c01f8 -> :sswitch_24
        0x7f0c01fb -> :sswitch_28
        0x7f0c01fc -> :sswitch_2c
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 102
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->setContentView(I)V

    .line 103
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->setTitle(I)V

    .line 104
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->InitShapeData()V

    .line 105
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->PrepareResources()V

    .line 106
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter "id"
    .parameter "args"

    .prologue
    .line 528
    packed-switch p1, :pswitch_data_30

    .line 545
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 530
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 531
    const v1, 0x7f080233

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    new-instance v3, Lcom/infraware/polarisoffice/common/ShapeActivity$7;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/ShapeActivity$7;-><init>(Lcom/infraware/polarisoffice/common/ShapeActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 530
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleDialog:Landroid/app/AlertDialog;

    .line 542
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 543
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleDialog:Landroid/app/AlertDialog;

    goto :goto_7

    .line 528
    :pswitch_data_30
    .packed-switch 0x64
        :pswitch_8
    .end packed-switch
.end method

.method public onLocaleChange(I)V
    .registers 9
    .parameter "nLocale"

    .prologue
    const v1, 0x7f08017d

    const v6, 0x7f080043

    const/16 v5, 0x64

    const v4, 0x7f080234

    const v3, 0x7f080200

    .line 479
    const v0, 0x7f0801a1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->setTitle(I)V

    .line 481
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nFillColor:I

    if-nez v0, :cond_1d

    .line 482
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mFillColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setText(I)V

    .line 484
    :cond_1d
    iget v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderColor:I

    if-nez v0, :cond_26

    .line 485
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineColor_Btn:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setText(I)V

    .line 487
    :cond_26
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->fillColor:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 488
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->lineStyle:Landroid/widget/TextView;

    const v1, 0x7f080233

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 489
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->lineColor:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 490
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->lineDashes:Landroid/widget/TextView;

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 492
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleList:[Ljava/lang/CharSequence;

    .line 493
    const v0, 0x7f0c01f4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ShapeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleBtn:Landroid/widget/Button;

    .line 494
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->m_nBorderThickness:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mOKBtn:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 497
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mCancelBtn:Landroid/widget/Button;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 498
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 500
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mLineStyleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 501
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/ShapeActivity;->removeDialog(I)V

    .line 502
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/ShapeActivity;->showDialog(I)V

    .line 504
    :cond_87
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 506
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 507
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 510
    :goto_a0
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f080251

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 512
    :cond_ad
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashesDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c1

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashesDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 514
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mDashesDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 516
    :cond_c1
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    if-eqz v0, :cond_e4

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e4

    .line 518
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mbLineColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 519
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v0, v4}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    .line 523
    :goto_da
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(I)V

    .line 525
    :cond_e4
    return-void

    .line 509
    :cond_e5
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    goto :goto_a0

    .line 521
    :cond_eb
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ShapeActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    goto :goto_da
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 549
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 550
    packed-switch p1, :pswitch_data_c

    .line 555
    :goto_6
    return-void

    .line 552
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/common/ShapeActivity;->removeDialog(I)V

    goto :goto_6

    .line 550
    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method
