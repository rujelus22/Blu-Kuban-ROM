.class Lcom/infraware/polarisoffice/common/ParagraphActivity$4;
.super Ljava/lang/Object;
.source "ParagraphActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/ParagraphActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/ParagraphActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_100

    .line 217
    :goto_7
    return-void

    .line 187
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "id_halign"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mHAlign:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$4(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mbSlide:Z
    invoke-static {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$0(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 190
    const-string v1, "id_valign"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mVAlign:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$5(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    :cond_2b
    const-string v1, "id_left_indent"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLeftIndentEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$6(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 192
    const-string v1, "id_right_indent"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mRightIndentEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$7(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 193
    const-string v1, "id_firstline_indent_type"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstLineIndentType:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$8(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    const-string v1, "id_firstline_indent"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mFirstlineIndentEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$9(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 195
    const-string v1, "id_line_space_type"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceType:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$10(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    const-string v1, "id_line_space"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mLineSpaceEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$11(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 197
    const-string v1, "id_before_space"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBeforeSpaceEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$12(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 198
    const-string v1, "id_after_space"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mAfterSpaceEdit:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$13(Lcom/infraware/polarisoffice/common/ParagraphActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 199
    const-string v1, "id_ParaDirection"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mDirection:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$14(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v1, "id_bUndo"

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    #getter for: Lcom/infraware/polarisoffice/common/ParagraphActivity;->mBUndo:I
    invoke-static {v2}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->access$15(Lcom/infraware/polarisoffice/common/ParagraphActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->finish()V

    goto/16 :goto_7

    .line 207
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_ee
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->finish()V

    goto/16 :goto_7

    .line 212
    :sswitch_f5
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/ParagraphActivity$4;->this$0:Lcom/infraware/polarisoffice/common/ParagraphActivity;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ParagraphActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->playKeyClickSoundEffect(Landroid/content/Context;)V

    goto/16 :goto_7

    .line 185
    :sswitch_data_100
    .sparse-switch
        0x7f0c015e -> :sswitch_f5
        0x7f0c0163 -> :sswitch_f5
        0x7f0c0166 -> :sswitch_f5
        0x7f0c0176 -> :sswitch_8
        0x7f0c0177 -> :sswitch_ee
    .end sparse-switch
.end method
