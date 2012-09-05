.class Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;
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
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    .line 1709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 13
    .parameter "s"

    .prologue
    const/4 v10, -0x1

    const/16 v9, 0x7f

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1718
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_8f

    .line 1719
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1720
    .local v3, sizeEditText:Landroid/widget/EditText;
    const/4 v1, 0x1

    .line 1722
    .local v1, fontSize:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    if-eqz v4, :cond_76

    .line 1724
    :try_start_23
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2a} :catch_90

    move-result v1

    .line 1728
    :goto_2b
    if-lez v1, :cond_2f

    if-le v1, v9, :cond_76

    .line 1729
    :cond_2f
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1730
    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1731
    const-string v4, "%d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1732
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 1734
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    invoke-virtual {v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08026e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1735
    .local v2, formattedString:Ljava/lang/String;
    if-eqz v2, :cond_76

    .line 1736
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->onToastMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$1(Lcom/infraware/office/baseframe/EvBaseEditorActivity;Ljava/lang/String;)V

    .line 1740
    .end local v2           #formattedString:Ljava/lang/String;
    :cond_76
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-eqz v4, :cond_82

    if-ge v1, v7, :cond_94

    .line 1741
    :cond_82
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1745
    .end local v1           #fontSize:I
    .end local v3           #sizeEditText:Landroid/widget/EditText;
    :cond_8f
    :goto_8f
    return-void

    .line 1725
    .restart local v1       #fontSize:I
    .restart local v3       #sizeEditText:Landroid/widget/EditText;
    :catch_90
    move-exception v0

    .line 1726
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v1, 0x80

    goto :goto_2b

    .line 1743
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_94
    iget-object v4, p0, Lcom/infraware/office/baseframe/EvBaseEditorActivity$2;->this$0:Lcom/infraware/office/baseframe/EvBaseEditorActivity;

    #getter for: Lcom/infraware/office/baseframe/EvBaseEditorActivity;->mFontSizeOthersDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/infraware/office/baseframe/EvBaseEditorActivity;->access$2(Lcom/infraware/office/baseframe/EvBaseEditorActivity;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8f
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1714
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1711
    return-void
.end method
