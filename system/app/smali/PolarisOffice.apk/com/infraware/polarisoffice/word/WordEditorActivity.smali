.class public Lcom/infraware/polarisoffice/word/WordEditorActivity;
.super Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.source "WordEditorActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$WordEditorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/infraware/office/basetoolbar/ToolbarConfig;
.implements Lcom/infraware/office/evengine/E$EV_BOOKMARK_EDITOR_MODE;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field hyperlinkWatcher:Landroid/text/TextWatcher;

.field private mInsertHyperlink:Landroid/app/AlertDialog;

.field private mReflowText:Ljava/lang/Boolean;

.field private mShowImeOfNewDocument:Ljava/lang/Boolean;

.field private m_ToastMsg:Landroid/widget/Toast;

.field private m_nHyperMaxLength:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;-><init>()V

    .line 43
    const-string v0, "WordEditorActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->LOG_CAT:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    .line 46
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mReflowText:Ljava/lang/Boolean;

    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mShowImeOfNewDocument:Ljava/lang/Boolean;

    .line 48
    iput-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 49
    const/16 v0, 0x2b5

    iput v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_nHyperMaxLength:I

    .line 629
    new-instance v0, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;-><init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->hyperlinkWatcher:Landroid/text/TextWatcher;

    .line 40
    return-void
.end method

.method private OnLocaleAlertDialog()V
    .registers 5

    .prologue
    const v3, 0x7f08013f

    .line 96
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 97
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetHyperLinkInfo_Editor()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    .line 98
    .local v0, hyperlinkInfo:Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    if-eqz v0, :cond_1b

    iget v1, v0, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    if-nez v1, :cond_5a

    .line 99
    :cond_1b
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    const v2, 0x7f080188

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 103
    :goto_23
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 106
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 107
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 109
    .end local v0           #hyperlinkInfo:Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    :cond_59
    return-void

    .line 101
    .restart local v0       #hyperlinkInfo:Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    :cond_5a
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    goto :goto_23
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/word/WordEditorActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_nHyperMaxLength:I

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onToastMessage()V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/word/WordEditorActivity;C)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->isCarriageReturn(C)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method private isCarriageReturn(C)Z
    .registers 3
    .parameter "ch"

    .prologue
    .line 716
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_6

    .line 718
    const/4 v0, 0x1

    .line 720
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private onChangeOptionMenu()V
    .registers 4

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mbMenuChange:Z

    if-eqz v0, :cond_3f

    .line 206
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_3f

    .line 207
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 208
    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEV_VIEW_MODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 210
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b000e

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 212
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c032f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080284

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 217
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mbMenuChange:Z

    .line 220
    :cond_3f
    return-void

    .line 215
    :cond_40
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b000f

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_3c
.end method

.method private onToastMessage()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 703
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 704
    .local v1, formattedString:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_nHyperMaxLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, errMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v2, :cond_2b

    .line 707
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 711
    :goto_25
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 712
    return-void

    .line 709
    :cond_2b
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_25
.end method

.method private onUpdateOptionsMenu()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 223
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEV_VIEW_MODE:I

    if-ne v0, v2, :cond_c

    .line 321
    :cond_b
    :goto_b
    return-void

    .line 226
    :cond_c
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    .line 227
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPCellStatusInfo()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mCellStatus:I

    .line 229
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_36

    .line 230
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_36

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/infraware/common/util/FileUtils;->isCacheFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 231
    :cond_36
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/infraware/common/util/FileUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_109

    .line 232
    :cond_3e
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bFileSave:Z

    .line 236
    :goto_40
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_10d

    .line 237
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bFileSaveAs:Z

    .line 241
    :goto_4a
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eq v0, v2, :cond_66

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_66

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_66

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBookmarkCount_Editor()I

    move-result v0

    if-lez v0, :cond_111

    .line 242
    :cond_66
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordInsertBookmark:Z

    .line 246
    :goto_68
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7f

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-ne v0, v4, :cond_115

    .line 247
    :cond_7f
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_115

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_115

    .line 249
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatFont:Z

    .line 250
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatParagraph:Z

    .line 258
    :goto_93
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11b

    .line 259
    :cond_a0
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatBullets:Z

    .line 263
    :goto_a2
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mReflowText:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 264
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatColumns:Z

    .line 268
    :goto_ac
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eq v0, v2, :cond_124

    .line 269
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    packed-switch v0, :pswitch_data_13e

    .line 277
    :pswitch_bb
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatShape:Z

    .line 284
    :goto_bd
    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mCellStatus:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_127

    .line 285
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatInsert:Z

    .line 289
    :goto_c5
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_d5

    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_12a

    .line 291
    :cond_d5
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatSelect:Z

    .line 292
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatSplit:Z

    .line 293
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatFills:Z

    .line 302
    :goto_db
    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mCellStatus:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_e7

    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mCellStatus:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_131

    .line 303
    :cond_e7
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatDelete:Z

    .line 307
    :goto_e9
    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mCellStatus:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_134

    .line 308
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatMerge:Z

    .line 312
    :goto_f1
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v0

    iget v0, v0, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->bBGLoad:I

    if-ne v0, v2, :cond_137

    .line 313
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bViewReflow:Z

    .line 317
    :goto_fd
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetHyperLinkInfo_Editor()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v0

    if-nez v0, :cond_13a

    .line 318
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordInsertHyperLink:Z

    goto/16 :goto_b

    .line 234
    :cond_109
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bFileSave:Z

    goto/16 :goto_40

    .line 239
    :cond_10d
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bFileSaveAs:Z

    goto/16 :goto_4a

    .line 244
    :cond_111
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordInsertBookmark:Z

    goto/16 :goto_68

    .line 254
    :cond_115
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatFont:Z

    .line 255
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatParagraph:Z

    goto/16 :goto_93

    .line 261
    :cond_11b
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatBullets:Z

    goto :goto_a2

    .line 266
    :cond_11e
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatColumns:Z

    goto :goto_ac

    .line 274
    :pswitch_121
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatShape:Z

    goto :goto_bd

    .line 282
    :cond_124
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatShape:Z

    goto :goto_bd

    .line 287
    :cond_127
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatInsert:Z

    goto :goto_c5

    .line 297
    :cond_12a
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatSelect:Z

    .line 298
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatSplit:Z

    .line 299
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatFills:Z

    goto :goto_db

    .line 305
    :cond_131
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatDelete:Z

    goto :goto_e9

    .line 310
    :cond_134
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordFormatMerge:Z

    goto :goto_f1

    .line 315
    :cond_137
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bViewReflow:Z

    goto :goto_fd

    .line 320
    :cond_13a
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->m_bWordInsertHyperLink:Z

    goto/16 :goto_b

    .line 269
    :pswitch_data_13e
    .packed-switch 0x6
        :pswitch_121
        :pswitch_121
        :pswitch_bb
        :pswitch_121
    .end packed-switch
.end method


# virtual methods
.method public ActivityMsgProc(IIIIILjava/lang/Object;)I
    .registers 13
    .parameter "msg"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "p4"
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 651
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->isShowSearchBar()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    .line 698
    :goto_9
    return v2

    .line 653
    :cond_a
    sparse-switch p1, :sswitch_data_100

    .line 696
    :goto_d
    invoke-super/range {p0 .. p6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    move-result v2

    goto :goto_9

    .line 655
    :sswitch_12
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_30

    iget v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEV_VIEW_MODE:I

    if-nez v2, :cond_30

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->haveHardWareKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 656
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 657
    :cond_30
    invoke-super/range {p0 .. p6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    move v2, v3

    .line 698
    goto :goto_9

    .line 660
    :sswitch_35
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 661
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 662
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 664
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->GetOpenType()I

    move-result v2

    if-ne v2, v3, :cond_78

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mShowImeOfNewDocument:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_78

    .line 665
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_78

    .line 666
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mShowImeOfNewDocument:Ljava/lang/Boolean;

    .line 667
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x213

    invoke-virtual {v2, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 672
    :cond_78
    iget v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEV_VIEW_MODE:I

    if-nez v2, :cond_af

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_af

    .line 673
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ne v2, v4, :cond_94

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-eq v2, v4, :cond_c4

    .line 674
    :cond_94
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_af

    .line 675
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_b6

    .line 676
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 694
    :cond_af
    :goto_af
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_d

    .line 678
    :cond_b6
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->haveHardWareKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_af

    .line 679
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_af

    .line 683
    :cond_c4
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ne v2, v4, :cond_d4

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v4, :cond_af

    .line 684
    :cond_d4
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_e8

    .line 685
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_af

    .line 687
    :cond_e8
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ne v2, v4, :cond_f8

    .line 688
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_af

    .line 690
    :cond_f8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_af

    .line 653
    :sswitch_data_100
    .sparse-switch
        0x5 -> :sswitch_35
        0x9 -> :sswitch_12
    .end sparse-switch
.end method

.method protected ChangeViewMode(I)V
    .registers 3
    .parameter "EV_VIEW_MODE"

    .prologue
    .line 80
    iget v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEV_VIEW_MODE:I

    if-ne v0, p1, :cond_5

    .line 84
    :goto_4
    return-void

    .line 83
    :cond_5
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ChangeViewMode(I)V

    goto :goto_4
.end method

.method protected NewDocumentMode()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->haveHardWareKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 73
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->NewDocumentMode()V

    .line 76
    :cond_a
    :goto_a
    return-void

    .line 74
    :cond_b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_a

    .line 75
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_a
.end method

.method protected OnColumnsActivity()V
    .registers 4

    .prologue
    .line 358
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/word/ColumnsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    .local v0, columnsIntent:Landroid/content/Intent;
    const-string v1, "COLUMN_NUMBER"

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 361
    return-void
.end method

.method public OnIMEInsertMode()V
    .registers 1

    .prologue
    .line 126
    return-void
.end method

.method protected OnInsertBookmarkActivity()V
    .registers 3

    .prologue
    .line 352
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/word/BookmarkActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .local v0, bookmarkIntent:Landroid/content/Intent;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 354
    return-void
.end method

.method protected OnInsertHyperlink()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030004

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 539
    .local v6, view:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 540
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 542
    const/4 v7, 0x2

    new-array v1, v7, [Landroid/text/InputFilter;

    .line 543
    .local v1, filters:[Landroid/text/InputFilter;
    new-instance v7, Lcom/infraware/polarisoffice/word/WordEditorActivity$3;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity$3;-><init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    aput-object v7, v1, v10

    .line 559
    const/4 v7, 0x1

    new-instance v8, Lcom/infraware/polarisoffice/word/WordEditorActivity$4;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity$4;-><init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    aput-object v8, v1, v7

    .line 581
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 583
    .local v3, osVer:Ljava/lang/String;
    const v7, 0x7f0c0008

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 584
    .local v4, textEditText:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->hyperlinkWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 586
    const v7, 0x7f0c000a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 588
    .local v5, urlEditText:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->hyperlinkWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 589
    new-instance v7, Lcom/infraware/polarisoffice/word/WordEditorActivity$5;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity$5;-><init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 596
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 597
    iget-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v7}, Lcom/infraware/office/evengine/EvInterface;->IGetHyperLinkInfo_Editor()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v2

    .line 598
    .local v2, hyperlinkInfo:Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;
    iget v7, v2, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->bUse:I

    if-nez v7, :cond_a8

    .line 599
    const v7, 0x7f080188

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 606
    :goto_60
    iget-object v7, v2, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->szHyperText:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 608
    const v7, 0x7f080043

    new-instance v8, Lcom/infraware/polarisoffice/word/WordEditorActivity$6;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity$6;-><init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    const v7, 0x7f080045

    new-instance v8, Lcom/infraware/polarisoffice/word/WordEditorActivity$7;

    invoke-direct {v8, p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity$7;-><init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    .line 621
    iget-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 622
    iget-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 623
    iget-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 625
    iget-object v7, v2, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->szHyperText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_a7

    .line 626
    iget-object v7, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 627
    :cond_a7
    return-void

    .line 603
    :cond_a8
    const v7, 0x7f080189

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 604
    iget-object v7, v2, Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;->szHyperLink:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_60
.end method

.method public OnInsertTableMode()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 121
    return-void
.end method

.method public OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 3
    .parameter "param"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 114
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 115
    return-void
.end method

.method protected OnReflowText()V
    .registers 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mReflowText:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 525
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mReflowText:Ljava/lang/Boolean;

    .line 526
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISetPrintMode()V

    .line 533
    :goto_14
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mReflowText:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnChangeToolbarBtn(ILjava/lang/Boolean;)V

    .line 534
    return-void

    .line 529
    :cond_1e
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mReflowText:Ljava/lang/Boolean;

    .line 530
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISetWebMode()V

    goto :goto_14
.end method

.method public OnResultColumnsActivity(Landroid/content/Intent;)V
    .registers 6
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 377
    const-string v2, "COLUMN_NUMBER"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 378
    .local v1, columnNum:I
    const-string v2, "APPLY_TO_ALL"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 379
    .local v0, allPages:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2, v1, v0}, Lcom/infraware/office/evengine/EvInterface;->ISetColumn(II)V

    .line 380
    return-void
.end method

.method public OnResultInsertBookmarkActivity(Landroid/content/Intent;)V
    .registers 7
    .parameter "data"

    .prologue
    .line 364
    const-string v2, "BOOKMARKMODE"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 365
    .local v0, bookmarkMode:I
    const-string v2, "BOOKMAKRNAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, strBookmark:Ljava/lang/String;
    const-string v2, "WordEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnResultBookmarkActivity bookmarkMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v2, "WordEditorActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnResultBookmarkActivity strBookmark = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/infraware/common/util/CMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    packed-switch v0, :pswitch_data_40

    .line 374
    :goto_38
    return-void

    .line 371
    :pswitch_39
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2, v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IBookmarkEditor(ILjava/lang/String;)V

    goto :goto_38

    .line 369
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_39
    .end packed-switch
.end method

.method public OnToolbar_BackgroundColor(III)V
    .registers 15
    .parameter "backColor"
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 384
    if-ne p1, v1, :cond_8

    .line 385
    invoke-virtual {p0, p2, p3}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnMoreColors(II)V

    .line 398
    :cond_7
    :goto_7
    return-void

    .line 388
    :cond_8
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 389
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1d

    .line 390
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_23

    .line 391
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v1, p1, p1}, Lcom/infraware/office/evengine/EvInterface;->ISetColors(III)V

    goto :goto_7

    .line 393
    :cond_23
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_35

    .line 394
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    .line 395
    :cond_35
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    if-nez p1, :cond_3a

    const/4 v1, 0x2

    :cond_3a
    move v2, p1

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v3

    move v10, v3

    invoke-virtual/range {v0 .. v10}, Lcom/infraware/office/evengine/EvInterface;->ISetObjectAttribute(IIIIIIIIII)V

    goto :goto_7
.end method

.method public OnToolbar_CmdBackgroundColorUI()I
    .registers 5

    .prologue
    .line 466
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_10

    .line 467
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_19

    .line 468
    :cond_10
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetBorderProperty()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    .line 469
    .local v0, borderData:Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
    iget v2, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nCellColor:I

    .line 476
    .end local v0           #borderData:Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
    :goto_18
    return v2

    .line 471
    :cond_19
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2b

    .line 472
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_34

    .line 473
    :cond_2b
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v1

    .line 474
    .local v1, graphicAtt:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    iget v2, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nFillColor:I

    goto :goto_18

    .line 476
    .end local v1           #graphicAtt:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    :cond_34
    const/4 v2, -0x1

    goto :goto_18
.end method

.method public OnToolbar_CmdInsertUI(Ljava/lang/Boolean;)[I
    .registers 10
    .parameter "bCamera"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 446
    const/4 v3, 0x0

    .line 447
    .local v3, hyperlink:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetHyperLinkInfo_Editor()Lcom/infraware/office/evengine/EV$HYPERLINK_INFO;

    move-result-object v4

    if-nez v4, :cond_d

    .line 448
    const/4 v3, 0x1

    .line 450
    :cond_d
    const/4 v0, 0x1

    .line 451
    .local v0, boolmark:I
    iget-object v4, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v4, v4, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eq v4, v6, :cond_28

    iget-object v4, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v4, v4, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eq v4, v5, :cond_28

    iget-object v4, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v4, v4, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eq v4, v7, :cond_28

    iget-object v4, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v4}, Lcom/infraware/office/evengine/EvInterface;->IGetBookmarkCount_Editor()I

    move-result v4

    if-lez v4, :cond_29

    .line 452
    :cond_28
    const/4 v0, 0x0

    .line 454
    :cond_29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 455
    const/4 v4, 0x5

    new-array v1, v4, [I

    aput v3, v1, v5

    aput v0, v1, v7

    .local v1, btnState:[I
    move-object v2, v1

    .line 460
    .end local v1           #btnState:[I
    .local v2, btnState:[I
    :goto_37
    return-object v2

    .line 459
    .end local v2           #btnState:[I
    :cond_38
    const/4 v4, 0x4

    new-array v1, v4, [I

    aput v3, v1, v6

    aput v0, v1, v5

    .restart local v1       #btnState:[I
    move-object v2, v1

    .line 460
    .end local v1           #btnState:[I
    .restart local v2       #btnState:[I
    goto :goto_37
.end method

.method public OnToolbar_Indent(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 404
    packed-switch p1, :pswitch_data_18

    .line 412
    :goto_8
    return-void

    .line 406
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IIndentation(I)V

    goto :goto_8

    .line 409
    :pswitch_10
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/office/evengine/EvInterface;->IIndentation(I)V

    goto :goto_8

    .line 404
    nop

    :pswitch_data_18
    .packed-switch 0x7f0c029a
        :pswitch_9
        :pswitch_10
    .end packed-switch
.end method

.method public OnToolbar_Insert(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 424
    packed-switch p1, :pswitch_data_24

    .line 442
    :goto_9
    return-void

    .line 426
    :pswitch_a
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onInsertImageActivity(Z)V

    goto :goto_9

    .line 429
    :pswitch_e
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    .line 430
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onCameraActivity()V

    goto :goto_9

    .line 433
    :pswitch_17
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnInsertHyperlink()V

    goto :goto_9

    .line 436
    :pswitch_1b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnInsertBookmarkActivity()V

    goto :goto_9

    .line 439
    :pswitch_1f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnInsertTableActivity()V

    goto :goto_9

    .line 424
    nop

    :pswitch_data_24
    .packed-switch 0x7f0c029d
        :pswitch_a
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_e
    .end packed-switch
.end method

.method public OnToolbar_ReflowText()V
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 417
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnReflowText()V

    .line 418
    return-void
.end method

.method public OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 9
    .parameter "toolbarBtnId"
    .parameter "update"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 482
    .local v0, bEnable:Ljava/lang/Boolean;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 483
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    .line 485
    :cond_15
    packed-switch p1, :pswitch_data_8e

    .line 515
    :pswitch_18
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 519
    :goto_20
    return-object v0

    .line 487
    :pswitch_21
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v1, :cond_34

    .line 488
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_34

    .line 489
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-ne v1, v5, :cond_39

    .line 490
    :cond_34
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20

    .line 492
    :cond_39
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 493
    goto :goto_20

    .line 496
    :pswitch_3e
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_5f

    .line 497
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_5f

    .line 498
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eq v1, v5, :cond_5f

    .line 499
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_64

    .line 500
    :cond_5f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20

    .line 502
    :cond_64
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 503
    goto :goto_20

    .line 505
    :pswitch_69
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_79

    .line 506
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_7e

    .line 507
    :cond_79
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_20

    .line 509
    :cond_7e
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 510
    goto :goto_20

    .line 512
    :pswitch_83
    iget-object v1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mReflowText:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnChangeToolbarBtn(ILjava/lang/Boolean;)V

    goto :goto_20

    .line 485
    nop

    :pswitch_data_8e
    .packed-switch 0xb
        :pswitch_21
        :pswitch_18
        :pswitch_83
        :pswitch_18
        :pswitch_18
        :pswitch_3e
        :pswitch_3e
        :pswitch_69
    .end packed-switch
.end method

.method public OnWordCellDeleteMode()V
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 137
    return-void
.end method

.method public OnWordCellInsertMode()V
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 132
    return-void
.end method

.method public OnWordCellSeparateMode(I)V
    .registers 6
    .parameter "nResult"

    .prologue
    .line 156
    if-nez p1, :cond_31

    .line 158
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080024

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 160
    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 161
    const v2, 0x7f080043

    new-instance v3, Lcom/infraware/polarisoffice/word/WordEditorActivity$2;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity$2;-><init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 165
    .local v1, dlg:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 166
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 168
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_31
    return-void
.end method

.method public OnWordInsertStringMode()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 142
    return-void
.end method

.method public OnWordMultiSelectCellMode()V
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 152
    return-void
.end method

.method public OnWordOneSelectCellMode()V
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 147
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 336
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    .line 337
    sparse-switch p1, :sswitch_data_12

    .line 348
    :cond_9
    :goto_9
    return-void

    .line 339
    :sswitch_a
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnResultInsertBookmarkActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 342
    :sswitch_e
    invoke-virtual {p0, p3}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnResultColumnsActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 337
    :sswitch_data_12
    .sparse-switch
        0x8 -> :sswitch_a
        0x10 -> :sswitch_e
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 54
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->setContentView(I)V

    .line 56
    new-instance v0, Lcom/infraware/polarisoffice/word/WordEditToolbar;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/word/WordEditToolbar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 57
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const-string v1, "WordToolbar"

    sget-object v2, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mBaseWordToolBar:[I

    invoke-virtual {v0, p0, v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetInit(Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;Ljava/lang/String;[I)V

    .line 59
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, p0}, Lcom/infraware/office/baseframe/EvBaseView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 61
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->GetOpenType()I

    move-result v0

    if-ne v0, v3, :cond_37

    .line 62
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 63
    :cond_37
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 325
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 326
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 173
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mMenu:Landroid/view/Menu;

    .line 174
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onChangeOptionMenu()V

    .line 175
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mbMenuChange:Z

    .line 89
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onChangeOptionMenu()V

    .line 90
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->OnLocaleAlertDialog()V

    .line 92
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onLocaleChange(I)V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mbMenuOpen:Z

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 199
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 201
    :goto_e
    return v0

    .line 193
    :pswitch_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onSubMenu(I)V

    .line 201
    :goto_16
    const/4 v0, 0x1

    goto :goto_e

    .line 196
    :pswitch_18
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onCustomToolbarActivity()V

    goto :goto_16

    .line 190
    :pswitch_data_1c
    .packed-switch 0x7f0c0336
        :pswitch_f
        :pswitch_f
        :pswitch_18
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 182
    :cond_9
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onChangeOptionMenu()V

    .line 183
    invoke-direct {p0}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->onUpdateOptionsMenu()V

    .line 184
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setEvListener()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 68
    return-void
.end method
