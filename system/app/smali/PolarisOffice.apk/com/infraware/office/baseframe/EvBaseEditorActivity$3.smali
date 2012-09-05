.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;
.super Ljava/lang/Object;
.source "EvBaseEditorActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvBaseEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 1794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 16
    .parameter "s"

    .prologue
    const/4 v13, -0x1

    const/16 v12, 0x32

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1803
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_d2

    .line 1804
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    const v8, 0x7f0c0040

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1805
    .local v1, colEditText:Landroid/widget/EditText;
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    const v8, 0x7f0c0042

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1806
    .local v4, rowEditText:Landroid/widget/EditText;
    const/4 v0, 0x1

    .line 1807
    .local v0, col:I
    const/4 v3, 0x1

    .line 1809
    .local v3, row:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-eqz v7, :cond_ad

    .line 1810
    invoke-virtual {v1}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1812
    :try_start_39
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1813
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_4c} :catch_d3

    move-result v3

    .line 1820
    :goto_4d
    div-int v5, v12, v3

    .line 1822
    .local v5, valid_col:I
    mul-int v7, v0, v3

    if-le v7, v12, :cond_eb

    .line 1824
    const-string v7, "%d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1825
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1826
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(II)V
    invoke-static {v7, v10, v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseEditorActivity;II)V

    .line 1836
    .end local v5           #valid_col:I
    :cond_70
    :goto_70
    invoke-virtual {v4}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 1838
    :try_start_76
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1839
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_89} :catch_10d

    move-result v0

    .line 1846
    :goto_8a
    div-int v6, v12, v0

    .line 1848
    .local v6, valid_row:I
    mul-int v7, v0, v3

    if-le v7, v12, :cond_125

    .line 1850
    const-string v7, "%d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1852
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(II)V
    invoke-static {v7, v10, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseEditorActivity;II)V

    .line 1864
    .end local v6           #valid_row:I
    :cond_ad
    :goto_ad
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-eqz v7, :cond_c5

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-eqz v7, :cond_c5

    if-lt v0, v10, :cond_c5

    if-ge v3, v10, :cond_147

    .line 1865
    :cond_c5
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1869
    .end local v0           #col:I
    .end local v1           #colEditText:Landroid/widget/EditText;
    .end local v3           #row:I
    .end local v4           #rowEditText:Landroid/widget/EditText;
    :cond_d2
    :goto_d2
    return-void

    .line 1814
    .restart local v0       #col:I
    .restart local v1       #colEditText:Landroid/widget/EditText;
    .restart local v3       #row:I
    .restart local v4       #rowEditText:Landroid/widget/EditText;
    :catch_d3
    move-exception v2

    .line 1815
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e4

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_e8

    .line 1816
    :cond_e4
    const/16 v0, 0xb

    goto/16 :goto_4d

    .line 1818
    :cond_e8
    const/4 v3, 0x1

    goto/16 :goto_4d

    .line 1828
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #valid_col:I
    :cond_eb
    if-nez v0, :cond_70

    .line 1830
    const/4 v0, 0x1

    .line 1831
    const-string v7, "%d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1832
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1833
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(II)V
    invoke-static {v7, v10, v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseEditorActivity;II)V

    goto/16 :goto_70

    .line 1840
    .end local v5           #valid_col:I
    :catch_10d
    move-exception v2

    .line 1841
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11e

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_122

    .line 1842
    :cond_11e
    const/16 v3, 0xb

    goto/16 :goto_8a

    .line 1844
    :cond_122
    const/4 v0, 0x1

    goto/16 :goto_8a

    .line 1854
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v6       #valid_row:I
    :cond_125
    if-nez v3, :cond_ad

    .line 1856
    const/4 v3, 0x1

    .line 1857
    const-string v7, "%d"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1858
    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1859
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(II)V
    invoke-static {v7, v10, v6}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$4(Lcom/infraware/office/baseframe/EvBaseEditorActivity;II)V

    goto/16 :goto_ad

    .line 1867
    .end local v6           #valid_row:I
    :cond_147
    iget-object v7, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$3;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mSplitCellsDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$3(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_d2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1799
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1796
    return-void
.end method
