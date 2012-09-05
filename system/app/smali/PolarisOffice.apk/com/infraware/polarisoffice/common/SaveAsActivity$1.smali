.class Lcom/infraware/polarisoffice/common/SaveAsActivity$1;
.super Ljava/lang/Object;
.source "SaveAsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/common/SaveAsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/SaveAsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$1;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 228
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 230
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 233
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, value:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 235
    .local v1, nLen:I
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$1;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    const v4, 0x7f0c00bf

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 236
    .local v0, btnSave:Landroid/widget/Button;
    if-nez v1, :cond_1e

    .line 237
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 254
    :goto_1d
    return-void

    .line 240
    :cond_1e
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_31

    .line 242
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$1;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    const/16 v4, -0x9

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->onToastMessage(I)V

    .line 243
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d

    .line 247
    :cond_31
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$1;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    #calls: Lcom/infraware/polarisoffice/common/SaveAsActivity;->checkFile(Ljava/lang/String;)Z
    invoke-static {v3, v2}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->access$0(Lcom/infraware/polarisoffice/common/SaveAsActivity;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 249
    iget-object v3, p0, Lcom/infraware/polarisoffice/common/SaveAsActivity$1;->this$0:Lcom/infraware/polarisoffice/common/SaveAsActivity;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/infraware/polarisoffice/common/SaveAsActivity;->onToastMessage(I)V

    .line 250
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d

    .line 253
    :cond_43
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1d
.end method
