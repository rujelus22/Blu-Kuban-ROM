.class Lcom/sprint/smps/activities/ViewAddressBook$2;
.super Ljava/lang/Object;
.source "ViewAddressBook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ViewAddressBook;->retrieveData()V
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
    iput-object p1, p0, Lcom/sprint/smps/activities/ViewAddressBook$2;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/activities/ViewAddressBook$2;)Lcom/sprint/smps/activities/ViewAddressBook;
    .registers 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$2;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 150
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-interface {v0}, Lcom/sprint/smps/service/SMPSService;->getUserAddressBook()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    .line 151
    sget-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    if-eqz v0, :cond_37

    sget-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_37

    sget-object v0, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_37

    .line 154
    sget-object v0, Lcom/sprint/smps/properties/Properties;->user:Lcom/sprint/smps/service/ClientResponse;

    sget-object v1, Lcom/sprint/smps/activities/ViewAddressBook;->response:Lcom/sprint/smps/service/ClientResponse;

    invoke-virtual {v1}, Lcom/sprint/smps/service/ClientResponse;->getLstAddress()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/service/ClientResponse;->setLstAddress(Ljava/util/List;)V

    .line 156
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$2;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    iget-object v1, p0, Lcom/sprint/smps/activities/ViewAddressBook$2;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    #getter for: Lcom/sprint/smps/activities/ViewAddressBook;->showList:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/ViewAddressBook;->access$1(Lcom/sprint/smps/activities/ViewAddressBook;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    :goto_36
    return-void

    .line 160
    :cond_37
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$2;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    new-instance v1, Lcom/sprint/smps/activities/ViewAddressBook$2$1;

    invoke-direct {v1, p0}, Lcom/sprint/smps/activities/ViewAddressBook$2$1;-><init>(Lcom/sprint/smps/activities/ViewAddressBook$2;)V

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 169
    iget-object v0, p0, Lcom/sprint/smps/activities/ViewAddressBook$2;->this$0:Lcom/sprint/smps/activities/ViewAddressBook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/ViewAddressBook;->removeDialog(I)V

    goto :goto_36
.end method
