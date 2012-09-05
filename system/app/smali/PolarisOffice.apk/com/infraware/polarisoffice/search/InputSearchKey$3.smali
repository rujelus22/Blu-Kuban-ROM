.class Lcom/infraware/polarisoffice/search/InputSearchKey$3;
.super Ljava/lang/Object;
.source "InputSearchKey.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/search/InputSearchKey;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$3;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "s"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$3;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v1, v1, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, searchKey:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1f

    .line 128
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$3;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v1, v1, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 131
    :goto_1e
    return-void

    .line 130
    :cond_1f
    iget-object v1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$3;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v1, v1, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1e
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 134
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 141
    if-nez p2, :cond_12

    if-nez p4, :cond_12

    .line 142
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$3;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v0, v0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 147
    :goto_c
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$3;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    #calls: Lcom/infraware/polarisoffice/search/InputSearchKey;->onKeyChanged()V
    invoke-static {v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->access$4(Lcom/infraware/polarisoffice/search/InputSearchKey;)V

    .line 148
    return-void

    .line 144
    :cond_12
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$3;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v0, v0, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_btnSearch:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    goto :goto_c
.end method
