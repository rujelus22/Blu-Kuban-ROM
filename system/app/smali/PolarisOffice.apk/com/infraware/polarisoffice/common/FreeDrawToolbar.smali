.class public Lcom/infraware/polarisoffice/common/FreeDrawToolbar;
.super Landroid/widget/ViewSwitcher;
.source "FreeDrawToolbar.java"

# interfaces
.implements Lcom/infraware/office/evengine/E$EV_HTC_PEN_MODE;
.implements Lcom/infraware/office/basetoolbar/SubToolbarBtn$OnSubToolbarBtnListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;
    }
.end annotation


# static fields
.field protected static final CLOSE_TOOLBAR:I = 0x0

.field protected static final TOOLBAR_VISIBLE_DELAY:I = 0x9c4


# instance fields
.field protected final SUB_ID_PENPANEL:I

.field protected final SUB_ID_UNDOREDO:I

.field protected mBtnClickListener:Landroid/view/View$OnClickListener;

.field protected mEraseAllBtn:Landroid/widget/ImageButton;

.field protected mEraserToggle:Landroid/widget/ImageButton;

.field protected mExitBtn:Landroid/widget/ImageButton;

.field protected mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

.field protected mFreeDrawUndoRedo:Landroid/widget/ImageButton;

.field protected mHandler:Landroid/os/Handler;

.field protected mModeBtnEraser:Landroid/widget/ImageButton;

.field protected mModeBtnNormal:Landroid/widget/ImageButton;

.field protected mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

.field protected mPenSettingBtn:Landroid/widget/ImageButton;

.field protected mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

.field protected mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field protected mToolbarPanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 34
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 35
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    .line 36
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnEraser:Landroid/widget/ImageButton;

    .line 37
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnNormal:Landroid/widget/ImageButton;

    .line 38
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    .line 39
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    .line 40
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    .line 41
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraseAllBtn:Landroid/widget/ImageButton;

    .line 42
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    .line 43
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    .line 44
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    .line 45
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->SUB_ID_PENPANEL:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->SUB_ID_UNDOREDO:I

    .line 74
    new-instance v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$1;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 171
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->initHandler()V

    .line 172
    return-void
.end method

.method private popupStartPosX(III)I
    .registers 6
    .parameter "btnCenterX"
    .parameter "popupViewWidth"
    .parameter "ScreenWidth"

    .prologue
    .line 473
    div-int/lit8 v1, p2, 0x2

    sub-int v0, p1, v1

    .line 474
    .local v0, nPosX:I
    if-gez v0, :cond_7

    .line 475
    const/4 v0, 0x0

    .line 476
    :cond_7
    add-int v1, v0, p2

    if-le v1, p3, :cond_d

    .line 477
    sub-int v0, p3, p2

    .line 478
    :cond_d
    return v0
.end method


# virtual methods
.method public OnClickSubToolbarBtn(II)V
    .registers 4
    .parameter "toolbarId"
    .parameter "toolbarBtnId"

    .prologue
    .line 499
    packed-switch p2, :pswitch_data_1c

    .line 512
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 513
    return-void

    .line 501
    :pswitch_7
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onUndo()V

    goto :goto_3

    .line 505
    :pswitch_11
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onRedo()V

    goto :goto_3

    .line 499
    nop

    :pswitch_data_1c
    .packed-switch 0x7f0c02e1
        :pswitch_7
        :pswitch_11
    .end packed-switch
.end method

.method public OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V
    .registers 5
    .parameter "subtoolbar"
    .parameter "toolbarBtnId"

    .prologue
    .line 516
    const/4 v0, 0x0

    check-cast v0, [I

    .line 517
    .local v0, btnStates:[I
    packed-switch p2, :pswitch_data_14

    .line 524
    :cond_6
    :goto_6
    return-void

    .line 519
    :pswitch_7
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onToolbar_CmdUndoRedoUI()[I

    move-result-object v0

    .line 520
    if-eqz v0, :cond_6

    .line 521
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_6

    .line 517
    nop

    :pswitch_data_14
    .packed-switch 0x7f0c00f0
        :pswitch_7
    .end packed-switch
.end method

.method public closeSubToolbar()Z
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_e

    .line 534
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 536
    const/4 v0, 0x1

    .line 538
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected closeToolBar()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 346
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 347
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    :cond_14
    :goto_14
    return-void

    .line 349
    :cond_15
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c00e4

    if-eq v0, v1, :cond_14

    .line 350
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->showNext()V

    goto :goto_14
.end method

.method protected createSubToolBar(I)V
    .registers 21
    .parameter "subPopupId"

    .prologue
    .line 367
    packed-switch p1, :pswitch_data_1c6

    .line 470
    :goto_3
    return-void

    .line 371
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    if-nez v13, :cond_25

    .line 372
    new-instance v13, Lcom/infraware/polarisoffice/common/PenSettingPanel;

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/infraware/polarisoffice/common/PenSettingPanel;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 373
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    new-instance v14, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$3;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V

    invoke-virtual {v13, v14}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->setOnPenSettingChangeListener(Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;)V

    .line 398
    :cond_25
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    .line 401
    .local v8, nWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    .line 402
    .local v6, nHeight:I
    const/4 v13, 0x2

    new-array v2, v13, [I

    .line 403
    .local v2, location:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v13, v2}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 404
    const/4 v13, 0x0

    aget v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v14}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->popupStartPosX(III)I

    move-result v7

    .line 405
    .local v7, nPosX:I
    const/4 v13, 0x0

    aget v13, v2, v13

    sub-int/2addr v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, 0x4000

    invoke-static {v14, v15}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v14

    float-to-int v14, v14

    sub-int v1, v13, v14

    .line 406
    .local v1, ArrowCenterX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    invoke-virtual {v13, v1}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->setCenterPosX(I)V

    .line 407
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    invoke-virtual {v13, v7}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initArrowDown(I)V

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    const/16 v15, 0x33

    const/16 v16, 0x1

    aget v16, v2, v16

    sub-int v16, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x40b570a4

    invoke-static/range {v17 .. v18}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 411
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setSelected(Z)V

    goto/16 :goto_3

    .line 416
    .end local v1           #ArrowCenterX:I
    .end local v2           #location:[I
    .end local v6           #nHeight:I
    .end local v7           #nPosX:I
    .end local v8           #nWidth:I
    :pswitch_be
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/infraware/polarisoffice/MyApplication;

    .line 417
    .local v3, myApp:Lcom/infraware/polarisoffice/MyApplication;
    invoke-virtual {v3}, Lcom/infraware/polarisoffice/MyApplication;->getSubToolbarDataMapping()Ljava/util/HashMap;

    move-result-object v12

    .line 418
    .local v12, subToolbarDataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/infraware/office/basetoolbar/SubToolbarItem;>;"
    const/16 v13, 0x14

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/infraware/office/basetoolbar/SubToolbarItem;

    .line 420
    .local v10, subToolBarItem:Lcom/infraware/office/basetoolbar/SubToolbarItem;
    new-instance v9, Lcom/infraware/office/basetoolbar/SubToolbar;

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13}, Lcom/infraware/office/basetoolbar/SubToolbar;-><init>(Landroid/content/Context;)V

    .line 421
    .local v9, subToolBar:Lcom/infraware/office/basetoolbar/SubToolbar;
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x4080

    invoke-static {v13, v14}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v13

    float-to-int v4, v13

    .line 422
    .local v4, nButtonMargin:I
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x4250

    invoke-static {v13, v14}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v13

    float-to-int v5, v13

    .line 423
    .local v5, nButtonWidth:I
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolbarButtonCnt()I

    move-result v13

    mul-int/2addr v13, v5

    add-int v8, v13, v4

    .line 424
    .restart local v8       #nWidth:I
    const/4 v6, 0x0

    .line 425
    .restart local v6       #nHeight:I
    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v13

    const/4 v14, 0x2

    if-lt v13, v14, :cond_1b3

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x4264

    invoke-static {v13, v14}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, 0x4230

    invoke-static {v14, v15}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v14

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    int-to-float v15, v15

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    float-to-int v6, v13

    .line 430
    :goto_124
    new-instance v13, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$4;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V

    invoke-virtual {v9, v13, v10}, Lcom/infraware/office/basetoolbar/SubToolbar;->SetInit(Lcom/infraware/office/basetoolbar/SubToolbar$OnSubToolbarListener;Lcom/infraware/office/basetoolbar/SubToolbarItem;)Landroid/view/View;

    move-result-object v11

    .line 448
    .local v11, subToolBarView:Landroid/view/View;
    new-instance v13, Landroid/widget/PopupWindow;

    invoke-direct {v13, v11, v8, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 450
    const/4 v13, 0x2

    new-array v2, v13, [I

    .line 451
    .restart local v2       #location:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    invoke-virtual {v13, v2}, Landroid/widget/ImageButton;->getLocationOnScreen([I)V

    .line 452
    const/4 v13, 0x0

    aget v13, v2, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    invoke-virtual {v14}, Landroid/widget/ImageButton;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    const/4 v14, 0x1

    aget v14, v2, v14

    invoke-virtual {v9, v13, v14}, Lcom/infraware/office/basetoolbar/SubToolbar;->SetTipPos(II)V

    .line 454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    invoke-virtual {v13}, Landroid/widget/ImageButton;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    aget v14, v2, v14

    invoke-static {v13, v14, v8}, Lcom/infraware/office/basetoolbar/EditToolbar;->CalculateCenterPos(III)I

    move-result v7

    .line 455
    .restart local v7       #nPosX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    const/16 v15, 0x33

    const/16 v16, 0x1

    aget v16, v2, v16

    sub-int v16, v16, v6

    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v17

    const v18, 0x40b570a4

    invoke-static/range {v17 .. v18}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v7, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 456
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v13}, Landroid/widget/PopupWindow;->update()V

    .line 458
    const v13, 0x7f0c00f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v14, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$5;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V

    invoke-virtual {v13, v14}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto/16 :goto_3

    .line 428
    .end local v2           #location:[I
    .end local v7           #nPosX:I
    .end local v11           #subToolBarView:Landroid/view/View;
    :cond_1b3
    invoke-virtual/range {p0 .. p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v13

    const/high16 v14, 0x4264

    invoke-static {v13, v14}, Lcom/infraware/common/util/Utils;->dipToPx(Landroid/content/Context;F)F

    move-result v13

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/SubToolbarItem;->getSubToolBarLineCnt()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v6, v13

    goto/16 :goto_124

    .line 367
    :pswitch_data_1c6
    .packed-switch 0x0
        :pswitch_4
        :pswitch_be
    .end packed-switch
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 175
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    if-eqz v0, :cond_12

    .line 177
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->destroy()V

    .line 178
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 180
    :cond_12
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 181
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    .line 182
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    .line 183
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    .line 184
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    .line 185
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraseAllBtn:Landroid/widget/ImageButton;

    .line 186
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    .line 187
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    .line 188
    iput-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method protected initHandler()V
    .registers 2

    .prologue
    .line 192
    new-instance v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$2;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$2;-><init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    .line 204
    return-void
.end method

.method protected isPopupShowing()Z
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_e

    .line 208
    :cond_c
    const/4 v0, 0x0

    .line 209
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 355
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 356
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 362
    :goto_a
    return v0

    .line 358
    :cond_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_17

    .line 359
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeToolBar()V

    goto :goto_a

    .line 362
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 491
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeSubToolbar()Z

    .line 494
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/ViewSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 495
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 264
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    if-nez v3, :cond_16

    .line 265
    const v3, 0x7f0c00e5

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/infraware/polarisoffice/common/PencilLineButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    .line 266
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :cond_16
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnEraser:Landroid/widget/ImageButton;

    if-nez v3, :cond_2c

    .line 269
    const v3, 0x7f0c00e6

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnEraser:Landroid/widget/ImageButton;

    .line 270
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnEraser:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    :cond_2c
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnNormal:Landroid/widget/ImageButton;

    if-nez v3, :cond_42

    .line 273
    const v3, 0x7f0c00e7

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnNormal:Landroid/widget/ImageButton;

    .line 274
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnNormal:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    :cond_42
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    if-nez v3, :cond_51

    .line 278
    const v3, 0x7f0c00e8

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    .line 281
    :cond_51
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    if-nez v3, :cond_67

    .line 282
    const v3, 0x7f0c00e9

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/infraware/polarisoffice/common/PencilLineButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    .line 283
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    :cond_67
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    if-nez v3, :cond_7d

    .line 287
    const v3, 0x7f0c00ea

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    .line 288
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    :cond_7d
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraseAllBtn:Landroid/widget/ImageButton;

    if-nez v3, :cond_93

    .line 292
    const v3, 0x7f0c00eb

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraseAllBtn:Landroid/widget/ImageButton;

    .line 293
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraseAllBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_93
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    if-nez v3, :cond_a9

    .line 297
    const v3, 0x7f0c00ef

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    .line 298
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :cond_a9
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    if-nez v3, :cond_bf

    .line 302
    const v3, 0x7f0c00f0

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    .line 303
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    :cond_bf
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    if-nez v3, :cond_e2

    .line 307
    const v3, 0x7f0c00ed

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    .line 308
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v3, :cond_122

    .line 312
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onGetInitialPenMode()I

    move-result v1

    .line 313
    .local v1, mode:I
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->togglePenButton(I)V

    .line 326
    .end local v1           #mode:I
    :cond_e2
    :goto_e2
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    if-eqz v3, :cond_11e

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v3, :cond_11e

    .line 328
    new-instance v3, Lcom/infraware/polarisoffice/common/PenSettingPanel;

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/infraware/polarisoffice/common/PenSettingPanel;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 329
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    instance-of v3, v3, Lcom/infraware/polarisoffice/common/PenSettingPanel;

    if-eqz v3, :cond_11b

    .line 330
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v2, Lcom/infraware/polarisoffice/common/PenSettingPanel;

    .line 331
    .local v2, penSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;
    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->getPenColor()I

    move-result v0

    .line 332
    .local v0, color:I
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v3, v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onPenColorChanged(I)V

    .line 333
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->getPenSize()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onPenSizeChanged(I)V

    .line 335
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v3, v0}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setColor(I)V

    .line 336
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v3, v0}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setColor(I)V

    .line 338
    .end local v0           #color:I
    .end local v2           #penSettingPanel:Lcom/infraware/polarisoffice/common/PenSettingPanel;
    :cond_11b
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 341
    :cond_11e
    invoke-super/range {p0 .. p5}, Landroid/widget/ViewSwitcher;->onLayout(ZIIII)V

    .line 342
    return-void

    .line 323
    :cond_122
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->togglePenButton(I)V

    goto :goto_e2
.end method

.method public onModeBtnChanged(I)V
    .registers 5
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnEraser:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnNormal:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 247
    packed-switch p1, :pswitch_data_28

    .line 259
    :goto_15
    return-void

    .line 250
    :pswitch_16
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnNormal:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_15

    .line 253
    :pswitch_1c
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnPen:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setVisibility(I)V

    goto :goto_15

    .line 256
    :pswitch_22
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mModeBtnEraser:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_15

    .line 247
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_16
        :pswitch_1c
        :pswitch_22
    .end packed-switch
.end method

.method protected refreshHandler()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 213
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 214
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 215
    :cond_e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 216
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 217
    :cond_1b
    return-void
.end method

.method public setOnFreeDrawToolbarListener(Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    .line 72
    return-void
.end method

.method protected togglePenButton(I)V
    .registers 5
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    packed-switch p1, :pswitch_data_46

    .line 241
    :goto_5
    return-void

    .line 223
    :pswitch_6
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setSelected(Z)V

    .line 224
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 225
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 226
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_5

    .line 229
    :pswitch_1b
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setSelected(Z)V

    .line 230
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 231
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 232
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_5

    .line 235
    :pswitch_30
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenToggle:Lcom/infraware/polarisoffice/common/PencilLineButton;

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/PencilLineButton;->setSelected(Z)V

    .line 236
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mEraserToggle:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 237
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mExitBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 238
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mPenSettingBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_5

    .line 220
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1b
        :pswitch_30
    .end packed-switch
.end method

.method public updateToolbar()V
    .registers 3

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawUndoRedo:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mFreeDrawToolbarListener:Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;

    invoke-interface {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$OnFreeDrawToolbarListener;->onToolbar_UpdateStatus()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_e} :catch_11

    .line 530
    :goto_e
    return-void

    .line 528
    :cond_f
    const/4 v0, 0x0

    goto :goto_b

    .line 529
    :catch_11
    move-exception v0

    goto :goto_e
.end method
