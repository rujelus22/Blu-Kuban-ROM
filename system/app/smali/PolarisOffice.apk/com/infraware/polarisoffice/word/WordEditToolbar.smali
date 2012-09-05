.class public Lcom/infraware/polarisoffice/word/WordEditToolbar;
.super Lcom/infraware/office/basetoolbar/EditToolbar;
.source "WordEditToolbar.java"


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
    .line 56
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditToolbar;->playKeyClickSoundEffect()V

    .line 58
    packed-switch p1, :pswitch_data_16

    .line 67
    :goto_6
    :pswitch_6
    invoke-super {p0, p1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnClickSubToolbar(II)V

    .line 68
    return-void

    .line 60
    :pswitch_a
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Indent(I)V

    goto :goto_6

    .line 63
    :pswitch_10
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0, p2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_Insert(I)V

    goto :goto_6

    .line 58
    :pswitch_data_16
    .packed-switch 0x7f0c0299
        :pswitch_a
        :pswitch_6
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method protected OnClickToolbar(I)V
    .registers 3
    .parameter "toolbarBtnId"

    .prologue
    .line 47
    const/16 v0, 0xd

    if-ne p1, v0, :cond_a

    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/word/WordEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v0}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_ReflowText()V

    .line 51
    :goto_9
    return-void

    .line 50
    :cond_a
    invoke-super {p0, p1}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnClickToolbar(I)V

    goto :goto_9
.end method

.method public OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V
    .registers 7
    .parameter "subtoolbar"
    .parameter "toolbarBtnId"

    .prologue
    .line 17
    const/4 v1, -0x1

    .line 18
    .local v1, selectBtnId:I
    const/4 v0, 0x0

    check-cast v0, [I

    .line 20
    .local v0, btnStates:[I
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/word/WordEditToolbar;->playKeyClickSoundEffect()V

    .line 22
    packed-switch p2, :pswitch_data_3a

    .line 38
    invoke-super {p0, p1, p2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnConformSubToolbar(Lcom/infraware/office/basetoolbar/SubToolbar;I)V

    .line 43
    :cond_d
    :goto_d
    return-void

    .line 24
    :pswitch_e
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdInsertUI(Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 25
    if-eqz v0, :cond_d

    .line 26
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_d

    .line 29
    :pswitch_1f
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdInsertUI(Ljava/lang/Boolean;)[I

    move-result-object v0

    .line 30
    if-eqz v0, :cond_d

    .line 31
    invoke-virtual {p1, v0}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitDisabledSubToolbarBtn([I)V

    goto :goto_d

    .line 35
    :pswitch_30
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditToolbar;->mEditListener:Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;

    invoke-interface {v2}, Lcom/infraware/office/basetoolbar/EditToolbar$OnEditToolbarListener;->OnToolbar_CmdBackgroundColorUI()I

    move-result v1

    .line 42
    invoke-virtual {p1, v1}, Lcom/infraware/office/basetoolbar/SubToolbar;->InitSelectedSubToolbarBtn(I)V

    goto :goto_d

    .line 22
    :pswitch_data_3a
    .packed-switch 0xe
        :pswitch_e
        :pswitch_1f
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method
