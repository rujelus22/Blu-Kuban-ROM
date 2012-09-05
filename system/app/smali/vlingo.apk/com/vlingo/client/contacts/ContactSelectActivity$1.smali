.class Lcom/vlingo/client/contacts/ContactSelectActivity$1;
.super Ljava/lang/Object;
.source "ContactSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 134
    iput-object p1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$1;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 138
    .local v0, di:Lcom/vlingo/client/core/contacts/DisplayItem;
    if-eqz v0, :cond_34

    .line 139
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$1;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    iget-object v1, v1, Lcom/vlingo/client/contacts/ContactSelectActivity;->m_contactsMatcher:Lcom/vlingo/client/contacts/VLContactsMatcher;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v2

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/contacts/VLContactsMatcher;->notifyContactUsed(ILjava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/vlingo/client/contacts/ContactSelectActivity$1;->this$0:Lcom/vlingo/client/contacts/ContactSelectActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactId()I

    move-result v2

    invoke-virtual {v0}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vlingo/client/contacts/ContactSelectActivity;->onItemSelected(ILjava/lang/String;)V

    .line 143
    :cond_34
    return-void
.end method
