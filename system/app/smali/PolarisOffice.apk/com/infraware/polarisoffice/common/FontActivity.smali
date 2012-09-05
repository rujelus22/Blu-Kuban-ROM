.class public Lcom/infraware/polarisoffice/common/FontActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "FontActivity.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;
.implements Lcom/infraware/office/evengine/E$EV_DOCEXTENSION_TYPE;


# static fields
.field private static final FONT_FACE_POPUP:I = 0x64

.field private static final FONT_POSITION_POPUP:I = 0x12c

.field private static final FONT_SIZE_POPUP:I = 0xc8

.field private static final MAX_FONTSIZE:I = 0x7f

.field private static final MIN_FONTSIZE:I = 0x1


# instance fields
.field private bgText:Landroid/widget/TextView;

.field private cancel_btn:Landroid/widget/Button;

.field private colorText:Landroid/widget/TextView;

.field private controlHide:Z

.field private faceButton:Landroid/widget/Button;

.field private faceText:Landroid/widget/TextView;

.field fontSizeWatcher:Landroid/text/TextWatcher;

.field private mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

.field private mColorAlertDialog:Landroid/app/AlertDialog;

.field private mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

.field private mFontColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

.field private mFontFaceAlertDialog:Landroid/app/AlertDialog;

.field private mFontPositionAlertDialog:Landroid/app/AlertDialog;

.field private mFontSizeAlertDialog:Landroid/app/AlertDialog;

.field private mSelectColorBtn:Landroid/widget/CompoundButton;

.field private mSizeAlertDialog:Landroid/app/AlertDialog;

.field private mToastMsg:Landroid/widget/Toast;

.field m_Bold:Lcom/infraware/polarisoffice/common/StateToggleButton;

.field m_BtnFace:Landroid/widget/Button;

.field m_BtnPosition:Landroid/widget/Button;

.field m_BtnSize:Landroid/widget/Button;

.field m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

.field m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

.field m_Face:Ljava/lang/String;

.field m_FaceList:[Ljava/lang/CharSequence;

.field m_Italic:Lcom/infraware/polarisoffice/common/StateToggleButton;

.field m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

.field m_PositionList:[Ljava/lang/CharSequence;

.field m_SizeList:[Ljava/lang/CharSequence;

.field m_Strikeout:Lcom/infraware/polarisoffice/common/StateToggleButton;

.field private m_ToastMsg:Landroid/widget/Toast;

.field m_Underline:Lcom/infraware/polarisoffice/common/StateToggleButton;

.field m_bBackColor:Z

.field m_bColor:Z

.field m_nBackColor:I

.field m_nColor:I

.field m_nFaceSelect:I

.field m_nFontSize:I

.field m_nOtherSize:I

.field m_nPosition:I

.field m_nPositionSelect:I

.field m_nSizeSelect:I

.field private mbBackColorAlert:Ljava/lang/Boolean;

.field mbPpt2003File:Z

.field mbPptFile:Z

.field private ok_btn:Landroid/widget/Button;

.field private positionText:Landroid/widget/TextView;

.field private postionButton:Landroid/widget/Button;

.field private sizeText:Landroid/widget/TextView;

.field private styleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    .line 39
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 41
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->controlHide:Z

    .line 42
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mToastMsg:Landroid/widget/Toast;

    .line 51
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 52
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    .line 53
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontFaceAlertDialog:Landroid/app/AlertDialog;

    .line 54
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    .line 55
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontPositionAlertDialog:Landroid/app/AlertDialog;

    .line 56
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Face:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFontSize:I

    .line 67
    iput v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nOtherSize:I

    .line 68
    iput v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPosition:I

    .line 70
    iput v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    .line 71
    iput v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    .line 72
    iput v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nSizeSelect:I

    .line 78
    iput v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nColor:I

    iput v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nBackColor:I

    .line 79
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bColor:Z

    .line 80
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bBackColor:Z

    .line 82
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPptFile:Z

    .line 83
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPpt2003File:Z

    .line 664
    new-instance v0, Lcom/infraware/polarisoffice/common/FontActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/FontActivity$1;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->fontSizeWatcher:Landroid/text/TextWatcher;

    .line 35
    return-void
.end method

.method private OnFontSizeInputDialog()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 616
    .local v2, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 617
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 618
    const v3, 0x7f080239

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 620
    const v3, 0x7f0c0006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 621
    .local v1, fontSizeEditText:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->fontSizeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 623
    const v3, 0x7f080043

    new-instance v4, Lcom/infraware/polarisoffice/common/FontActivity$6;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/common/FontActivity$6;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 637
    const v3, 0x7f080045

    new-instance v4, Lcom/infraware/polarisoffice/common/FontActivity$7;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/common/FontActivity$7;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 642
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    .line 643
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 644
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 645
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 646
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 647
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/FontActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/FontActivity;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 649
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/common/FontActivity;->onShowFieldValueError(II)V

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/FontActivity;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/FontActivity;->onClickColorButton(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/common/FontActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->OnFontSizeInputDialog()V

    return-void
.end method

.method private onClickColorButton(Landroid/view/View;)V
    .registers 6
    .parameter "colorButton"

    .prologue
    const/4 v3, 0x1

    .line 450
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2e

    .line 451
    check-cast p1, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;

    .end local p1
    invoke-virtual {p1}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->GetButtonColor()I

    move-result v0

    .line 452
    .local v0, nColor:I
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_15

    .line 453
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 455
    :cond_15
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 456
    iput v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nBackColor:I

    .line 457
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bBackColor:Z

    .line 458
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 466
    :goto_26
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 469
    .end local v0           #nColor:I
    :cond_2e
    return-void

    .line 461
    .restart local v0       #nColor:I
    :cond_2f
    iput v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nColor:I

    .line 462
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bColor:Z

    .line 463
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v1, v0}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    goto :goto_26
.end method

.method private onShowFieldValueError(II)V
    .registers 9
    .parameter "nMin"
    .parameter "nMax"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 650
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, formattedString:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 653
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mToastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_3d

    .line 655
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mToastMsg:Landroid/widget/Toast;

    .line 656
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mToastMsg:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 660
    :goto_37
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 662
    :cond_3c
    return-void

    .line 659
    :cond_3d
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mToastMsg:Landroid/widget/Toast;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method


# virtual methods
.method public LocaleResource()[Ljava/lang/CharSequence;
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 709
    const/4 v6, 0x0

    .line 710
    .local v6, info:Lcom/infraware/office/evengine/EV$FONT_INFO;
    const/4 v3, 0x0

    .line 711
    .local v3, fontface:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 712
    .local v0, data:Landroid/content/Intent;
    const-string v9, "id_font_ext"

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 714
    .local v7, pt_ext:I
    const/4 v9, 0x5

    if-eq v7, v9, :cond_14

    const/16 v9, 0x14

    if-ne v7, v9, :cond_54

    .line 715
    :cond_14
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/office/evengine/EvInterface;->IGetFormatInfo()Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;

    move-result-object v4

    .line 717
    .local v4, formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    iget-object v9, v4, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->szFontName:Ljava/lang/String;

    if-eqz v9, :cond_47

    .line 718
    iget-object v3, v4, Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;->szFontName:Ljava/lang/String;

    .line 732
    .end local v4           #formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    :cond_22
    :goto_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v1, fontNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/office/evengine/EvInterface;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v8

    .line 734
    .local v8, str_font_list:[Ljava/lang/String;
    if-nez v8, :cond_5f

    .line 735
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    .line 736
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    :cond_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/CharSequence;

    .line 745
    .local v2, font_list:[Ljava/lang/CharSequence;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #font_list:[Ljava/lang/CharSequence;
    check-cast v2, [Ljava/lang/CharSequence;

    .line 746
    .restart local v2       #font_list:[Ljava/lang/CharSequence;
    return-object v2

    .line 721
    .end local v1           #fontNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #font_list:[Ljava/lang/CharSequence;
    .end local v8           #str_font_list:[Ljava/lang/String;
    .restart local v4       #formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    :cond_47
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/office/evengine/EvInterface;->IGetUseFontNames()[Ljava/lang/String;

    move-result-object v8

    .line 722
    .restart local v8       #str_font_list:[Ljava/lang/String;
    if-eqz v8, :cond_22

    .line 724
    aget-object v3, v8, v10

    goto :goto_22

    .line 729
    .end local v4           #formatInfo:Lcom/infraware/office/evengine/EV$SHEET_FORMAT_INFO;
    .end local v8           #str_font_list:[Ljava/lang/String;
    :cond_54
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v6

    .line 730
    iget-object v3, v6, Lcom/infraware/office/evengine/EV$FONT_INFO;->szFontName:Ljava/lang/String;

    goto :goto_22

    .line 739
    .restart local v1       #fontNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8       #str_font_list:[Ljava/lang/String;
    :cond_5f
    const/4 v5, 0x0

    .local v5, i:I
    :goto_60
    array-length v9, v8

    if-ge v5, v9, :cond_3a

    .line 740
    aget-object v9, v8, v5

    invoke-interface {v1, v9}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_78

    aget-object v9, v8, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_78

    .line 741
    aget-object v9, v8, v5

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_60
.end method

.method public OnBISU(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_8

    .line 378
    :pswitch_7
    return-void

    .line 368
    :pswitch_data_8
    .packed-switch 0x7f0c00cd
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public OnCancel(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->setResult(ILandroid/content/Intent;)V

    .line 364
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->finish()V

    .line 365
    return-void
.end method

.method public OnClickColor(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a

    .line 232
    :goto_7
    return-void

    .line 224
    :sswitch_8
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->OnSelectColor(Ljava/lang/Boolean;)V

    goto :goto_7

    .line 227
    :sswitch_11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->OnSelectColor(Ljava/lang/Boolean;)V

    goto :goto_7

    .line 222
    :sswitch_data_1a
    .sparse-switch
        0x7f0c00cb -> :sswitch_8
        0x7f0c00da -> :sswitch_11
    .end sparse-switch
.end method

.method public OnClickMoreColors(I)V
    .registers 4
    .parameter "color"

    .prologue
    const/4 v1, 0x1

    .line 485
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 486
    iput p1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nBackColor:I

    .line 487
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bBackColor:Z

    .line 488
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 495
    :goto_12
    return-void

    .line 491
    :cond_13
    iput p1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nColor:I

    .line 492
    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bColor:Z

    .line 493
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    goto :goto_12
.end method

.method public OnEmboss(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 387
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 388
    return-void
.end method

.method public OnEngrave(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 393
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 394
    return-void
.end method

.method public OnFaceDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 541
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->showDialog(I)V

    .line 542
    return-void
.end method

.method public OnInputSizeDlg()V
    .registers 8

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 546
    .local v3, lay2:Landroid/view/LayoutInflater;
    const v5, 0x7f030003

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 548
    .local v4, v2:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    .local v0, alert:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f08023a

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 550
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 551
    .local v2, input:Landroid/widget/EditText;
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 552
    invoke-virtual {v2}, Landroid/widget/EditText;->setSingleLine()V

    .line 553
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 554
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 556
    const v5, 0x7f080043

    new-instance v6, Lcom/infraware/polarisoffice/common/FontActivity$4;

    invoke-direct {v6, p0, v2}, Lcom/infraware/polarisoffice/common/FontActivity$4;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 574
    const v5, 0x7f080045

    new-instance v6, Lcom/infraware/polarisoffice/common/FontActivity$5;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/common/FontActivity$5;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 580
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 581
    .local v1, alert1:Landroid/app/AlertDialog;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 582
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 583
    return-void
.end method

.method public OnOk(Landroid/view/View;)V
    .registers 13
    .parameter "view"

    .prologue
    const/16 v10, 0xa

    const/high16 v9, 0x2

    const/high16 v8, 0x1

    const/16 v7, 0x9

    const/16 v6, 0xb

    .line 242
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 244
    .local v2, mask:I
    const/4 v0, 0x0

    .line 246
    .local v0, att:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Face:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 247
    or-int/lit8 v2, v2, 0x3

    .line 249
    :cond_1b
    const-string v4, "id_font_facename"

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Face:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFontSize:I

    if-lez v4, :cond_2f

    .line 252
    or-int/lit8 v2, v2, 0x4

    .line 253
    const-string v4, "id_font_fontsize"

    iget v5, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFontSize:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    :cond_2f
    iget-boolean v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bColor:Z

    if-eqz v4, :cond_3c

    .line 257
    or-int/lit16 v2, v2, 0x4000

    .line 258
    const-string v4, "id_font_color"

    iget v5, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    :cond_3c
    iget-boolean v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_bBackColor:Z

    if-eqz v4, :cond_4b

    .line 261
    const v4, 0x8000

    or-int/2addr v2, v4

    .line 262
    const-string v4, "id_font_backcolor"

    iget v5, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nBackColor:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    :cond_4b
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Bold:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v3

    .line 266
    .local v3, state:I
    if-le v3, v7, :cond_59

    .line 267
    or-int/lit8 v2, v2, 0x20

    .line 268
    if-ne v3, v6, :cond_b3

    .line 269
    or-int/lit16 v0, v0, 0x400

    .line 273
    :cond_59
    :goto_59
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Italic:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v3

    .line 274
    if-le v3, v7, :cond_67

    .line 275
    or-int/lit8 v2, v2, 0x40

    .line 276
    if-ne v3, v6, :cond_b6

    .line 277
    or-int/lit16 v0, v0, 0x200

    .line 281
    :cond_67
    :goto_67
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Strikeout:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v3

    .line 282
    if-le v3, v7, :cond_75

    .line 283
    or-int/lit16 v2, v2, 0x100

    .line 284
    if-ne v3, v6, :cond_b9

    .line 285
    or-int/lit16 v0, v0, 0x80

    .line 289
    :cond_75
    :goto_75
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Underline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v3

    .line 290
    if-le v3, v7, :cond_83

    .line 291
    or-int/lit16 v2, v2, 0x80

    .line 292
    if-ne v3, v6, :cond_bc

    .line 293
    or-int/lit16 v0, v0, 0x100

    .line 298
    :cond_83
    :goto_83
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v4

    if-ne v4, v6, :cond_bf

    .line 299
    or-int/lit16 v2, v2, 0x200

    .line 300
    or-int/2addr v2, v8

    .line 301
    or-int/2addr v2, v9

    .line 302
    or-int/lit8 v0, v0, 0x20

    .line 303
    and-int/lit8 v0, v0, -0x9

    .line 304
    and-int/lit8 v0, v0, -0x5

    .line 335
    :cond_95
    :goto_95
    iget v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPosition:I

    if-nez v4, :cond_10a

    .line 336
    or-int/lit16 v2, v2, 0x2000

    .line 337
    or-int/lit16 v2, v2, 0x1000

    .line 338
    or-int/lit8 v0, v0, 0x1

    .line 339
    and-int/lit8 v0, v0, -0x3

    .line 354
    :cond_a1
    :goto_a1
    const-string v4, "id_font_mask"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v4, "id_font_att"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->setResult(ILandroid/content/Intent;)V

    .line 358
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->finish()V

    .line 359
    return-void

    .line 271
    :cond_b3
    and-int/lit16 v0, v0, -0x401

    goto :goto_59

    .line 279
    :cond_b6
    and-int/lit16 v0, v0, -0x201

    goto :goto_67

    .line 287
    :cond_b9
    and-int/lit16 v0, v0, -0x81

    goto :goto_75

    .line 295
    :cond_bc
    and-int/lit16 v0, v0, -0x101

    goto :goto_83

    .line 306
    :cond_bf
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v4

    if-ne v4, v6, :cond_d2

    .line 307
    or-int/lit16 v2, v2, 0x200

    .line 308
    or-int/2addr v2, v8

    .line 309
    or-int/2addr v2, v9

    .line 310
    and-int/lit8 v0, v0, -0x21

    .line 311
    or-int/lit8 v0, v0, 0x8

    .line 312
    and-int/lit8 v0, v0, -0x5

    goto :goto_95

    .line 314
    :cond_d2
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v4

    if-ne v4, v6, :cond_e5

    .line 315
    or-int/lit16 v2, v2, 0x200

    .line 316
    or-int/2addr v2, v8

    .line 317
    or-int/2addr v2, v9

    .line 318
    and-int/lit8 v0, v0, -0x21

    .line 319
    and-int/lit8 v0, v0, -0x9

    .line 320
    or-int/lit8 v0, v0, 0x4

    goto :goto_95

    .line 322
    :cond_e5
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v4

    if-ne v4, v10, :cond_f2

    .line 323
    or-int/lit16 v2, v2, 0x200

    .line 324
    and-int/lit8 v0, v0, -0x21

    goto :goto_95

    .line 326
    :cond_f2
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v4

    if-ne v4, v10, :cond_fe

    .line 327
    or-int/2addr v2, v8

    .line 328
    and-int/lit8 v0, v0, -0x9

    goto :goto_95

    .line 330
    :cond_fe
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->GetState()I

    move-result v4

    if-ne v4, v10, :cond_95

    .line 331
    or-int/2addr v2, v9

    .line 332
    and-int/lit8 v0, v0, -0x5

    goto :goto_95

    .line 341
    :cond_10a
    iget v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPosition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_118

    .line 342
    or-int/lit16 v2, v2, 0x2000

    .line 343
    or-int/lit16 v2, v2, 0x1000

    .line 344
    and-int/lit8 v0, v0, -0x2

    .line 345
    and-int/lit8 v0, v0, -0x3

    goto :goto_a1

    .line 347
    :cond_118
    iget v4, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a1

    .line 348
    or-int/lit16 v2, v2, 0x2000

    .line 349
    or-int/lit16 v2, v2, 0x1000

    .line 350
    and-int/lit8 v0, v0, -0x2

    .line 351
    or-int/lit8 v0, v0, 0x2

    goto/16 :goto_a1
.end method

.method public OnOutline(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 382
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 383
    return-void
.end method

.method public OnPositionDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 590
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->showDialog(I)V

    .line 591
    return-void
.end method

.method public OnSelectColor(Ljava/lang/Boolean;)V
    .registers 14
    .parameter "bBackColorAlert"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 397
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 447
    :goto_e
    return-void

    .line 400
    :cond_f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030008

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 401
    .local v6, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 403
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 405
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    .line 406
    const/4 v5, 0x0

    .line 407
    .local v5, selButton:Lcom/infraware/polarisoffice/common/ColorSelButton;
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_79

    .line 408
    const v7, 0x7f0801fd

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 409
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 417
    :goto_39
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 418
    .local v0, btnArray:Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06001a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 419
    .local v2, colorArray:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    .line 421
    .local v3, colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-lt v4, v7, :cond_8e

    .line 435
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 436
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 438
    const v7, 0x7f080251

    new-instance v8, Lcom/infraware/polarisoffice/common/FontActivity$3;

    invoke-direct {v8, p0, p1}, Lcom/infraware/polarisoffice/common/FontActivity$3;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;Ljava/lang/Boolean;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    .line 445
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 446
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_e

    .line 412
    .end local v0           #btnArray:Landroid/content/res/TypedArray;
    .end local v2           #colorArray:Landroid/content/res/TypedArray;
    .end local v3           #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    .end local v4           #i:I
    :cond_79
    const v7, 0x7f0801f6

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 413
    iget-object v5, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 414
    const v7, 0x7f0c003d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_39

    .line 422
    .restart local v0       #btnArray:Landroid/content/res/TypedArray;
    .restart local v2       #colorArray:Landroid/content/res/TypedArray;
    .restart local v3       #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    .restart local v4       #i:I
    :cond_8e
    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    check-cast v3, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;

    .line 423
    .restart local v3       #colorSelRadioButton:Lcom/infraware/polarisoffice/common/ColorSelRadioButton;
    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v3, v7}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->SetButtonColor(I)V

    .line 424
    new-instance v7, Lcom/infraware/polarisoffice/common/FontActivity$2;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/common/FontActivity$2;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    invoke-virtual {v3, v7}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->GetButtonColor()I

    move-result v7

    invoke-virtual {v5}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getColor()I

    move-result v8

    if-ne v7, v8, :cond_b6

    .line 431
    invoke-virtual {v3, v11}, Lcom/infraware/polarisoffice/common/ColorSelRadioButton;->setChecked(Z)V

    .line 432
    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSelectColorBtn:Landroid/widget/CompoundButton;

    .line 421
    :cond_b6
    add-int/lit8 v4, v4, 0x1

    goto :goto_51
.end method

.method public OnSelectMoreColor(Ljava/lang/Boolean;)V
    .registers 5
    .parameter "bBackColorAlert"

    .prologue
    .line 472
    new-instance v0, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;-><init>(Landroid/content/Context;)V

    .line 473
    .local v0, colorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 474
    const v1, 0x7f0801fd

    invoke-virtual {v0, p0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V

    .line 478
    :goto_13
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    .line 479
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 480
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->show()V

    .line 481
    return-void

    .line 476
    :cond_21
    const v1, 0x7f0801f6

    invoke-virtual {v0, p0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->Init(Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog$OnColorPickerListener;I)V

    goto :goto_13
.end method

.method public OnSizeDlg(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 586
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->showDialog(I)V

    .line 587
    return-void
.end method

.method public PrepareResources()V
    .registers 18

    .prologue
    .line 101
    const v14, 0x7f0c00cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/ColorSelButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 102
    const v14, 0x7f0c00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/ColorSelButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    .line 104
    const v14, 0x7f0c00cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/StateToggleButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Bold:Lcom/infraware/polarisoffice/common/StateToggleButton;

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Bold:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const v15, 0x7f0200e7

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetButtonImg(I)V

    .line 106
    const v14, 0x7f0c00ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/StateToggleButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Italic:Lcom/infraware/polarisoffice/common/StateToggleButton;

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Italic:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const v15, 0x7f0200e9

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetButtonImg(I)V

    .line 108
    const v14, 0x7f0c00d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/StateToggleButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Strikeout:Lcom/infraware/polarisoffice/common/StateToggleButton;

    .line 109
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Strikeout:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const v15, 0x7f0200ec

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetButtonImg(I)V

    .line 110
    const v14, 0x7f0c00cf

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/StateToggleButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Underline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    .line 111
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Underline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const v15, 0x7f0200ed

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetButtonImg(I)V

    .line 113
    const v14, 0x7f0c00d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/StateToggleButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    .line 114
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const v15, 0x7f0200eb

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetButtonImg(I)V

    .line 115
    const v14, 0x7f0c00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/StateToggleButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    .line 116
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const v15, 0x7f0200ea

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetButtonImg(I)V

    .line 117
    const v14, 0x7f0c00d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/infraware/polarisoffice/common/StateToggleButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const v15, 0x7f0200e8

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetButtonImg(I)V

    .line 120
    const v14, 0x7f0c00c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnFace:Landroid/widget/Button;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 124
    .local v5, data:Landroid/content/Intent;
    const v14, 0x7f0c00c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->faceText:Landroid/widget/TextView;

    .line 125
    const v14, 0x7f0c00c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->sizeText:Landroid/widget/TextView;

    .line 126
    const v14, 0x7f0c00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->colorText:Landroid/widget/TextView;

    .line 127
    const v14, 0x7f0c00cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->styleText:Landroid/widget/TextView;

    .line 128
    const v14, 0x7f0c00d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->positionText:Landroid/widget/TextView;

    .line 129
    const v14, 0x7f0c00d9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->bgText:Landroid/widget/TextView;

    .line 131
    const v14, 0x7f0c00dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->ok_btn:Landroid/widget/Button;

    .line 132
    const v14, 0x7f0c00dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->cancel_btn:Landroid/widget/Button;

    .line 134
    const-string v14, "id_font_fontlist"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06001c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f06001b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    .line 138
    const v14, 0x7f0c00c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnSize:Landroid/widget/Button;

    .line 139
    const v14, 0x7f0c00d7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnPosition:Landroid/widget/Button;

    .line 141
    const-string v14, "id_font_facename"

    invoke-virtual {v5, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, fontface:Ljava/lang/String;
    const-string v14, "id_font_fontsize"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 143
    .local v12, pt_size:I
    const-string v14, "id_font_color"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 144
    .local v7, fcolor:I
    const-string v14, "id_font_backcolor"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 145
    .local v3, bcolor:I
    const-string v14, "id_font_mask"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 146
    .local v11, mask:I
    const-string v14, "id_font_att"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 147
    .local v2, att:I
    const-string v14, "ppt_file"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPptFile:Z

    .line 148
    const-string v14, "ppt_2003_file"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPpt2003File:Z

    .line 151
    const-string v14, "id_font_control_hide"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->controlHide:Z

    .line 152
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->controlHide:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/infraware/polarisoffice/common/FontActivity;->setHideControl(Z)V

    .line 156
    if-eqz v8, :cond_20d

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_20d

    .line 158
    const/4 v1, -0x1

    .line 159
    .local v1, SelectFontIndex:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    array-length v6, v14

    .line 160
    .local v6, facecnt:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_200
    if-lt v9, v6, :cond_29c

    .line 176
    :cond_202
    :goto_202
    move-object/from16 v0, p0

    iput v1, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnFace:Landroid/widget/Button;

    invoke-virtual {v14, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .end local v1           #SelectFontIndex:I
    .end local v6           #facecnt:I
    .end local v9           #i:I
    :cond_20d
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/infraware/polarisoffice/common/FontActivity;->getFontSizeIndex(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nSizeSelect:I

    .line 181
    move-object/from16 v0, p0

    iput v12, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nOtherSize:I

    .line 182
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, text_num:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "pt"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnSize:Landroid/widget/Button;

    invoke-virtual {v14, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v14, v7}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v14, v3}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setColor(I)V

    .line 189
    and-int/lit16 v14, v2, 0x400

    if-eqz v14, :cond_253

    .line 190
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Bold:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 191
    :cond_253
    and-int/lit16 v14, v2, 0x200

    if-eqz v14, :cond_25f

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Italic:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 193
    :cond_25f
    and-int/lit16 v14, v2, 0x80

    if-eqz v14, :cond_26b

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Strikeout:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 195
    :cond_26b
    and-int/lit16 v14, v2, 0x100

    if-eqz v14, :cond_277

    .line 196
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Underline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 198
    :cond_277
    and-int/lit8 v14, v2, 0x20

    if-eqz v14, :cond_2b9

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    .line 205
    :cond_283
    :goto_283
    and-int/lit8 v14, v2, 0x1

    if-eqz v14, :cond_2d3

    .line 206
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    .line 207
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnPosition:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :goto_29b
    return-void

    .line 162
    .end local v13           #text_num:Ljava/lang/String;
    .restart local v1       #SelectFontIndex:I
    .restart local v6       #facecnt:I
    .restart local v9       #i:I
    :cond_29c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    aget-object v4, v14, v9

    .line 163
    .local v4, cs:Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, itemstr:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_202

    .line 166
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2b5

    .line 168
    move v1, v9

    .line 169
    goto/16 :goto_202

    .line 160
    :cond_2b5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_200

    .line 200
    .end local v1           #SelectFontIndex:I
    .end local v4           #cs:Ljava/lang/CharSequence;
    .end local v6           #facecnt:I
    .end local v9           #i:I
    .end local v10           #itemstr:Ljava/lang/String;
    .restart local v13       #text_num:Ljava/lang/String;
    :cond_2b9
    and-int/lit8 v14, v2, 0x8

    if-eqz v14, :cond_2c6

    .line 201
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    goto :goto_283

    .line 202
    :cond_2c6
    and-int/lit8 v14, v2, 0x4

    if-eqz v14, :cond_283

    .line 203
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/infraware/polarisoffice/common/StateToggleButton;->SetState(I)V

    goto :goto_283

    .line 209
    :cond_2d3
    and-int/lit8 v14, v2, 0x2

    if-eqz v14, :cond_2ec

    .line 210
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnPosition:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29b

    .line 214
    :cond_2ec
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnPosition:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29b
.end method

.method public getFontSizeIndex(I)I
    .registers 11
    .parameter "size"

    .prologue
    .line 594
    const/4 v0, -0x1

    .line 595
    .local v0, SelectSizeIndex:I
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    array-length v5, v7

    .line 596
    .local v5, scnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    add-int/lit8 v7, v5, -0x1

    if-lt v2, v7, :cond_f

    .line 609
    :goto_9
    const/4 v7, -0x1

    if-ne v0, v7, :cond_e

    .line 610
    add-int/lit8 v0, v5, -0x1

    .line 611
    :cond_e
    return v0

    .line 597
    :cond_f
    iget-object v7, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    aget-object v1, v7, v2

    .line 598
    .local v1, cs:Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 599
    .local v3, itemstr:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_31

    .line 600
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, num:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 602
    .local v6, test:I
    if-ne v6, p1, :cond_31

    .line 603
    move v0, v2

    .line 604
    goto :goto_9

    .line 596
    .end local v4           #num:Ljava/lang/String;
    .end local v6           #test:I
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->setResult(ILandroid/content/Intent;)V

    .line 238
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    .line 239
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->setContentView(I)V

    .line 92
    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->setTitle(I)V

    .line 93
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->PrepareResources()V

    .line 97
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x7f080271

    const/4 v4, 0x0

    .line 835
    sparse-switch p1, :sswitch_data_aa

    .line 900
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 837
    :sswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 838
    const v1, 0x7f08019c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 839
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    new-instance v3, Lcom/infraware/polarisoffice/common/FontActivity$8;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/FontActivity$8;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 837
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontFaceAlertDialog:Landroid/app/AlertDialog;

    .line 847
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontFaceAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 849
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->useKorFontMsg()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 851
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_50

    .line 852
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 856
    :goto_41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_ToastMsg:Landroid/widget/Toast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 857
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 859
    :cond_4d
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontFaceAlertDialog:Landroid/app/AlertDialog;

    goto :goto_8

    .line 854
    :cond_50
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, v5}, Landroid/widget/Toast;->setText(I)V

    goto :goto_41

    .line 861
    :sswitch_56
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 862
    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 863
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nSizeSelect:I

    new-instance v3, Lcom/infraware/polarisoffice/common/FontActivity$9;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/FontActivity$9;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 861
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    .line 882
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 883
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 884
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    goto :goto_8

    .line 886
    :sswitch_82
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 887
    const v1, 0x7f080173

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    new-instance v3, Lcom/infraware/polarisoffice/common/FontActivity$10;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/FontActivity$10;-><init>(Lcom/infraware/polarisoffice/common/FontActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 895
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 886
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontPositionAlertDialog:Landroid/app/AlertDialog;

    .line 896
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontPositionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 897
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontPositionAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_8

    .line 835
    :sswitch_data_aa
    .sparse-switch
        0x64 -> :sswitch_9
        0xc8 -> :sswitch_56
        0x12c -> :sswitch_82
    .end sparse-switch
.end method

.method public onLocaleChange(I)V
    .registers 11
    .parameter "nLocale"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const v6, 0x7f0801fd

    const v5, 0x7f0801f6

    const v4, 0x7f080043

    .line 751
    const v1, 0x7f080185

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->setTitle(I)V

    .line 752
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_SizeList:[Ljava/lang/CharSequence;

    .line 754
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->LocaleResource()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    .line 755
    iget v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    if-gez v1, :cond_2a

    .line 756
    iput v8, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    .line 757
    :cond_2a
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnFace:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_FaceList:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FontActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    .line 761
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ColorSelButton;->getColor()I

    move-result v1

    if-nez v1, :cond_52

    .line 763
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    const v2, 0x7f08017d

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setText(I)V

    .line 766
    :cond_52
    iget v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    if-gez v1, :cond_58

    .line 767
    iput v8, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nFaceSelect:I

    .line 768
    :cond_58
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_BtnPosition:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_PositionList:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_nPositionSelect:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 770
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->faceText:Landroid/widget/TextView;

    const v2, 0x7f08019c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 771
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->sizeText:Landroid/widget/TextView;

    const v2, 0x7f08016d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 772
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->colorText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 773
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->styleText:Landroid/widget/TextView;

    const v2, 0x7f0801f4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 774
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->positionText:Landroid/widget/TextView;

    const v2, 0x7f080173

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 775
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->bgText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 777
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->ok_btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 778
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->cancel_btn:Landroid/widget/Button;

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 780
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 782
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 783
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->removeDialog(I)V

    .line 784
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->showDialog(I)V

    .line 787
    :cond_b5
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 789
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f080239

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 790
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 791
    .local v0, fontSizeEditText:Landroid/widget/EditText;
    const v1, 0x7f08016d

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 792
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 793
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 796
    .end local v0           #fontSizeEditText:Landroid/widget/EditText;
    :cond_f0
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_116

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_116

    .line 798
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 799
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 804
    :goto_109
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080251

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 807
    :cond_116
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    if-eqz v1, :cond_138

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_138

    .line 809
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbBackColorAlert:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_175

    .line 810
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1, v6}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    .line 815
    :goto_12f
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1, v7}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setText(I)V

    .line 818
    :cond_138
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontFaceAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_153

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontFaceAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_153

    .line 820
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontFaceAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 821
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->removeDialog(I)V

    .line 822
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->showDialog(I)V

    .line 825
    :cond_153
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontPositionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_16e

    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontPositionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 827
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mFontPositionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 828
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->removeDialog(I)V

    .line 829
    const/16 v1, 0x12c

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FontActivity;->showDialog(I)V

    .line 831
    :cond_16e
    return-void

    .line 802
    :cond_16f
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    goto :goto_109

    .line 813
    :cond_175
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mColorPickerAlertDialog:Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/ColorPickerAlertDialog;->setTitle(I)V

    goto :goto_12f
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 905
    sparse-switch p1, :sswitch_data_16

    .line 916
    :goto_3
    return-void

    .line 907
    :sswitch_4
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->removeDialog(I)V

    goto :goto_3

    .line 910
    :sswitch_a
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->removeDialog(I)V

    goto :goto_3

    .line 913
    :sswitch_10
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->removeDialog(I)V

    goto :goto_3

    .line 905
    :sswitch_data_16
    .sparse-switch
        0x64 -> :sswitch_4
        0xc8 -> :sswitch_a
        0x12c -> :sswitch_10
    .end sparse-switch
.end method

.method public setHideControl(Z)V
    .registers 8
    .parameter "isHide"

    .prologue
    const/16 v5, 0x8

    .line 498
    if-nez p1, :cond_5

    .line 531
    :cond_4
    :goto_4
    return-void

    .line 499
    :cond_5
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mBackColorButton:Lcom/infraware/polarisoffice/common/ColorSelButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/ColorSelButton;->setVisibility(I)V

    .line 501
    :cond_e
    const v3, 0x7f0c00d8

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 502
    .local v2, line2:Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->bgText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-boolean v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPptFile:Z

    if-eqz v3, :cond_23

    :cond_23
    iget-boolean v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPpt2003File:Z

    if-eqz v3, :cond_32

    .line 507
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Strikeout:Lcom/infraware/polarisoffice/common/StateToggleButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setEnabled(Z)V

    .line 508
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Strikeout:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setVisibility(I)V

    .line 510
    :cond_32
    iget-boolean v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPptFile:Z

    if-eqz v3, :cond_56

    .line 511
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setVisibility(I)V

    .line 512
    :cond_3f
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setVisibility(I)V

    .line 514
    :cond_48
    iget-boolean v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->mbPpt2003File:Z

    if-nez v3, :cond_4

    .line 515
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setVisibility(I)V

    goto :goto_4

    .line 518
    :cond_56
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Outline:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setVisibility(I)V

    .line 519
    :cond_5f
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Emboss:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setVisibility(I)V

    .line 520
    :cond_68
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    if-eqz v3, :cond_71

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->m_Engrave:Lcom/infraware/polarisoffice/common/StateToggleButton;

    invoke-virtual {v3, v5}, Lcom/infraware/polarisoffice/common/StateToggleButton;->setVisibility(I)V

    .line 522
    :cond_71
    const v3, 0x7f0c00d1

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 523
    .local v0, addStyleButton:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    const v3, 0x7f0c00d5

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 526
    .local v1, line1:Landroid/widget/ImageView;
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->positionText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 528
    const v3, 0x7f0c00d7

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->postionButton:Landroid/widget/Button;

    .line 529
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FontActivity;->postionButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public setHideFontFace()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 535
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->faceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    const v0, 0x7f0c00c7

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/FontActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->faceButton:Landroid/widget/Button;

    .line 537
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FontActivity;->faceButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 538
    return-void
.end method
