.class Lcom/sprint/smps/SMPSClient$SMPSStartup;
.super Ljava/lang/Object;
.source "SMPSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/smps/SMPSClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMPSStartup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/SMPSClient;


# direct methods
.method constructor <init>(Lcom/sprint/smps/SMPSClient;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/sprint/smps/SMPSClient$SMPSStartup;)Lcom/sprint/smps/SMPSClient;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/smps/SMPSClient$SMPSStartup;->this$0:Lcom/sprint/smps/SMPSClient;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 54
    sget-object v1, Lcom/sprint/smps/properties/Properties;->smpsApi:Lcom/sprint/smps/service/SMPSService;

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v2

    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v3

    invoke-static {v3}, Lcom/sprint/smps/util/Utilities;->getMdn(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sprint/smps/service/SMPSService;->isUserRegistered(Landroid/app/Activity;Ljava/lang/String;)Lcom/sprint/smps/service/ClientResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/smps/SMPSClient;->access$1(Lcom/sprint/smps/service/ClientResponse;)V

    .line 56
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$2()Z

    move-result v1

    if-nez v1, :cond_27

    .line 58
    new-instance v0, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;

    invoke-direct {v0, p0}, Lcom/sprint/smps/SMPSClient$SMPSStartup$1;-><init>(Lcom/sprint/smps/SMPSClient$SMPSStartup;)V

    .line 145
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Lcom/sprint/smps/SMPSClient;->access$0()Lcom/sprint/smps/SMPSClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sprint/smps/SMPSClient;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 147
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_27
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sprint/smps/SMPSClient;->access$6(Lcom/sprint/smps/SMPSClient$SMPSStartup;)V

    .line 148
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sprint/smps/SMPSClient;->access$7(Z)V

    .line 149
    return-void
.end method
