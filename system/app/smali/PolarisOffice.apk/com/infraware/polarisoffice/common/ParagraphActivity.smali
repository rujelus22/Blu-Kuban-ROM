.class public Lcom/infraware/polarisoffice/common/ParagraphActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "ParagraphActivity.java"


# static fields
.field private static final MAX_AFTERSPACE:I = 0x13c

.field private static final MAX_BEFORESPACE:I = 0x13c

.field private static final MAX_FIRSTINDENT:I = 0x13c

.field private static final MAX_LEFTINDENT:I = 0x88

.field private static final MAX_LINESPACE_PER:I = 0x258

.field private static final MAX_LINESPACE_PT:I = 0xc8

.field private static final MAX_RIGHTINDENT:I = 0x52

.field private static final MIN_AFTERSPACE:I = 0x0

.field private static final MIN_BEFORESPACE:I = 0x0

.field private static final MIN_FIRSTINDENT:I = 0x0

.field private static final MIN_LEFTINDENT:I = 0x0

.field private static final MIN_LINESPACE_PER:I = 0x1

.field private static final MIN_LINESPACE_PT:I = 0x1

.field private static final MIN_RIGHTINDENT:I


# instance fields
.field private DirectionCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private HAlighCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private final LOG_CAT:Ljava/lang/String;

.field private OkCancelBtnClick:Landroid/view/View$OnClickListener;

.field private VAlighCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field direction_layout:Landroid/widget/RelativeLayout;

.field private mAfterSpaceEdit:Landroid/widget/EditText;

.field private mBUndo:I

.field private mBeforeSpaceEdit:Landroid/widget/EditText;

.field mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field mCancelBtn:Landroid/widget/Button;

.field mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mDirection:I

.field mDirectionRG:Landroid/widget/RadioGroup;

.field private mFirstLineIndentType:I

.field private mFirstlineIndentEdit:Landroid/widget/EditText;

.field private mHAlign:I

.field mHAlignRG:Landroid/widget/RadioGroup;

.field mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mLeftIndentEdit:Landroid/widget/EditText;

.field mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mLineSpaceDlg:Landroid/app/AlertDialog;

.field private mLineSpaceEdit:Landroid/widget/EditText;

.field private mLineSpaceSpin:Landroid/widget/Button;

.field private mLineSpaceType:I

.field mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field mOKBtn:Landroid/widget/Button;

.field mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mRightIndentEdit:Landroid/widget/EditText;

.field mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mToastMsg:Landroid/widget/Toast;

.field mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

.field private mVAlign:I

.field mVAlignRG:Landroid/widget/RadioGroup;

.field m_LinespaceList:[Ljava/lang/CharSequence;

.field private mbSlide:Z

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 27
    const-string v0, "ParagraphActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->LOG_CAT:Ljava/lang/String;

    .line 28
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z

    .line 29
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->direction_layout:Landroid/widget/RelativeLayout;

    .line 30
    iput v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    .line 31
    iput v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    .line 33
    iput v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBUndo:I

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceDlg:Landroid/app/AlertDialog;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;

    .line 41
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;

    .line 42
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;

    .line 43
    iput v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstLineIndentType:I

    .line 44
    iput v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    .line 45
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mToastMsg:Landroid/widget/Toast;

    .line 47
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceSpin:Landroid/widget/Button;

    .line 50
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlignRG:Landroid/widget/RadioGroup;

    .line 51
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlignRG:Landroid/widget/RadioGroup;

    .line 52
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirectionRG:Landroid/widget/RadioGroup;

    .line 53
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 54
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 55
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 56
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 58
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 59
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 61
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 62
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 63
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 65
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mOKBtn:Landroid/widget/Button;

    .line 66
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCancelBtn:Landroid/widget/Button;

    .line 110
    new-instance v0, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity$1;-><init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->HAlighCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 139
    new-instance v0, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity$2;-><init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->DirectionCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 159
    new-instance v0, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity$3;-><init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->VAlighCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 182
    new-instance v0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;-><init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    .line 391
    new-instance v0, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity$5;-><init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->textWatcher:Landroid/text/TextWatcher;

    .line 26
    return-void
.end method

.method private PrepareResources()V
    .registers 9

    .prologue
    const v7, 0x7f020081

    const v6, 0x7f020080

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id_isslide"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z

    .line 230
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z

    if-nez v1, :cond_2ce

    .line 231
    const v1, 0x7f030037

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->setContentView(I)V

    .line 235
    :goto_1f
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z

    if-nez v1, :cond_2d6

    .line 236
    iput v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    .line 240
    :goto_25
    const v1, 0x7f0c0162

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->direction_layout:Landroid/widget/RelativeLayout;

    .line 244
    const-string v1, "id_ParaDirection"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I

    .line 245
    const-string v1, "id_halign"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    .line 246
    const v1, 0x7f0c016a

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;

    .line 247
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;

    const-string v2, "id_left_indent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    const v1, 0x7f0c016c

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;

    .line 251
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;

    const-string v2, "id_right_indent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    const-string v1, "id_firstline_indent_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstLineIndentType:I

    .line 255
    const v1, 0x7f0c016e

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;

    .line 256
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;

    const-string v2, "id_firstline_indent"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 259
    const-string v1, "id_line_space_type"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    .line 260
    const v1, 0x7f0c0170

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;

    .line 261
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    if-le v1, v5, :cond_2e0

    .line 262
    iput v4, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    .line 263
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;

    const-string v2, "id_line_space"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, -0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    :goto_d5
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 269
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->m_LinespaceList:[Ljava/lang/CharSequence;

    .line 270
    const v1, 0x7f0c0171

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceSpin:Landroid/widget/Button;

    .line 271
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceSpin:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->m_LinespaceList:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 273
    const v1, 0x7f0c0172

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;

    .line 274
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;

    const-string v2, "id_before_space"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    const v1, 0x7f0c0174

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;

    .line 278
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;

    const-string v2, "id_after_space"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->textWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 281
    const v1, 0x7f0c015f

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 282
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f020082

    const v3, 0x7f020082

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 283
    const v1, 0x7f0c0160

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 284
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v6, v6}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 285
    const v1, 0x7f0c0161

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 286
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f020083

    const v3, 0x7f020083

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 287
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z

    if-nez v1, :cond_1ad

    .line 291
    const v1, 0x7f0c017e

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 292
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v7, v7}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 293
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_1ad
    const v1, 0x7f0c0164

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 297
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f0200aa

    const v3, 0x7f0200aa

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 298
    const v1, 0x7f0c0165

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 299
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f0200ab

    const v3, 0x7f0200ab

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 300
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v1, 0x7f0c015e

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlignRG:Landroid/widget/RadioGroup;

    .line 304
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlignRG:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->HAlighCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 305
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlignRG:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    if-nez v1, :cond_2f1

    .line 308
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 318
    :cond_209
    :goto_209
    const v1, 0x7f0c0163

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirectionRG:Landroid/widget/RadioGroup;

    .line 319
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirectionRG:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->DirectionCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 320
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirectionRG:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I

    if-nez v1, :cond_318

    .line 323
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftToRightBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 327
    :cond_22b
    :goto_22b
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z

    if-eqz v1, :cond_2a9

    .line 328
    const v1, 0x7f0c0167

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 329
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f0201f4

    const v3, 0x7f0201f4

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 330
    const v1, 0x7f0c0168

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 331
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f0201f3

    const v3, 0x7f0201f3

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 332
    const v1, 0x7f0c0169

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    .line 333
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    const v2, 0x7f0201f2

    const v3, 0x7f0201f2

    invoke-virtual {v1, v2, v3}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->SetButtonImg(II)V

    .line 334
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    const v1, 0x7f0c0166

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlignRG:Landroid/widget/RadioGroup;

    .line 338
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlignRG:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->VAlighCheckedListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 339
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlignRG:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_323

    .line 341
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mTopAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    .line 348
    :cond_2a9
    :goto_2a9
    const v1, 0x7f0c0176

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mOKBtn:Landroid/widget/Button;

    .line 349
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mOKBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v1, 0x7f0c0177

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCancelBtn:Landroid/widget/Button;

    .line 351
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCancelBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->OkCancelBtnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    return-void

    .line 233
    :cond_2ce
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->setContentView(I)V

    goto/16 :goto_1f

    .line 238
    :cond_2d6
    const-string v1, "id_valign"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    goto/16 :goto_25

    .line 266
    :cond_2e0
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;

    const-string v2, "id_line_space"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d5

    .line 309
    :cond_2f1
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2fd

    .line 310
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mCenterAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto/16 :goto_209

    .line 311
    :cond_2fd
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    if-ne v1, v5, :cond_308

    .line 312
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto/16 :goto_209

    .line 313
    :cond_308
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_209

    .line 314
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    if-eqz v1, :cond_209

    .line 315
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mJustifyAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto/16 :goto_209

    .line 324
    :cond_318
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I

    if-ne v1, v5, :cond_22b

    .line 325
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightToLeftBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto/16 :goto_22b

    .line 342
    :cond_323
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_32f

    .line 343
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mMiddleAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto/16 :goto_2a9

    .line 344
    :cond_32f
    iget v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2a9

    .line 345
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBottomAlignBtn:Lcom/infraware/polarisoffice/common/SelectibleRadioButton;

    invoke-virtual {v1, v5}, Lcom/infraware/polarisoffice/common/SelectibleRadioButton;->setChecked(Z)V

    goto/16 :goto_2a9
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    return-void
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    return v0
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I

    return v0
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBUndo:I

    return v0
.end method

.method static synthetic access$16(Lcom/infraware/polarisoffice/common/ParagraphActivity;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    invoke-direct {p0, p1, p2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->onShowFieldValueError(II)V

    return-void
.end method

.method static synthetic access$17(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceSpin:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$18(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/common/ParagraphActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 32
    iput p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I

    return v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I

    return v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstLineIndentType:I

    return v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method private onShowFieldValueError(II)V
    .registers 9
    .parameter "nMin"
    .parameter "nMax"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, formattedString:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 550
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mToastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_3d

    .line 552
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->getBaseContext()Landroid/content/Context;

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

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mToastMsg:Landroid/widget/Toast;

    .line 553
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mToastMsg:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 557
    :goto_37
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 559
    :cond_3c
    return-void

    .line 556
    :cond_3d
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mToastMsg:Landroid/widget/Toast;

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
.method public OnLineSpaceDlg(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, alt_bld:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 358
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->m_LinespaceList:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I

    new-instance v3, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity$6;-><init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceDlg:Landroid/app/AlertDialog;

    .line 387
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceDlg:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 388
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 389
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 91
    const-string v0, "ParagraphActivity"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onBackPressed()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->PrepareResources()V

    .line 224
    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->setTitle(I)V

    .line 225
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 85
    const-string v0, "ParagraphActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/infraware/common/util/CMLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-super {p0}, Lcom/infraware/common/baseactivity/BaseActivity;->onDestroy()V

    .line 87
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 4
    .parameter "nLocale"

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->PrepareResources()V

    .line 564
    const v0, 0x7f080186

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->setTitle(I)V

    .line 566
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 567
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceDlg:Landroid/app/AlertDialog;

    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 568
    :cond_1d
    return-void
.end method
