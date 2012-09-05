.class public Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;
.super Lcom/infraware/office/basetoolbar/EditToolbar;
.source "SheetEditToolbar.java"


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
    .registers 4
    .parameter "toolbarId"
    .parameter "toolbarBtnId"

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->playKeyClickSoundEffect()V

    .line 57
    sparse-switch p1, :sswitch_data_34

    .line 80
    :goto_6
    invoke-super {p0, p1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnClickSubToolbar(II)V

    .line 81
    return-void

    .line 59
    :sswitch_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Alignment(I)V

    goto :goto_6

    .line 62
    :sswitch_10
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Cell(I)V

    goto :goto_6

    .line 65
    :sswitch_16
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Form(I)V

    goto :goto_6

    .line 68
    :sswitch_1c
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Decimal(I)V

    goto :goto_6

    .line 71
    :sswitch_22
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Insert(I)V

    goto :goto_6

    .line 74
    :sswitch_28
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Chart(I)V

    goto :goto_6

    .line 77
    :sswitch_2e
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Border_Style(I)V

    goto :goto_6

    .line 57
    :sswitch_data_34
    .sparse-switch
        0x7f0c0260 -> :sswitch_28
        0x7f0c0265 -> :sswitch_1c
        0x7f0c0292 -> :sswitch_16
        0x7f0c02bf -> :sswitch_a
        0x7f0c02c9 -> :sswitch_2e
        0x7f0c02cd -> :sswitch_10
        0x7f0c02d3 -> :sswitch_22
    .end sparse-switch
.end method

.method protected OnClickToolbar(I)V
    .registers 3
    .parameter "toolbarBtnId"

    .prologue
    .line 16
    const/16 v0, 0x31

    if-ne p1, v0, :cond_a

    .line 17
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Merge(I)V

    .line 20
    :goto_9
    return-void

    .line 19
    :cond_a
    invoke-super {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnClickToolbar(I)V

    goto :goto_9
.end method

.method public OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V
    .registers 6
    .parameter "subtoolbar"
    .parameter "toolbarBtnId"

    .prologue
    .line 24
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 25
    .local v0, btnState:[I
    const/4 v1, -0x1

    .line 27
    .local v1, selectBtnId:I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->playKeyClickSoundEffect()V

    .line 29
    sparse-switch p2, :sswitch_data_34

    .line 46
    invoke-super {p0, p1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V

    .line 50
    :goto_d
    return-void

    .line 32
    :sswitch_e
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdBackgroundColorUI()I

    move-result v1

    .line 49
    :goto_14
    invoke-virtual {p1, v1}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitSelectedSubToolbarBtn(I)V

    goto :goto_d

    .line 35
    :sswitch_18
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdAlignmentUI()I

    move-result v1

    .line 36
    goto :goto_14

    .line 38
    :sswitch_1f
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmddecimalUI()[I

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_d

    .line 42
    :sswitch_29
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdSheetCellUI()[I

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_d

    .line 29
    nop

    :sswitch_data_34
    .sparse-switch
        0x10 -> :sswitch_e
        0x11 -> :sswitch_e
        0x30 -> :sswitch_18
        0x33 -> :sswitch_1f
        0x37 -> :sswitch_29
    .end sparse-switch
.end method
