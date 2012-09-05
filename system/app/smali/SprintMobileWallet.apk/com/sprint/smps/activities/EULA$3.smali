.class Lcom/sprint/smps/activities/EULA$3;
.super Ljava/lang/Object;
.source "EULA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/EULA;->retrieveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/EULA;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/EULA;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/EULA$3;->this$0:Lcom/sprint/smps/activities/EULA;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/sprint/smps/activities/EULA;->access$0()Lcom/sprint/smps/pojo/TermsAndConditions;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 138
    sget-object v0, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sprint/smps/service/SMPSService;->getTermsAndConditions(Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/smps/activities/EULA;->access$1(Lcom/sprint/smps/service/ClientResponse;)V

    .line 139
    invoke-static {}, Lcom/sprint/smps/activities/EULA;->access$2()Lcom/sprint/smps/service/ClientResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprint/smps/service/ClientResponse;->getTermsAndConditions()Lcom/sprint/smps/pojo/TermsAndConditions;

    move-result-object v0

    invoke-static {v0}, Lcom/sprint/smps/activities/EULA;->access$3(Lcom/sprint/smps/pojo/TermsAndConditions;)V

    .line 142
    :cond_1b
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 143
    iget-object v0, p0, Lcom/sprint/smps/activities/EULA$3;->this$0:Lcom/sprint/smps/activities/EULA;

    iget-object v1, p0, Lcom/sprint/smps/activities/EULA$3;->this$0:Lcom/sprint/smps/activities/EULA;

    #getter for: Lcom/sprint/smps/activities/EULA;->showData:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sprint/smps/activities/EULA;->access$4(Lcom/sprint/smps/activities/EULA;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sprint/smps/activities/EULA;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
