.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 343
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 344
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$20(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 345
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$20(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 346
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    .line 347
    if-eq p1, v4, :cond_37

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 348
    :cond_37
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v3, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v2, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 349
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    .line 366
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v2, v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 367
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 369
    if-ne p1, v4, :cond_e1

    .line 372
    :goto_63
    return v0

    .line 351
    :cond_64
    const/16 v2, 0x52

    if-ne p1, v2, :cond_4a

    .line 352
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 353
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v3

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 354
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v3

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 356
    :cond_92
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 357
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v3

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 358
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v3

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 360
    :cond_bc
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$25(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 361
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    goto/16 :goto_4a

    .line 363
    :cond_d5
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$7;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    goto/16 :goto_4a

    :cond_e1
    move v0, v1

    .line 372
    goto :goto_63
.end method
