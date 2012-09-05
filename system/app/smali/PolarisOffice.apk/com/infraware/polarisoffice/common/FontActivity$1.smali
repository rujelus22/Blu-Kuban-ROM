.class Lcom/infraware/polarisoffice/common/FontActivity$1;
.super Ljava/lang/Object;
.source "FontActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/FontActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FontActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FontActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FontActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 12
    .parameter "s"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/16 v7, 0x7f

    const/4 v6, 0x1

    .line 675
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FontActivity;->access$0(Lcom/infraware/polarisoffice/common/FontActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 676
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FontActivity;->access$0(Lcom/infraware/polarisoffice/common/FontActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 677
    .local v1, editText:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, textString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_38

    .line 680
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FontActivity;->access$0(Lcom/infraware/polarisoffice/common/FontActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 704
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v3           #textString:Ljava/lang/String;
    :cond_37
    :goto_37
    return-void

    .line 682
    .restart local v1       #editText:Landroid/widget/EditText;
    .restart local v3       #textString:Ljava/lang/String;
    :cond_38
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #getter for: Lcom/infraware/polarisoffice/common/FontActivity;->mFontSizeAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/polarisoffice/common/FontActivity;->access$0(Lcom/infraware/polarisoffice/common/FontActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 684
    const/4 v2, 0x1

    .line 686
    .local v2, fontSize:I
    :try_start_46
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_49} :catch_6a

    move-result v2

    .line 691
    :goto_4a
    if-ge v2, v6, :cond_6e

    .line 692
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #calls: Lcom/infraware/polarisoffice/common/FontActivity;->onShowFieldValueError(II)V
    invoke-static {v4, v6, v7}, Lcom/infraware/polarisoffice/common/FontActivity;->access$1(Lcom/infraware/polarisoffice/common/FontActivity;II)V

    .line 693
    const-string v4, "%d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 694
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_37

    .line 687
    :catch_6a
    move-exception v0

    .line 688
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v2, 0x80

    goto :goto_4a

    .line 696
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_6e
    if-le v2, v7, :cond_37

    .line 697
    iget-object v4, p0, Lcom/infraware/polarisoffice/common/FontActivity$1;->this$0:Lcom/infraware/polarisoffice/common/FontActivity;

    #calls: Lcom/infraware/polarisoffice/common/FontActivity;->onShowFieldValueError(II)V
    invoke-static {v4, v6, v7}, Lcom/infraware/polarisoffice/common/FontActivity;->access$1(Lcom/infraware/polarisoffice/common/FontActivity;II)V

    .line 698
    const-string v4, "%d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 699
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_37
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 671
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 668
    return-void
.end method
