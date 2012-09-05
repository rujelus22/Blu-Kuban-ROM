.class Lcom/sprint/smps/activities/DeleteSMPSAccount$1;
.super Ljava/lang/Object;
.source "DeleteSMPSAccount.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/activities/DeleteSMPSAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/DeleteSMPSAccount;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;->this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 39
    sget-object v2, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-static {}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->access$0()Lcom/sprint/smps/activities/DeleteSMPSAccount;

    move-result-object v3

    invoke-static {v3}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sprint/smps/service/SMPSService;->deleteAccount(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    .line 40
    .local v0, response:Lcom/sprint/smps/service/ClientResponse;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 42
    invoke-static {}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->access$0()Lcom/sprint/smps/activities/DeleteSMPSAccount;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->removeDialog(I)V

    .line 43
    iget-object v2, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;->this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    const-string v3, "Delete"

    const-string v4, "Account deleted."

    iget-object v5, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;->this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    #calls: Lcom/sprint/smps/activities/DeleteSMPSAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v2, v3, v4, v5}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->access$1(Lcom/sprint/smps/activities/DeleteSMPSAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "Deleted"

    const-string v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v2, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v3, "Delete SMW Account"

    invoke-virtual {v2, v3, v1}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    .end local v1           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_42
    return-void

    .line 51
    :cond_43
    iget-object v2, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;->this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    #setter for: Lcom/sprint/smps/activities/DeleteSMPSAccount;->successful:Z
    invoke-static {v2, v4}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->access$2(Lcom/sprint/smps/activities/DeleteSMPSAccount;Z)V

    .line 52
    invoke-static {}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->access$0()Lcom/sprint/smps/activities/DeleteSMPSAccount;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->removeDialog(I)V

    .line 53
    iget-object v2, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;->this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    const-string v3, "Delete"

    const-string v4, "Unable to delete account."

    iget-object v5, p0, Lcom/sprint/smps/activities/DeleteSMPSAccount$1;->this$0:Lcom/sprint/smps/activities/DeleteSMPSAccount;

    #calls: Lcom/sprint/smps/activities/DeleteSMPSAccount;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    invoke-static {v2, v3, v4, v5}, Lcom/sprint/smps/activities/DeleteSMPSAccount;->access$1(Lcom/sprint/smps/activities/DeleteSMPSAccount;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_42
.end method
