.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;
.super Ljava/lang/Object;
.source "EvBaseViewerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/EvBaseViewerActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2092
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintAll:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$19(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2093
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$15(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2094
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2095
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2096
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2097
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_4e

    .line 2098
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$18(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2101
    :goto_4d
    return-void

    .line 2100
    :cond_4e
    iget-object v0, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$32;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$18(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4d
.end method
