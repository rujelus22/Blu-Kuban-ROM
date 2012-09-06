.class Lcom/android/emailcommon/service/AccountServiceProxy$5;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

.field final synthetic val$accountType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$5;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$5;->val$accountType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$5;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$5;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #getter for: Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;
    invoke-static {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$5;->val$accountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IAccountService;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    #setter for: Lcom/android/emailcommon/service/AccountServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$102(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method
