.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    const/4 v0, 0x6

    if-ne p2, v0, :cond_7e

    .line 281
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsEditInFieldMode()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 282
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 284
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 292
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v0, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mSheetCell:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/office/evengine/EvInterface;->ISheetInputField(I)V

    .line 294
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 295
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 296
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$20(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 297
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$20(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/EvBaseView;->requestFocus()Z

    .line 298
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setVisibilityToolbar(Ljava/lang/Boolean;)V

    .line 299
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 301
    :cond_7e
    return v2

    .line 286
    :cond_7f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/ExEditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 287
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 289
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$4;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    goto :goto_3e
.end method
