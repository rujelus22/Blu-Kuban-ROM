.class Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    .line 2059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2062
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintCurrent:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$15(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2063
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPage:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$16(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2064
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2065
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2066
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2067
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintPagePopup:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$18(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2068
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_68

    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isShown()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2069
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2070
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/infraware/office/baseframe/EvBaseViewerActivity$30;->this$0:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mPrintEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->access$17(Lcom/infraware/office/baseframe/EvBaseViewerActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2072
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_68
    return-void
.end method
