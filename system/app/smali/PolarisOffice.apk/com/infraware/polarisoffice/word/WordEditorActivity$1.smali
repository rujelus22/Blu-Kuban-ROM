.class Lcom/infraware/polarisoffice/word/WordEditorActivity$1;
.super Ljava/lang/Object;
.source "WordEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/word/WordEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/word/WordEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 646
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 643
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, -0x1

    .line 632
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 633
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    .local v0, textString:Ljava/lang/String;
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, urlString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_43

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_52

    .line 636
    :cond_43
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 640
    .end local v0           #textString:Ljava/lang/String;
    .end local v1           #urlString:Ljava/lang/String;
    :cond_51
    :goto_51
    return-void

    .line 638
    .restart local v0       #textString:Ljava/lang/String;
    .restart local v1       #urlString:Ljava/lang/String;
    :cond_52
    iget-object v2, p0, Lcom/infraware/polarisoffice/word/WordEditorActivity$1;->this$0:Lcom/infraware/polarisoffice/word/WordEditorActivity;

    #getter for: Lcom/infraware/polarisoffice/word/WordEditorActivity;->mInsertHyperlink:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/infraware/polarisoffice/word/WordEditorActivity;->access$0(Lcom/infraware/polarisoffice/word/WordEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_51
.end method
