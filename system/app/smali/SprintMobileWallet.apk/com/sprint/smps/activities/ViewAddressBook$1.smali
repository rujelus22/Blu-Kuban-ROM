.class Lcom/sprint/smps/activities/ViewAddressBook$1;
.super Ljava/lang/Object;
.source "ViewAddressBook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/ViewAddressBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ViewAddressBook;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ViewAddressBook;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewAddressBook$1;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v2, 0x4

    .line 44
    sget-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v0, :cond_3b

    .line 46
    invoke-static {}, Lcom/sprint/smps/activities/ViewAddressBook;->access$0()Lcom/sprint/smps/activities/ViewAddressBook;

    move-result-object v0

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    invoke-static {}, Lcom/sprint/smps/activities/ViewAddressBook;->access$0()Lcom/sprint/smps/activities/ViewAddressBook;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$1;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    new-instance v1, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;

    iget-object v2, p0, Lcom/sprint/smps/activities/ViewAddressBook$1;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    invoke-static {}, Lcom/sprint/smps/activities/ViewAddressBook;->access$0()Lcom/sprint/smps/activities/ViewAddressBook;

    move-result-object v3

    sget-object v4, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v4}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/sprint/smps/activities/ViewAddressBook$AddressListAdapter;-><init>(Lcom/sprint/smps/activities/ViewAddressBook;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    :cond_3b
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$1;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->removeDialog(I)V

    .line 52
    return-void
.end method
