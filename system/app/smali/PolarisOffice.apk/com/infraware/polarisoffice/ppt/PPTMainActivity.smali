.class public Lcom/infraware/polarisoffice/ppt/PPTMainActivity;
.super Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.source "PPTMainActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$PptEditorListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/infraware/office/basetoolbar/ToolbarConfig;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field private m_ToastMsg:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;-><init>()V

    .line 45
    const-string v0, "PPTMainActivity"

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->LOG_CAT:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 42
    return-void
.end method

.method private OnFreeDrawSlideShowActivity()V
    .registers 3

    .prologue
    .line 646
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 648
    return-void
.end method

.method private OnSlideShowActivity()V
    .registers 3

    .prologue
    .line 641
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/ppt/SlideShowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 642
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 643
    return-void
.end method

.method private onChangeOptionMenu()V
    .registers 4

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mbMenuChange:Z

    if-eqz v0, :cond_3f

    .line 200
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_3f

    .line 201
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 202
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEV_VIEW_MODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 204
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b000e

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    const v0, 0x7f08030e

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FV09"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 206
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0c032f

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f080284

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 212
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mbMenuChange:Z

    .line 215
    :cond_3f
    return-void

    .line 210
    :cond_40
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0b0007

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_3c
.end method

.method private onToastMessage(Ljava/lang/String;)V
    .registers 5
    .parameter "strMsg"

    .prologue
    const/4 v2, 0x0

    .line 702
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_ToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_1c

    .line 703
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_ToastMsg:Landroid/widget/Toast;

    .line 706
    :goto_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_ToastMsg:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 707
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 708
    return-void

    .line 705
    :cond_1c
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_ToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private onUpdateOptionsMenu()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 218
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEV_VIEW_MODE:I

    if-ne v0, v2, :cond_c

    .line 302
    :cond_b
    :goto_b
    return-void

    .line 221
    :cond_c
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    .line 222
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPCellStatusInfo()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mCellStatus:I

    .line 224
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_36

    .line 225
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_36

    .line 226
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/infraware/common/util/FileUtils;->isCacheFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 227
    :cond_36
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mstrOpenFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/infraware/common/util/FileUtils;->isExistFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 228
    :cond_3e
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bFileSave:Z

    .line 232
    :goto_40
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_d7

    .line 233
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bFileSaveAs:Z

    .line 237
    :goto_4a
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_61

    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-ne v0, v4, :cond_db

    .line 238
    :cond_61
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_db

    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_db

    .line 240
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatFont:Z

    .line 241
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatParagraph:Z

    .line 249
    :goto_75
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e0

    .line 250
    :cond_82
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatBullets:Z

    .line 254
    :goto_84
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eq v0, v2, :cond_e6

    .line 255
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    packed-switch v0, :pswitch_data_fe

    .line 263
    :pswitch_93
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatShape:Z

    .line 270
    :goto_95
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mCellStatus:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_e9

    .line 271
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatInsert:Z

    .line 275
    :goto_9d
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_ad

    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_ec

    .line 277
    :cond_ad
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatSelect:Z

    .line 278
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatSplit:Z

    .line 279
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatFills:Z

    .line 288
    :goto_b3
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mCellStatus:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_bf

    iget v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mCellStatus:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_f3

    .line 289
    :cond_bf
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatDelete:Z

    .line 293
    :goto_c1
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mCellStatus:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_f6

    .line 294
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatMerge:Z

    .line 298
    :goto_c9
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getOrientation()I

    move-result v0

    if-ne v0, v2, :cond_f9

    .line 299
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bViewMode:Z

    goto/16 :goto_b

    .line 230
    :cond_d3
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bFileSave:Z

    goto/16 :goto_40

    .line 235
    :cond_d7
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bFileSaveAs:Z

    goto/16 :goto_4a

    .line 245
    :cond_db
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatFont:Z

    .line 246
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatParagraph:Z

    goto :goto_75

    .line 252
    :cond_e0
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatBullets:Z

    goto :goto_84

    .line 260
    :pswitch_e3
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatShape:Z

    goto :goto_95

    .line 268
    :cond_e6
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatShape:Z

    goto :goto_95

    .line 273
    :cond_e9
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatInsert:Z

    goto :goto_9d

    .line 283
    :cond_ec
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatSelect:Z

    .line 284
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatSplit:Z

    .line 285
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatFills:Z

    goto :goto_b3

    .line 291
    :cond_f3
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatDelete:Z

    goto :goto_c1

    .line 296
    :cond_f6
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bSlideFormatMerge:Z

    goto :goto_c9

    .line 301
    :cond_f9
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->m_bViewMode:Z

    goto/16 :goto_b

    .line 255
    nop

    :pswitch_data_fe
    .packed-switch 0x6
        :pswitch_e3
        :pswitch_e3
        :pswitch_93
        :pswitch_e3
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

    .line 658
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->isShowSearchBar()Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    .line 698
    :goto_9
    return v2

    .line 659
    :cond_a
    sparse-switch p1, :sswitch_data_de

    .line 696
    :goto_d
    invoke-super/range {p0 .. p6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    move-result v2

    goto :goto_9

    .line 661
    :sswitch_12
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_30

    iget v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEV_VIEW_MODE:I

    if-nez v2, :cond_30

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->haveHardWareKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 662
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 663
    :cond_30
    invoke-super/range {p0 .. p6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ActivityMsgProc(IIIIILjava/lang/Object;)I

    :goto_33
    move v2, v3

    .line 698
    goto :goto_9

    .line 666
    :sswitch_35
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onInsertImageActivity(Z)V

    goto :goto_33

    .line 669
    :sswitch_39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 670
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 671
    iget v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEV_VIEW_MODE:I

    if-nez v2, :cond_8c

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8c

    .line 672
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 673
    .local v0, display:Landroid/view/Display;
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ne v2, v4, :cond_71

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-eq v2, v4, :cond_a1

    .line 674
    :cond_71
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-eq v2, v4, :cond_8c

    .line 675
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_93

    .line 676
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 694
    .end local v0           #display:Landroid/view/Display;
    :cond_8c
    :goto_8c
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_d

    .line 678
    .restart local v0       #display:Landroid/view/Display;
    :cond_93
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->haveHardWareKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8c

    .line 679
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_8c

    .line 683
    :cond_a1
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-ne v2, v4, :cond_b1

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mContentRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v4, :cond_8c

    .line 684
    :cond_b1
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_c5

    .line 685
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_8c

    .line 687
    :cond_c5
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ne v2, v4, :cond_d5

    .line 688
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_8c

    .line 690
    :cond_d5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    goto :goto_8c

    .line 659
    nop

    :sswitch_data_de
    .sparse-switch
        0x5 -> :sswitch_39
        0x9 -> :sswitch_12
        0xe -> :sswitch_35
    .end sparse-switch
.end method

.method protected ChangeViewMode(I)V
    .registers 3
    .parameter "EV_VIEW_MODE"

    .prologue
    .line 306
    iget v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEV_VIEW_MODE:I

    if-ne v0, p1, :cond_5

    .line 310
    :goto_4
    return-void

    .line 309
    :cond_5
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->ChangeViewMode(I)V

    goto :goto_4
.end method

.method public OnIMEInsertMode()V
    .registers 1

    .prologue
    .line 327
    return-void
.end method

.method public OnInsertTableMode()V
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 322
    return-void
.end method

.method public OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .registers 3
    .parameter "param"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 315
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnObjectPoints(Lcom/infraware/office/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 316
    return-void
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 552
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "bBitmapIamage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptOnDrawSlidenote(I)V
    .registers 2
    .parameter "pageNum"

    .prologue
    .line 559
    return-void
.end method

.method public OnPptSlideDelete()V
    .registers 1

    .prologue
    .line 348
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .registers 1

    .prologue
    .line 344
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .registers 1

    .prologue
    .line 340
    return-void
.end method

.method public OnPptSlideexInsert()V
    .registers 1

    .prologue
    .line 336
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .registers 1

    .prologue
    .line 332
    return-void
.end method

.method protected OnSlideAddLayoutActivity()V
    .registers 3

    .prologue
    .line 652
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 653
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 654
    return-void
.end method

.method public OnToolbar_BackgroundColor(III)V
    .registers 15
    .parameter "backColor"
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 471
    if-ne p1, v1, :cond_8

    .line 472
    invoke-virtual {p0, p2, p3}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnMoreColors(II)V

    .line 485
    :cond_7
    :goto_7
    return-void

    .line 475
    :cond_8
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 476
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_1d

    .line 477
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_24

    .line 478
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetColors(III)V

    goto :goto_7

    .line 480
    :cond_24
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_36

    .line 481
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v0, v0, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v0, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_7

    .line 482
    :cond_36
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    if-nez p1, :cond_3b

    const/4 v1, 0x2

    :cond_3b
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

.method public OnToolbar_BorderColor(III)V
    .registers 7
    .parameter "borderColor"
    .parameter "toolbarId"
    .parameter "titleId"

    .prologue
    .line 489
    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 490
    invoke-virtual {p0, p2, p3}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnMoreColors(II)V

    .line 496
    :goto_6
    return-void

    .line 493
    :cond_7
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 494
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetColors(III)V

    goto :goto_6
.end method

.method public OnToolbar_CmdBackgroundColorUI()I
    .registers 5

    .prologue
    .line 520
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_10

    .line 521
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_19

    .line 522
    :cond_10
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetBorderProperty()Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;

    move-result-object v0

    .line 523
    .local v0, borderData:Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
    iget v2, v0, Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;->nCellColor:I

    .line 530
    .end local v0           #borderData:Lcom/infraware/office/evengine/EV$GUI_BORDER_EVENT;
    :goto_18
    return v2

    .line 525
    :cond_19
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2b

    .line 526
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_34

    .line 527
    :cond_2b
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v2}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v1

    .line 528
    .local v1, graphicAtt:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    iget v2, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nFillColor:I

    goto :goto_18

    .line 530
    .end local v1           #graphicAtt:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    :cond_34
    const/4 v2, -0x1

    goto :goto_18
.end method

.method public OnToolbar_CmdBorderColorUI()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 535
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_11

    .line 536
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_12

    .line 546
    :cond_11
    :goto_11
    return v1

    .line 539
    :cond_12
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2e

    .line 540
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2e

    .line 541
    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v2, v2, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v2, v2, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_11

    .line 542
    :cond_2e
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPGrapAttrInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    move-result-object v0

    .line 543
    .local v0, graphicAtt:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->nBorderColor:I

    goto :goto_11
.end method

.method public OnToolbar_CmdFontSizeUI()I
    .registers 3

    .prologue
    .line 500
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v0

    .line 502
    .local v0, fontInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    iget v1, v0, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFSize:I

    sparse-switch v1, :sswitch_data_24

    .line 514
    const v1, 0x7f0c02b2

    :goto_e
    return v1

    .line 504
    :sswitch_f
    const v1, 0x7f0c02ad

    goto :goto_e

    .line 506
    :sswitch_13
    const v1, 0x7f0c02ae

    goto :goto_e

    .line 508
    :sswitch_17
    const v1, 0x7f0c02af

    goto :goto_e

    .line 510
    :sswitch_1b
    const v1, 0x7f0c02b0

    goto :goto_e

    .line 512
    :sswitch_1f
    const v1, 0x7f0c02b1

    goto :goto_e

    .line 502
    nop

    :sswitch_data_24
    .sparse-switch
        0xc -> :sswitch_f
        0xe -> :sswitch_13
        0x14 -> :sswitch_17
        0x20 -> :sswitch_1b
        0x2c -> :sswitch_1f
    .end sparse-switch
.end method

.method public OnToolbar_FontSize(I)V
    .registers 12
    .parameter "toolbarBtnId"

    .prologue
    const/4 v4, 0x0

    .line 359
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 361
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IGetFontAttInfo_Editor()Lcom/infraware/office/evengine/EV$FONT_INFO;

    move-result-object v9

    .line 362
    .local v9, AttInfo:Lcom/infraware/office/evengine/EV$FONT_INFO;
    const/4 v2, 0x0

    .line 363
    .local v2, nFsize:I
    packed-switch p1, :pswitch_data_34

    .line 384
    :goto_10
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x0

    const/4 v3, 0x4

    iget v5, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFColor:I

    iget v6, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nBColor:I

    move v7, v4

    move v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/infraware/office/evengine/EvInterface;->ISetFontAttribute(Ljava/lang/String;IIIIIII)V

    .line 385
    :goto_1d
    return-void

    .line 365
    :pswitch_1e
    const/16 v2, 0xc

    .line 366
    goto :goto_10

    .line 368
    :pswitch_21
    const/16 v2, 0xe

    .line 369
    goto :goto_10

    .line 371
    :pswitch_24
    const/16 v2, 0x14

    .line 372
    goto :goto_10

    .line 374
    :pswitch_27
    const/16 v2, 0x20

    .line 375
    goto :goto_10

    .line 377
    :pswitch_2a
    const/16 v2, 0x2c

    .line 378
    goto :goto_10

    .line 380
    :pswitch_2d
    iget v0, v9, Lcom/infraware/office/evengine/EV$FONT_INFO;->nFSize:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnFontSizeOthers(I)V

    goto :goto_1d

    .line 363
    nop

    :pswitch_data_34
    .packed-switch 0x7f0c02ad
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public OnToolbar_Insert(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    const/4 v1, 0x0

    .line 449
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 451
    packed-switch p1, :pswitch_data_28

    .line 467
    :goto_9
    return-void

    .line 453
    :pswitch_a
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onInsertImageActivity(Z)V

    goto :goto_9

    .line 456
    :pswitch_e
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    .line 457
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onCameraActivity()V

    goto :goto_9

    .line 460
    :pswitch_17
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IInsertTextBox()V

    .line 461
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    goto :goto_9

    .line 464
    :pswitch_23
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnInsertTableActivity()V

    goto :goto_9

    .line 451
    nop

    :pswitch_data_28
    .packed-switch 0x7f0c02b4
        :pswitch_a
        :pswitch_17
        :pswitch_23
        :pswitch_e
    .end packed-switch
.end method

.method public OnToolbar_Shape(I)V
    .registers 4
    .parameter "toolbarBtnId"

    .prologue
    .line 419
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, nShapeID:I
    packed-switch p1, :pswitch_data_1e

    .line 445
    :goto_9
    return-void

    .line 424
    :pswitch_a
    const/4 v0, 0x1

    .line 444
    :goto_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->IInsertShape(I)V

    goto :goto_9

    .line 427
    :pswitch_11
    const/16 v0, 0xf

    .line 428
    goto :goto_b

    .line 430
    :pswitch_14
    const/4 v0, 0x4

    .line 431
    goto :goto_b

    .line 433
    :pswitch_16
    const/4 v0, 0x5

    .line 434
    goto :goto_b

    .line 436
    :pswitch_18
    const/4 v0, 0x7

    .line 437
    goto :goto_b

    .line 439
    :pswitch_1a
    const/16 v0, 0x8

    .line 440
    goto :goto_b

    .line 422
    nop

    :pswitch_data_1e
    .packed-switch 0x7f0c02b9
        :pswitch_a
        :pswitch_11
        :pswitch_14
        :pswitch_16
        :pswitch_18
        :pswitch_1a
    .end packed-switch
.end method

.method public OnToolbar_Slide(I)V
    .registers 6
    .parameter "toolbarBtnID"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->updateCaretPos()V

    .line 391
    packed-switch p1, :pswitch_data_3e

    .line 415
    :goto_a
    return-void

    .line 393
    :pswitch_b
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnSlideAddLayoutActivity()V

    goto :goto_a

    .line 396
    :pswitch_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    .line 397
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, v2}, Lcom/infraware/office/baseframe/EvBaseView;->onShowIme(Z)V

    goto :goto_a

    .line 400
    :pswitch_1a
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    goto :goto_a

    .line 403
    :pswitch_21
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    goto :goto_a

    .line 406
    :pswitch_28
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    goto :goto_a

    .line 409
    :pswitch_2f
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 410
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnFreeDrawSlideShowActivity()V

    goto :goto_a

    .line 412
    :cond_39
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnSlideShowActivity()V

    goto :goto_a

    .line 391
    nop

    :pswitch_data_3e
    .packed-switch 0x7f0c02da
        :pswitch_b
        :pswitch_f
        :pswitch_1a
        :pswitch_21
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method

.method public OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 9
    .parameter "toolbarBtnId"
    .parameter "update"

    .prologue
    const/4 v2, 0x6

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 563
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 564
    .local v0, bEnable:Ljava/lang/Boolean;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 565
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1}, Lcom/infraware/office/evengine/EvInterface;->IGetBWPOpInfo_Editor()Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    .line 567
    :cond_16
    sparse-switch p1, :sswitch_data_9e

    .line 598
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-super {p0, p1, v1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->OnToolbar_UpdateStatus(ILjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 602
    :goto_21
    return-object v0

    .line 570
    :sswitch_22
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_42

    .line 571
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_42

    .line 572
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eq v1, v5, :cond_42

    .line 573
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-ne v1, v2, :cond_47

    .line 574
    :cond_42
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_21

    .line 576
    :cond_47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 577
    goto :goto_21

    .line 580
    :sswitch_4c
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_76

    .line 581
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nStatusOP:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_76

    .line 582
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eq v1, v5, :cond_76

    .line 583
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    if-eq v1, v2, :cond_76

    .line 584
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget-object v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->eObjectAttr:Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_GRAP_ATTR_INFO;->eObjectType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_7b

    .line 585
    :cond_76
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_21

    .line 587
    :cond_7b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 588
    goto :goto_21

    .line 590
    :sswitch_80
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-eqz v1, :cond_93

    .line 591
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_93

    .line 592
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBWPInfo:Lcom/infraware/office/evengine/EV$BWP_OP_INFO;

    iget v1, v1, Lcom/infraware/office/evengine/EV$BWP_OP_INFO;->nCaretMode:I

    if-ne v1, v5, :cond_98

    .line 593
    :cond_93
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_21

    .line 595
    :cond_98
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 596
    goto :goto_21

    .line 567
    nop

    :sswitch_data_9e
    .sparse-switch
        0x10 -> :sswitch_22
        0x11 -> :sswitch_22
        0x24 -> :sswitch_4c
        0x25 -> :sswitch_4c
        0x26 -> :sswitch_80
    .end sparse-switch
.end method

.method public OnWordCellSeparateMode(I)V
    .registers 6
    .parameter "nResult"

    .prologue
    .line 93
    if-nez p1, :cond_31

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080024

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    const v2, 0x7f080043

    new-instance v3, Lcom/infraware/polarisoffice/ppt/PPTMainActivity$1;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity$1;-><init>(Lcom/infraware/polarisoffice/ppt/PPTMainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 102
    .local v1, dlg:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 103
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 105
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dlg:Landroid/app/AlertDialog;
    :cond_31
    return-void
.end method

.method public closeOptionsMenu()V
    .registers 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->closeOptionsMenu()V

    .line 125
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 611
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 612
    sparse-switch p1, :sswitch_data_70

    .line 638
    :cond_a
    :goto_a
    return-void

    .line 617
    :sswitch_b
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 618
    const/16 v0, 0xb

    if-eq p1, v0, :cond_1d

    const/16 v0, 0x16

    if-ne p1, v0, :cond_66

    .line 620
    :cond_1d
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISlideShow(III)V

    .line 621
    const/4 v7, 0x0

    .line 622
    .local v7, bLandScape:I
    const/4 v8, 0x0

    .line 623
    .local v8, bReversedLandscape:I
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_64

    .line 624
    const/4 v7, 0x1

    .line 628
    :goto_41
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    .line 629
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v7, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    goto :goto_a

    .line 626
    :cond_64
    const/4 v8, 0x1

    goto :goto_41

    .line 631
    .end local v7           #bLandScape:I
    .end local v8           #bReversedLandscape:I
    :cond_66
    const/16 v0, 0x9

    if-ne p1, v0, :cond_a

    .line 632
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->IReDraw()V

    goto :goto_a

    .line 612
    :sswitch_data_70
    .sparse-switch
        0x9 -> :sswitch_b
        0xa -> :sswitch_b
        0xb -> :sswitch_b
        0x16 -> :sswitch_b
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 128
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 136
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 138
    :goto_c
    return v0

    .line 130
    :pswitch_d
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v0}, Lcom/infraware/office/evengine/EvInterface;->ISetObjPos(I)V

    goto :goto_c

    .line 133
    :pswitch_13
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/infraware/office/evengine/EvInterface;->ISetObjPos(I)V

    goto :goto_c

    .line 128
    :pswitch_data_1a
    .packed-switch 0x7f0c0305
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 53
    const v0, 0x7f030035

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->setContentView(I)V

    .line 55
    new-instance v0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    .line 56
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 57
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const-string v1, "PptAnnotationToolbar"

    sget-object v2, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBaseFreeDrawPptToolBar:[I

    invoke-virtual {v0, p0, v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetInit(Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;Ljava/lang/String;[I)V

    .line 61
    :goto_24
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v0, p0}, Lcom/infraware/office/baseframe/EvBaseView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 63
    return-void

    .line 59
    :cond_2d
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    const-string v1, "PptToolbar"

    sget-object v2, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mBasePptToolBar:[I

    invoke-virtual {v0, p0, v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->SetInit(Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;Ljava/lang/String;[I)V

    goto :goto_24
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 143
    .local v0, inflater:Landroid/view/MenuInflater;
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->GetObjCtrlType()I

    move-result v1

    packed-switch v1, :pswitch_data_26

    .line 158
    :pswitch_d
    invoke-super {p0, p1, p2, p3}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 161
    :goto_10
    return-void

    .line 146
    :pswitch_11
    const v1, 0x7f0b000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_10

    .line 152
    :pswitch_18
    const v1, 0x7f0b0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_10

    .line 155
    :pswitch_1f
    const v1, 0x7f0b0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_10

    .line 143
    :pswitch_data_26
    .packed-switch 0x4
        :pswitch_11
        :pswitch_18
        :pswitch_18
        :pswitch_11
        :pswitch_d
        :pswitch_1f
        :pswitch_18
        :pswitch_d
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mMenu:Landroid/view/Menu;

    .line 110
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onChangeOptionMenu()V

    .line 111
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onLocaleChange(I)V
    .registers 6
    .parameter "nLocale"

    .prologue
    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mbMenuChange:Z

    .line 81
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onChangeOptionMenu()V

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, bLandScape:I
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v1}, Lcom/infraware/office/baseframe/EvBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    .line 85
    const/4 v0, 0x1

    .line 87
    :cond_17
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;

    invoke-virtual {v3}, Lcom/infraware/office/baseframe/EvBaseView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/infraware/office/evengine/EvInterface;->IChangeScreen(III)V

    .line 88
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onLocaleChange(I)V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 164
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mbMenuOpen:Z

    .line 165
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_44

    .line 193
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 195
    :goto_e
    return v2

    .line 169
    :pswitch_f
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onSubMenu(I)V

    .line 195
    :goto_16
    const/4 v2, 0x1

    goto :goto_e

    .line 173
    :pswitch_18
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/ppt/SlideListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, slideListIntent:Landroid/content/Intent;
    const/16 v2, 0x9

    invoke-virtual {p0, v0, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16

    .line 178
    .end local v0           #slideListIntent:Landroid/content/Intent;
    :pswitch_25
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/ppt/SlideNoteActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v1, slideNoteIntent:Landroid/content/Intent;
    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_16

    .line 183
    .end local v1           #slideNoteIntent:Landroid/content/Intent;
    :pswitch_32
    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSupportFreeDraw(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 184
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnFreeDrawSlideShowActivity()V

    goto :goto_16

    .line 186
    :cond_3c
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->OnSlideShowActivity()V

    goto :goto_16

    .line 190
    :pswitch_40
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onCustomToolbarActivity()V

    goto :goto_16

    .line 165
    :pswitch_data_44
    .packed-switch 0x7f0c0318
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_25
        :pswitch_32
        :pswitch_40
    .end packed-switch
.end method

.method protected onPasswordDoc(I)Z
    .registers 4
    .parameter "nErrorCode"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->getDocExtensionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onPasswordDoc(I)Z

    move-result v0

    goto :goto_8
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnCloseSubToolbar()Ljava/lang/Boolean;

    .line 118
    :cond_9
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onChangeOptionMenu()V

    .line 119
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->onUpdateOptionsMenu()V

    .line 120
    invoke-super {p0, p1}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setEvListener()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/infraware/office/evengine/EvInterface;->ISetListener(Lcom/infraware/office/evengine/EvListener$ViewerListener;Lcom/infraware/office/evengine/EvListener$EditorListener;Lcom/infraware/office/evengine/EvListener$WordEditorListener;Lcom/infraware/office/evengine/EvListener$PptEditorListener;Lcom/infraware/office/evengine/EvListener$SheetEditorListener;Lcom/infraware/office/evengine/EvListener$PreviewListener;)V

    .line 68
    return-void
.end method
