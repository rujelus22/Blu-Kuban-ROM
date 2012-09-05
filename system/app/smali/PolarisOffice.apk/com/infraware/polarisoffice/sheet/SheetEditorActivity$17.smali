.class Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;
.super Ljava/lang/Object;
.source "SheetEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->onCreateInputValuePopup(I)Landroid/app/AlertDialog;
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
    iput-object p1, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    .line 2793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 2794
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2795
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2797
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2798
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2799
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_28

    .line 2800
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$29(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2822
    :goto_27
    return-void

    .line 2803
    :cond_28
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2804
    .local v0, nValue:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$30(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    if-lt v0, v2, :cond_4a

    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$31(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    if-gt v0, v2, :cond_4a

    .line 2806
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mValueInputPopup:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$29(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_27

    .line 2810
    :cond_4a
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$30(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    if-ge v0, v2, :cond_92

    .line 2812
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMin:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$30(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2813
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 2820
    :cond_82
    :goto_82
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEventHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$19(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nErrMsgId:I
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$16(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_27

    .line 2815
    :cond_92
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$31(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v2

    if-le v0, v2, :cond_82

    .line 2817
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->m_nMax:I
    invoke-static {v5}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$31(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2818
    iget-object v2, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity$17;->this$0:Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->mEtInputValue:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;->access$28(Lcom/infraware/polarisoffice/sheet/SheetEditorActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_82
.end method
