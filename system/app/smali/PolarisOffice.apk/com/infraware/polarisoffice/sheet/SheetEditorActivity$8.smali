.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 16
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 379
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    if-gtz v10, :cond_8

    .line 380
    const/4 v10, 0x0

    .line 450
    :goto_7
    return v10

    .line 382
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_30

    .line 383
    sparse-switch p2, :sswitch_data_134

    .line 427
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v10

    if-ne p1, v10, :cond_30

    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditViewMode()Z

    move-result v10

    if-nez v10, :cond_30

    .line 428
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$25(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_30

    .line 429
    packed-switch p2, :pswitch_data_13e

    .line 450
    :cond_30
    const/4 v10, 0x0

    goto :goto_7

    .line 386
    :sswitch_32
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_da

    .line 389
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 390
    .local v9, osVer:Ljava/lang/String;
    const-string v10, "2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_83

    .line 392
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    .line 393
    .local v0, bCellEditFocus:Z
    if-eqz v0, :cond_85

    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    .line 395
    .local v1, edittext:Landroid/widget/EditText;
    :goto_57
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    .line 396
    .local v5, nSPos:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v4

    .line 398
    .local v4, nEPos:I
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, orgText:Ljava/lang/String;
    const/4 v7, 0x0

    .line 401
    .local v7, newText:Ljava/lang/String;
    if-nez v5, :cond_8c

    if-nez v4, :cond_8c

    .line 402
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\n"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 415
    :goto_7b
    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 416
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setSelection(I)V

    .line 418
    .end local v0           #bCellEditFocus:Z
    .end local v1           #edittext:Landroid/widget/EditText;
    .end local v4           #nEPos:I
    .end local v5           #nSPos:I
    .end local v7           #newText:Ljava/lang/String;
    .end local v8           #orgText:Ljava/lang/String;
    :cond_83
    const/4 v10, 0x0

    goto :goto_7

    .line 393
    .restart local v0       #bCellEditFocus:Z
    :cond_85
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    goto :goto_57

    .line 403
    .restart local v1       #edittext:Landroid/widget/EditText;
    .restart local v4       #nEPos:I
    .restart local v5       #nSPos:I
    .restart local v7       #newText:Ljava/lang/String;
    .restart local v8       #orgText:Ljava/lang/String;
    :cond_8c
    if-ne v5, v4, :cond_a8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v4, v10, :cond_a8

    .line 404
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7b

    .line 406
    :cond_a8
    if-le v5, v4, :cond_ad

    .line 407
    move v6, v5

    .line 408
    .local v6, nTemp:I
    move v5, v4

    .line 409
    move v4, v6

    .line 411
    .end local v6           #nTemp:I
    :cond_ad
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, firstText:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, endText:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7b

    .line 421
    .end local v0           #bCellEditFocus:Z
    .end local v1           #edittext:Landroid/widget/EditText;
    .end local v2           #endText:Ljava/lang/String;
    .end local v3           #firstText:Ljava/lang/String;
    .end local v4           #nEPos:I
    .end local v5           #nSPos:I
    .end local v7           #newText:Ljava/lang/String;
    .end local v8           #orgText:Ljava/lang/String;
    .end local v9           #osVer:Ljava/lang/String;
    :cond_da
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->decideInputState(I)V

    .line 422
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 423
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 431
    :pswitch_ec
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->decideInputState(I)V

    .line 432
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 433
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 435
    :pswitch_fe
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->decideInputState(I)V

    .line 436
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 437
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 439
    :pswitch_110
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->decideInputState(I)V

    .line 440
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 441
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 443
    :pswitch_122
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->decideInputState(I)V

    .line 444
    iget-object v10, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$8;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v10}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v10

    invoke-virtual {v10}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 445
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 383
    :sswitch_data_134
    .sparse-switch
        0x17 -> :sswitch_32
        0x42 -> :sswitch_32
    .end sparse-switch

    .line 429
    :pswitch_data_13e
    .packed-switch 0x13
        :pswitch_110
        :pswitch_122
        :pswitch_ec
        :pswitch_fe
    .end packed-switch
.end method
