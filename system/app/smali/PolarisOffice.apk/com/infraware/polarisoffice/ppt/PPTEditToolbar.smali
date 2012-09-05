.class public Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;
.super Lcom/infraware/office/basetoolbar/EditToolbar;
.source "PPTEditToolbar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public OnClickSubToolbar(II)V
    .registers 6
    .parameter "toolbarId"
    .parameter "toolbarBtnId"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->playKeyClickSoundEffect()V

    .line 46
    sparse-switch p1, :sswitch_data_3c

    .line 64
    :goto_6
    invoke-super {p0, p1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnClickSubToolbar(II)V

    .line 65
    return-void

    .line 48
    :sswitch_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Slide(I)V

    goto :goto_6

    .line 51
    :sswitch_10
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_FontSize(I)V

    goto :goto_6

    .line 54
    :sswitch_16
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Shape(I)V

    goto :goto_6

    .line 57
    :sswitch_1c
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Insert(I)V

    goto :goto_6

    .line 60
    :sswitch_22
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getToolBarItem()Lcom/infraware/office/basetoolbar/ToolbarItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getToolbarId()I

    move-result v1

    iget-object v2, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mTouchedToolbarBtn:Lcom/infraware/office/basetoolbar/ToolbarBtn;

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/ToolbarBtn;->getToolBarItem()Lcom/infraware/office/basetoolbar/ToolbarItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/ToolbarItem;->getTextId()I

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_BorderColor(III)V

    goto :goto_6

    .line 46
    :sswitch_data_3c
    .sparse-switch
        0x7f0c0239 -> :sswitch_22
        0x7f0c02ac -> :sswitch_10
        0x7f0c02b3 -> :sswitch_1c
        0x7f0c02b8 -> :sswitch_16
        0x7f0c02d9 -> :sswitch_a
    .end sparse-switch
.end method

.method public OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V
    .registers 5
    .parameter "subtoolbar"
    .parameter "toolbarBtnId"

    .prologue
    .line 17
    const/4 v0, -0x1

    .line 19
    .local v0, selectBtnId:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->playKeyClickSoundEffect()V

    .line 21
    sparse-switch p2, :sswitch_data_24

    .line 34
    invoke-super {p0, p1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V

    .line 39
    :goto_a
    return-void

    .line 23
    :sswitch_b
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdFontSizeUI()I

    move-result v0

    .line 38
    :goto_11
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitSelectedSubToolbarBtn(I)V

    goto :goto_a

    .line 27
    :sswitch_15
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdBackgroundColorUI()I

    move-result v0

    .line 28
    goto :goto_11

    .line 31
    :sswitch_1c
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/PPTEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v1}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdBorderColorUI()I

    move-result v0

    .line 32
    goto :goto_11

    .line 21
    nop

    :sswitch_data_24
    .sparse-switch
        0x10 -> :sswitch_15
        0x11 -> :sswitch_15
        0x24 -> :sswitch_1c
        0x25 -> :sswitch_1c
        0x26 -> :sswitch_b
    .end sparse-switch
.end method
