.class Lcom/infraware/polarisoffice/search/InputSearchKey$4;
.super Ljava/lang/Object;
.source "InputSearchKey.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$4;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 154
    const/4 v2, 0x3

    if-ne p2, v2, :cond_46

    .line 155
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$4;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v2, v2, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, searchKey:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_46

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_search_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$4;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->setResult(ILandroid/content/Intent;)V

    .line 163
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$4;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$4;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    invoke-static {v3}, Lcom/infraware/polarisoffice/search/SearchWordManager;->getInstance(Landroid/content/Context;)Lcom/infraware/polarisoffice/search/SearchWordManager;

    move-result-object v3

    #setter for: Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->access$2(Lcom/infraware/polarisoffice/search/InputSearchKey;Lcom/infraware/polarisoffice/search/SearchWordManager;)V

    .line 164
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$4;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    #getter for: Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;
    invoke-static {v2}, Lcom/infraware/polarisoffice/search/InputSearchKey;->access$3(Lcom/infraware/polarisoffice/search/InputSearchKey;)Lcom/infraware/polarisoffice/search/SearchWordManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/infraware/polarisoffice/search/SearchWordManager;->insertWordToDB(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$4;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    .line 167
    const/4 v2, 0x1

    .line 170
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #searchKey:Ljava/lang/String;
    :goto_45
    return v2

    :cond_46
    const/4 v2, 0x0

    goto :goto_45
.end method
