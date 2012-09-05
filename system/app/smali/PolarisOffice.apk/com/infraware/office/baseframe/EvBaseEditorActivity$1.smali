.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 14
    .parameter "s"

    .prologue
    .line 527
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_139

    .line 528
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    const v9, 0x7f0c0012

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 529
    .local v7, widthEditText:Landroid/widget/EditText;
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    const v9, 0x7f0c0014

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 530
    .local v3, heightEditText:Landroid/widget/EditText;
    const/4 v6, 0x2

    .line 531
    .local v6, width:I
    const/4 v2, 0x2

    .line 533
    .local v2, height:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v8

    if-eqz v8, :cond_110

    .line 534
    const/16 v5, 0x22e

    .line 535
    .local v5, maxWidth:I
    const/16 v4, 0x22e

    .line 536
    .local v4, maxHeight:I
    invoke-virtual {v7}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 538
    :try_start_38
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_43} :catch_13a

    move-result v6

    .line 542
    :goto_44
    if-lez v6, :cond_48

    if-le v6, v5, :cond_95

    .line 543
    :cond_48
    const/4 v8, 0x2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 544
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 545
    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    invoke-virtual {v7}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 548
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08026e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, formattedString:Ljava/lang/String;
    if-eqz v1, :cond_95

    .line 550
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$1(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V

    .line 554
    .end local v1           #formattedString:Ljava/lang/String;
    :cond_95
    :try_start_95
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_a0} :catch_13f

    move-result v2

    .line 559
    :cond_a1
    :goto_a1
    invoke-virtual {v3}, Landroid/widget/EditText;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_110

    .line 561
    :try_start_a7
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b2
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_b2} :catch_143

    move-result v2

    .line 565
    :goto_b3
    if-lez v2, :cond_b7

    if-le v2, v4, :cond_104

    .line 566
    :cond_b7
    const/4 v8, 0x2

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 567
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 568
    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 571
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08026e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 572
    .restart local v1       #formattedString:Ljava/lang/String;
    if-eqz v1, :cond_104

    .line 573
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$1(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V

    .line 576
    .end local v1           #formattedString:Ljava/lang/String;
    :cond_104
    :try_start_104
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10f
    .catch Ljava/lang/NumberFormatException; {:try_start_104 .. :try_end_10f} :catch_148

    move-result v6

    .line 583
    .end local v4           #maxHeight:I
    .end local v5           #maxWidth:I
    :cond_110
    :goto_110
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-eqz v8, :cond_12a

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-eqz v8, :cond_12a

    const/4 v8, 0x2

    if-lt v6, v8, :cond_12a

    const/4 v8, 0x2

    if-ge v2, v8, :cond_14b

    .line 584
    :cond_12a
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 588
    .end local v2           #height:I
    .end local v3           #heightEditText:Landroid/widget/EditText;
    .end local v6           #width:I
    .end local v7           #widthEditText:Landroid/widget/EditText;
    :cond_139
    :goto_139
    return-void

    .line 539
    .restart local v2       #height:I
    .restart local v3       #heightEditText:Landroid/widget/EditText;
    .restart local v4       #maxHeight:I
    .restart local v5       #maxWidth:I
    .restart local v6       #width:I
    .restart local v7       #widthEditText:Landroid/widget/EditText;
    :catch_13a
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/NumberFormatException;
    add-int/lit8 v6, v5, 0x1

    goto/16 :goto_44

    .line 555
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_13f
    move-exception v0

    .line 556
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    goto/16 :goto_a1

    .line 562
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_143
    move-exception v0

    .line 563
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_b3

    .line 577
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_148
    move-exception v0

    .line 578
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x1

    goto :goto_110

    .line 586
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v4           #maxHeight:I
    .end local v5           #maxWidth:I
    :cond_14b
    iget-object v8, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$1;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mResizeDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$0(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_139
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 523
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 520
    return-void
.end method
