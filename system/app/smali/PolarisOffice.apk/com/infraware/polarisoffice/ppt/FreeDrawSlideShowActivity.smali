.class public Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;
.super Lcom/infraware/polarisoffice/common/FreeDrawActivity;
.source "FreeDrawSlideShowActivity.java"


# instance fields
.field protected mFreeDrawSavePopup:Landroid/app/AlertDialog;

.field protected mNextPageBtn:Landroid/widget/ImageButton;

.field protected mPrevPageBtn:Landroid/widget/ImageButton;

.field protected mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mXTouchDownPos:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mXTouchDownPos:I

    .line 26
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mFreeDrawSavePopup:Landroid/app/AlertDialog;

    .line 27
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mPrevPageBtn:Landroid/widget/ImageButton;

    .line 28
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mNextPageBtn:Landroid/widget/ImageButton;

    .line 29
    new-instance v0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$1;-><init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)Lcom/infraware/office/baseframe/EvContentView;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)Lcom/infraware/office/evengine/EvInterface;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->closeActivity()V

    return-void
.end method


# virtual methods
.method public OnDrawBitmap(II)V
    .registers 3
    .parameter "nCallId"
    .parameter "bShowAutomap"

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->OnDrawBitmap(II)V

    .line 250
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->disableGotoPageBtn()V

    .line 251
    return-void
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .registers 3
    .parameter "nStrID"

    .prologue
    .line 165
    const-string v0, ""

    return-object v0
.end method

.method protected disableGotoPageBtn()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 254
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v3}, Lcom/infraware/office/evengine/EvInterface;->IGetConfig()Lcom/infraware/office/evengine/EV$CONFIG_INFO;

    move-result-object v1

    .line 255
    .local v1, docinfo:Lcom/infraware/office/evengine/EV$CONFIG_INFO;
    iget v0, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nCurPage:I

    .line 256
    .local v0, curpage:I
    iget v2, v1, Lcom/infraware/office/evengine/EV$CONFIG_INFO;->nTotalPages:I

    .line 259
    .local v2, totalpage:I
    if-ne v0, v4, :cond_1b

    .line 260
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mPrevPageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 267
    :cond_13
    :goto_13
    if-ne v0, v2, :cond_29

    .line 268
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mNextPageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 273
    :cond_1a
    :goto_1a
    return-void

    .line 261
    :cond_1b
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mPrevPageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_13

    .line 264
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mPrevPageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_13

    .line 269
    :cond_29
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mNextPageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 272
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mNextPageBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1a
.end method

.method protected finalizeFreeDraw()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-super {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->finalizeFreeDraw()V

    .line 135
    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 136
    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mFreeDrawSavePopup:Landroid/app/AlertDialog;

    .line 137
    return-void
.end method

.method public goToPage(I)V
    .registers 5
    .parameter "EV_MOVE_TYPE"

    .prologue
    const/4 v2, 0x0

    .line 195
    packed-switch p1, :pswitch_data_20

    .line 209
    :goto_4
    :pswitch_4
    return-void

    .line 197
    :pswitch_5
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_4

    .line 200
    :pswitch_c
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_4

    .line 203
    :pswitch_13
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, v2, v2}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_4

    .line 206
    :pswitch_19
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/infraware/office/evengine/EvInterface;->IMovePage(II)V

    goto :goto_4

    .line 195
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_13
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_19
    .end packed-switch
.end method

.method protected initEraseAllBtn()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 98
    const v0, 0x7f0c00eb

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    const v0, 0x7f0c00ec

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    return-void
.end method

.method protected initGotoPageBtn()V
    .registers 4

    .prologue
    .line 75
    const v1, 0x7f0c00e0

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 76
    .local v0, pageBtnLayout:Landroid/widget/RelativeLayout;
    const v1, 0x7f0c00e1

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mPrevPageBtn:Landroid/widget/ImageButton;

    .line 77
    const v1, 0x7f0c00e2

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mNextPageBtn:Landroid/widget/ImageButton;

    .line 78
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 80
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mPrevPageBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$3;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$3;-><init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mNextPageBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$4;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$4;-><init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method

.method protected initHiddenBtn()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 103
    const v2, 0x7f0c00f0

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 104
    .local v1, undoRedoBtn:Landroid/widget/ImageButton;
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 105
    const v2, 0x7f0c00f1

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 107
    const v2, 0x7f0c00ed

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 108
    .local v0, exitBtn:Landroid/widget/ImageButton;
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 109
    const v2, 0x7f0c00ee

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    return-void
.end method

.method protected makeFreeDrawSaveAlert()V
    .registers 6

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080295

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, content:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$5;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$5;-><init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080047

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$6;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$6;-><init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    new-instance v3, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$7;

    invoke-direct {v3, p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$7;-><init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mFreeDrawSavePopup:Landroid/app/AlertDialog;

    .line 243
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mFreeDrawSavePopup:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 244
    iget-object v3, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mFreeDrawSavePopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 245
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mFreeDrawToolbar:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    :goto_8
    return-void

    .line 159
    :cond_9
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->closeActivity()V

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->setTitle(I)V

    .line 62
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    new-instance v1, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity$2;-><init>(Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;)V

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvContentView;->setOnContentCreateListener(Lcom/infraware/office/baseframe/EvContentView$OnContentCreateListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->initGotoPageBtn()V

    .line 70
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->initEraseAllBtn()V

    .line 71
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->initHiddenBtn()V

    .line 72
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 176
    sparse-switch p1, :sswitch_data_1c

    .line 191
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 178
    :sswitch_8
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 181
    :sswitch_d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 184
    :sswitch_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 187
    :sswitch_17
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->goToPage(I)V

    goto :goto_3

    .line 176
    :sswitch_data_1c
    .sparse-switch
        0x1e -> :sswitch_17
        0x2a -> :sswitch_8
        0x2c -> :sswitch_d
        0x30 -> :sswitch_12
    .end sparse-switch
.end method

.method public onLocaleChange(I)V
    .registers 3
    .parameter "nLocale"

    .prologue
    .line 170
    const v0, 0x7f0801a3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->setTitle(I)V

    .line 171
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 142
    invoke-super {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->onPause()V

    .line 143
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 148
    invoke-super {p0}, Lcom/infraware/polarisoffice/common/FreeDrawActivity;->onResume()V

    .line 149
    return-void
.end method

.method protected setContentViewTouchListener(I)V
    .registers 4
    .parameter "EV_HTC_PEN_MODE"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    if-eqz v0, :cond_c

    .line 115
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;->Gesturefinalize()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    .line 119
    :cond_c
    packed-switch p1, :pswitch_data_28

    .line 129
    :goto_f
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v0, p1}, Lcom/infraware/office/evengine/EvInterface;->IHTCSetPenMode(I)V

    .line 130
    return-void

    .line 121
    :pswitch_15
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/infraware/office/baseframe/EvContentView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_f

    .line 126
    :pswitch_1d
    new-instance v0, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;

    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mContentView:Lcom/infraware/office/baseframe/EvContentView;

    invoke-direct {v0, p0, v1, p0, p1}, Lcom/infraware/office/baseframe/gestureproc/EvFreeDrawGestureProc;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/infraware/office/baseframe/gestureproc/EvGestureCallback;I)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/FreeDrawSlideShowActivity;->mGestureProc:Lcom/infraware/office/baseframe/gestureproc/EvBaseGestureProc;

    goto :goto_f

    .line 119
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_15
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method
