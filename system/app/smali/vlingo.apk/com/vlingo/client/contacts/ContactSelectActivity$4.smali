.class Lcom/vlingo/client/contacts/ContactSelectActivity$4;
.super Landroid/os/Handler;
.source "ContactSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/contacts/ContactSelectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/contacts/ContactSelectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 172
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_a0

    .line 197
    :goto_6
    return-void

    .line 174
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->removeMessages(I)V

    .line 175
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget v4, v4, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_recognizerConfidenceScore:F

    invoke-virtual {v2, v3, v4}, Lcom/vlingo/client/contacts/ContactSelectActivity;->executeSearch(Ljava/lang/String;F)V

    goto :goto_6

    .line 178
    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, query:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v2, v2, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v2, v2, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_searchBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 181
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_recognizerConfidenceScore:F

    invoke-virtual {v2, v1, v3}, Lcom/vlingo/client/contacts/ContactSelectActivity;->executeSearch(Ljava/lang/String;F)V

    goto :goto_6

    .line 184
    .end local v1           #query:Ljava/lang/String;
    :pswitch_4e
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    const-class v3, Lcom/vlingo/client/contacts/AutoDialActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.vlingo.client.autodial.name"

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v2, "com.vlingo.client.autodial.contact_id"

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    iget v3, v3, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v2, "com.vlingo.client.autodial.address"

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v2, "com.vlingo.client.autodial.address_type"

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactAdapter:Lcom/vlingo/client/contacts/ContactsListAdapter;

    iget-object v3, v3, Lcom/vlingo/client/contacts/ContactsListAdapter;->m_topChoiceDetailType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v2, "com.vlingo.client.autodial.countdownTime"

    iget-object v3, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget v3, v3, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_autodialCountdownTimeMs:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const/high16 v2, 0x4008

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-virtual {v2, v0, v4}, Lcom/vlingo/client/contacts/ContactSelectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_6

    .line 194
    .end local v0           #i:Landroid/content/Intent;
    :pswitch_98
    iget-object v2, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$4;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-virtual {v2}, Lcom/vlingo/client/contacts/ContactSelectActivity;->finish()V

    goto/16 :goto_6

    .line 172
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_20
        :pswitch_4e
        :pswitch_98
    .end packed-switch
.end method
