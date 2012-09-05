.class Lcom/infraware/polarisoffice/common/InsertTableActivity$2;
.super Ljava/lang/Object;
.source "InsertTableActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/InsertTableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/InsertTableActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 12
    .parameter "s"

    .prologue
    const v9, 0x7f0c011a

    const/16 v8, 0x1e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 138
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, s_row:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_51

    .line 140
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iput v7, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    .line 159
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_DrawView:Lcom/infraware/polarisoffice/common/InsertTableDrawView;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v3, v3, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    iget-object v4, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v4, v4, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nCol:I

    invoke-virtual {v2, v3, v4}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->setRowCol(II)V

    .line 160
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_DrawView:Lcom/infraware/polarisoffice/common/InsertTableDrawView;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/InsertTableDrawView;->invalidate()V

    .line 162
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_ColView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_be

    .line 163
    :cond_47
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    invoke-virtual {v2, v9}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    :goto_50
    return-void

    .line 144
    :cond_51
    :try_start_51
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_59} :catch_b6

    .line 149
    :goto_59
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    if-lt v2, v6, :cond_65

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    if-le v2, v8, :cond_15

    .line 150
    :cond_65
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v3, v3, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    .line 151
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v3, v3, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    .line 152
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    const-string v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget v5, v5, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 154
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v2, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    iget-object v3, v3, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_RowView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 155
    :cond_af
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    #calls: Lcom/infraware/polarisoffice/common/InsertTableActivity;->onShowFieldValueError(II)V
    invoke-static {v2, v6, v8}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->access$0(Lcom/infraware/polarisoffice/common/InsertTableActivity;II)V

    goto/16 :goto_15

    .line 145
    :catch_b6
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    const/16 v3, 0x1f

    iput v3, v2, Lcom/infraware/polarisoffice/common/InsertTableActivity;->m_nRow:I

    goto :goto_59

    .line 165
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_be
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/InsertTableActivity$2;->this$0:Lcom/infraware/polarisoffice/common/InsertTableActivity;

    invoke-virtual {v2, v9}, Lcom/infraware/polarisoffice/common/InsertTableActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_50
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "sta0"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 168
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 170
    return-void
.end method
