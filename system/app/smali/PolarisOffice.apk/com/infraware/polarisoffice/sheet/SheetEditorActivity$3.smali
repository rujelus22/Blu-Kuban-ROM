.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 10
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const v4, 0x7f0c015c

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 223
    if-eqz p2, :cond_bd

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0146

    if-ne v0, v1, :cond_80

    .line 225
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v0

    if-nez v0, :cond_20

    .line 226
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0, v6}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 227
    :cond_20
    invoke-static {}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$18()Z

    move-result v0

    if-eqz v0, :cond_74

    .line 228
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onChangeImm(Z)V

    .line 229
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$2(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/evengine/EvInterface;->ISheetFocus()V

    .line 230
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onSetEditSelection(Lcom/infraware/polarisoffice/common/ExEditText;)V

    .line 237
    :goto_3f
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxLines(I)V

    .line 254
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mView:Lcom/infraware/office/baseframe/EvBaseView;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$20(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/baseframe/EvBaseView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/infraware/office/baseframe/EvBaseView;->setFocusableInTouchMode(Z)V

    .line 270
    :goto_51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_6a

    .line 271
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellText:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$10(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;Ljava/lang/String;)V

    .line 273
    :cond_6a
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mToolbar:Lcom/infraware/office/basetoolbar/EditToolbar;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$23(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/office/basetoolbar/EditToolbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/office/basetoolbar/EditToolbar;->OnUpdateToolbar()V

    .line 274
    return-void

    .line 235
    :cond_74
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$19(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3f

    .line 239
    :cond_80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_48

    .line 240
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->IsSelectionFunctionMode()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 241
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget v0, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nEditMode:I

    if-eq v0, v6, :cond_9d

    .line 242
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->makeCellEdit(Ljava/lang/Boolean;)V

    .line 243
    :cond_9d
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->setEditMode(I)V

    .line 246
    :cond_a2
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget v0, v0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nOrientation:I

    if-ne v0, v2, :cond_b1

    .line 247
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxLines(I)V

    .line 251
    :cond_b1
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$19(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_48

    .line 257
    :cond_bd
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c0146

    if-ne v0, v1, :cond_ef

    .line 258
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 259
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mCellInlineEdit:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$15(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 267
    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxLines(I)V

    goto/16 :goto_51

    .line 261
    :cond_ef
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_e4

    .line 262
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionStart()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mStartSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$21(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 263
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getSelectionEnd()I

    move-result v1

    #setter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEndSelPosition:I
    invoke-static {v0, v1}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$22(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;I)V

    .line 265
    iget-object v0, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$3;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mMainFuctionEditText:Lcom/infraware/polarisoffice/common/ExEditText;
    invoke-static {v0}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$11(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Lcom/infraware/polarisoffice/common/ExEditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/common/ExEditText;->setMaxLines(I)V

    goto :goto_e4
.end method
