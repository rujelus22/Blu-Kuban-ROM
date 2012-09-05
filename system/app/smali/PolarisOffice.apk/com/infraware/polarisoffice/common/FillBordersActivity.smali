.class public Lcom/infraware/polarisoffice/common/FillBordersActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "FillBordersActivity.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;


# static fields
.field private static final POPUP_LINETYPE:I = 0x64


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private borderColor:Landroid/widget/TextView;

.field private borderStyle:Landroid/widget/TextView;

.field private cancel_btn:Landroid/widget/Button;

.field private fillColor:Landroid/widget/TextView;

.field mBBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

.field mBorderStyle:I

.field mBorderStyleList:[Ljava/lang/CharSequence;

.field mBorderStyleSelect:I

.field private mBtnBorderStyle:Landroid/widget/Button;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mColorAlertDialog:Landroid/app/AlertDialog;

.field private mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

.field private mFillColor:I

.field private mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

.field private mFillSetColor:I

.field mHBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private final mHandler:Landroid/os/Handler;

.field mLBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mLineTypeDlg:Landroid/app/AlertDialog;

.field mRBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

.field private mSelectColorBtn:Landroid/widget/CompoundButton;

.field mTBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field mUpdateTime:Ljava/lang/Runnable;

.field mVBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mbBorderColorAlert:Ljava/lang/Boolean;

.field private ok_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 25
    const-string v0, "FillBordersActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->LOG_CAT:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 36
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->cancel_btn:Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    .line 42
    iput v3, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    .line 43
    iput v3, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyle:I

    .line 45
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mTBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 46
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 47
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mRBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 48
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 49
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 50
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mVBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 52
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColor:I

    .line 53
    iput v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillSetColor:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity$1;-><init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mUpdateTime:Ljava/lang/Runnable;

    .line 234
    new-instance v0, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity$2;-><init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 314
    new-instance v0, Lcom/infraware/polarisoffice/common/FillBordersActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity$3;-><init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 24
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/common/FillBordersActivity;)Lcom/infraware/polarisoffice/common/FillBorderView;
    .registers 2
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/common/FillBordersActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColor:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/common/FillBordersActivity;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->onClickColorButton(Landroid/view/View;)V

    return-void
.end method

.method private onClickColorButton(Landroid/view/View;)V
    .registers 5
    .parameter "colorButton"

    .prologue
    .line 416
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_34

    .line 417
    check-cast p1, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;

    .end local p1
    invoke-virtual {p1}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->GetButtonColor()I

    move-result v0

    .line 418
    .local v0, nColor:I
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_14

    .line 419
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 421
    :cond_14
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 422
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 423
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/common/FillBorderView;->setSelectedColor(I)V

    .line 431
    :goto_26
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 432
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 433
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 435
    .end local v0           #nColor:I
    :cond_34
    return-void

    .line 427
    .restart local v0       #nColor:I
    :cond_35
    iput v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillSetColor:I

    .line 428
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    goto :goto_26
.end method


# virtual methods
.method public OnClickMoreColors(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 450
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 451
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/FillBorderView;->setSelectedColor(I)V

    .line 456
    :goto_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 457
    return-void

    .line 454
    :cond_19
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    goto :goto_12
.end method

.method public OnLineTypeDlg(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, alt_bld:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080204

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 158
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    new-instance v3, Lcom/infraware/polarisoffice/common/FillBordersActivity$4;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity$4;-><init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    .line 181
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 182
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 183
    return-void
.end method

.method public OnSelectColor(Ljava/lang/Boolean;)V
    .registers 14
    .parameter "bBorderColorAlert"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 361
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 413
    :goto_e
    return-void

    .line 364
    :cond_f
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setClickable(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 366
    .local v6, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 367
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 370
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    .line 371
    const/4 v5, 0x0

    .line 372
    .local v5, selButton:Lcom/infraware/polarisoffice/common/ColorSelButton;
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 373
    const v7, 0x7f0801ff

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 374
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 375
    const v7, 0x7f0c003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 382
    :goto_4a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 383
    .local v0, btnArray:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06001a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 384
    .local v2, colorArray:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 386
    .local v3, colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_9d

    .line 400
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 401
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 403
    const v7, 0x7f080251

    new-instance v8, Lcom/infraware/polarisoffice/common/FillBordersActivity$7;

    invoke-direct {v8, p0, p1}, Lcom/infraware/polarisoffice/common/FillBordersActivity$7;-><init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 410
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 411
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 412
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mUpdateTime:Ljava/lang/Runnable;

    const-wide/16 v9, 0xa

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 378
    .end local v0           #btnArray:Landroid/content/res/TypedArray;
    .end local v2           #colorArray:Landroid/content/res/TypedArray;
    .end local v3           #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    .end local v4           #i:I
    :cond_94
    const v7, 0x7f080200

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 379
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    goto :goto_4a

    .line 387
    .restart local v0       #btnArray:Landroid/content/res/TypedArray;
    .restart local v2       #colorArray:Landroid/content/res/TypedArray;
    .restart local v3       #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    .restart local v4       #i:I
    :cond_9d
    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    check-cast v3, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;

    .line 388
    .restart local v3       #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->SetButtonColor(I)V

    .line 389
    new-instance v7, Lcom/infraware/polarisoffice/common/FillBordersActivity$6;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity$6;-><init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V

    invoke-virtual {v3, v7}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->GetButtonColor()I

    move-result v7

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getColor()I

    move-result v8

    if-ne v7, v8, :cond_c5

    .line 396
    invoke-virtual {v3, v11}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->setChecked(Z)V

    .line 397
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    .line 386
    :cond_c5
    add-int/lit8 v4, v4, 0x1

    goto :goto_62
.end method

.method public OnSelectMoreColor(Ljava/lang/Boolean;)V
    .registers 4
    .parameter "bBorderColorAlert"

    .prologue
    .line 438
    new-instance v0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 439
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 440
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const v1, 0x7f0801ff

    invoke-virtual {v0, p0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V

    .line 443
    :goto_17
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 444
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->show()V

    .line 445
    return-void

    .line 442
    :cond_23
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const v1, 0x7f080200

    invoke-virtual {v0, p0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V

    goto :goto_17
.end method

.method checkButtonState()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const v8, 0x7f0c0093

    const v7, 0x7f0c008e

    .line 333
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isLBorder()Z

    move-result v2

    .line 334
    .local v2, bLCheck:Z
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isTBorder()Z

    move-result v4

    .line 335
    .local v4, bTCheck:Z
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isRBorder()Z

    move-result v3

    .line 336
    .local v3, bRCheck:Z
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isBBorder()Z

    move-result v0

    .line 337
    .local v0, bBCheck:Z
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isVBorder()Z

    move-result v5

    .line 338
    .local v5, bVCheck:Z
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isHBorder()Z

    move-result v1

    .line 340
    .local v1, bHCheck:Z
    const v6, 0x7f0c008d

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v4}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 341
    const v6, 0x7f0c008f

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v0}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 342
    const v6, 0x7f0c0092

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 343
    const v6, 0x7f0c0094

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 345
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isUseVBorder()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 346
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setVisibility(I)V

    .line 347
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 352
    :goto_76
    iget-object v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v6}, Lcom/infraware/polarisoffice/common/FillBorderView;->isUseHBorder()Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 353
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v9}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setVisibility(I)V

    .line 354
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v1}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 358
    :goto_90
    return-void

    .line 350
    :cond_91
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v10}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setVisibility(I)V

    goto :goto_76

    .line 357
    :cond_9b
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v6, v10}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setVisibility(I)V

    goto :goto_90
.end method

.method public makeLineStyleButton()V
    .registers 3

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleList:[Ljava/lang/CharSequence;

    .line 150
    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    .line 151
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 230
    const-string v0, "FillBordersActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    .line 232
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f0801ac

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->setTitle(I)V

    .line 72
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->makeLineStyleButton()V

    .line 76
    const v1, 0x7f0c0086

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->fillColor:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0c0088

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->borderStyle:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0c008a

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->borderColor:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0c0087

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/ColorSelButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 81
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const-string v1, "id_border_fillcolor"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColor:I

    .line 83
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColor:I

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 85
    const v1, 0x7f0c008b

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/ColorSelButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 86
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 89
    const v1, 0x7f0c008d

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mTBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 90
    const v1, 0x7f0c0093

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mVBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 91
    const v1, 0x7f0c008f

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 92
    const v1, 0x7f0c0092

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 93
    const v1, 0x7f0c008e

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 94
    const v1, 0x7f0c0094

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mRBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 96
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mTBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mVBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mRBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f0c0095

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->ok_btn:Landroid/widget/Button;

    .line 104
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->ok_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v1, 0x7f0c0096

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->cancel_btn:Landroid/widget/Button;

    .line 106
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->cancel_btn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mTBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f020093

    const v3, 0x7f020093

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 109
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mVBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f02008f

    const v3, 0x7f02008f

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 110
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mHBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f020091

    const v3, 0x7f020091

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 111
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f02008e

    const v3, 0x7f02008e

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 112
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f020090

    const v3, 0x7f020090

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 113
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mRBorderButton:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f020092

    const v3, 0x7f020092

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 115
    const v1, 0x7f0c0090

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/FillBorderView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    .line 116
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v1, v8, v7, v7, v8}, Lcom/infraware/polarisoffice/common/FillBorderView;->setPadding(IIII)V

    .line 118
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_hori"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setUseHBorder(Z)V

    .line 119
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_vert"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setUseVBorder(Z)V

    .line 120
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_style"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setBorderStyle(I)V

    .line 122
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_lcolor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setLBorderColor(I)V

    .line 123
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_tcolor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setTBorderColor(I)V

    .line 124
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_bcolor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setBBorderColor(I)V

    .line 125
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_rcolor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setRBorderColor(I)V

    .line 126
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_vcolor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setVBorderColor(I)V

    .line 127
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    const-string v2, "id_border_hcolor"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setHBorderColor(I)V

    .line 128
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/FillBorderView;->init()V

    .line 129
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->getSelectedColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 130
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->checkButtonState()V

    .line 132
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/FillBorderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 134
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/FillBorderView;->getSelectedStyle()B

    move-result v1

    if-ne v1, v5, :cond_1ea

    .line 135
    iput v5, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    .line 136
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleList:[Ljava/lang/CharSequence;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_1e9
    return-void

    .line 138
    :cond_1ea
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mSampleView:Lcom/infraware/polarisoffice/common/FillBorderView;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/FillBorderView;->getSelectedStyle()B

    move-result v1

    if-ne v1, v6, :cond_1fe

    .line 139
    iput v6, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    .line 140
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleList:[Ljava/lang/CharSequence;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e9

    .line 143
    :cond_1fe
    iput v4, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    .line 144
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleList:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e9
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_2e

    .line 212
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 188
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    const v1, 0x7f080204

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    new-instance v3, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity$5;-><init>(Lcom/infraware/polarisoffice/common/FillBordersActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    .line 209
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 210
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    goto :goto_4

    .line 186
    nop

    :pswitch_data_2e
    .packed-switch 0x64
        :pswitch_5
    .end packed-switch
.end method

.method public onLocaleChange(I)V
    .registers 9
    .parameter "nLocale"

    .prologue
    const v6, 0x7f080043

    const/16 v5, 0x64

    const v4, 0x7f0801ff

    const v3, 0x7f080200

    .line 462
    const v1, 0x7f0801ac

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->setTitle(I)V

    .line 463
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->fillColor:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 464
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->borderStyle:Landroid/widget/TextView;

    const v2, 0x7f080204

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 465
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->borderColor:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 467
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->makeLineStyleButton()V

    .line 469
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 470
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->cancel_btn:Landroid/widget/Button;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 473
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 474
    .local v0, borderStyleList:[Ljava/lang/CharSequence;
    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    if-gez v1, :cond_45

    .line 475
    const/4 v1, 0x0

    iput v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    .line 476
    :cond_45
    iget v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillSetColor:I

    if-nez v1, :cond_50

    .line 477
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mFillSetColor:I

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 478
    :cond_50
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBtnBorderStyle:Landroid/widget/Button;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mBorderStyleSelect:I

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 482
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mLineTypeDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 483
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->removeDialog(I)V

    .line 484
    invoke-virtual {p0, v5}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->showDialog(I)V

    .line 487
    :cond_70
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9b

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 489
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 491
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_bf

    .line 492
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 495
    :goto_8e
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080251

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 497
    :cond_9b
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    if-eqz v1, :cond_be

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 499
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mbBorderColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 500
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1, v4}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    .line 503
    :goto_b4
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(I)V

    .line 505
    :cond_be
    return-void

    .line 494
    :cond_bf
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    goto :goto_8e

    .line 502
    :cond_c5
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FillBordersActivity;->mColorMoreDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1, v3}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    goto :goto_b4
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 219
    invoke-super {p0, p1, p2}, Lcom/infraware/common/baseactivity/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 221
    packed-switch p1, :pswitch_data_c

    .line 226
    :goto_6
    return-void

    .line 223
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/common/FillBordersActivity;->removeDialog(I)V

    goto :goto_6

    .line 221
    nop

    :pswitch_data_c
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method
