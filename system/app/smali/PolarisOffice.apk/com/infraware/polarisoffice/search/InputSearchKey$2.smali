.class Lcom/infraware/polarisoffice/search/InputSearchKey$2;
.super Ljava/lang/Object;
.source "InputSearchKey.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$2;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_9

    .line 116
    :cond_8
    :goto_8
    return v2

    .line 89
    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_8

    .line 92
    sparse-switch p2, :sswitch_data_5a

    goto :goto_8

    .line 95
    :sswitch_14
    iget-object v4, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$2;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v4, v4, Lcom/infraware/polarisoffice/search/InputSearchKey;->m_etSearchKey:Lcom/infraware/polarisoffice/common/ExEditText;

    invoke-virtual {v4}, Lcom/infraware/polarisoffice/common/ExEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, searchKey:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 97
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_56

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "key_search_key"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$2;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->setResult(ILandroid/content/Intent;)V

    .line 103
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$2;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    iget-object v4, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$2;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    invoke-static {v4}, Lcom/infraware/polarisoffice/search/SearchWordManager;->getInstance(Landroid/content/Context;)Lcom/infraware/polarisoffice/search/SearchWordManager;

    move-result-object v4

    #setter for: Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;
    invoke-static {v3, v4}, Lcom/infraware/polarisoffice/search/InputSearchKey;->access$2(Lcom/infraware/polarisoffice/search/InputSearchKey;Lcom/infraware/polarisoffice/search/SearchWordManager;)V

    .line 104
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$2;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    #getter for: Lcom/infraware/polarisoffice/search/InputSearchKey;->searchWord:Lcom/infraware/polarisoffice/search/SearchWordManager;
    invoke-static {v3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->access$3(Lcom/infraware/polarisoffice/search/InputSearchKey;)Lcom/infraware/polarisoffice/search/SearchWordManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/infraware/polarisoffice/search/SearchWordManager;->insertWordToDB(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$2;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    goto :goto_8

    .end local v0           #intent:Landroid/content/Intent;
    :cond_56
    move v2, v3

    .line 109
    goto :goto_8

    .end local v1           #searchKey:Ljava/lang/String;
    :sswitch_58
    move v2, v3

    .line 114
    goto :goto_8

    .line 92
    :sswitch_data_5a
    .sparse-switch
        0x42 -> :sswitch_14
        0x52 -> :sswitch_58
        0x54 -> :sswitch_58
    .end sparse-switch
.end method
