.class Lcom/android/emailcommon/service/AccountServiceProxy$3;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

.field final synthetic val$accountManagerType:Ljava/lang/String;

.field final synthetic val$protocol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$protocol:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$accountManagerType:Ljava/lang/String;

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
    .line 73
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #getter for: Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;
    invoke-static {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$protocol:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$accountManagerType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/service/IAccountService;->reconcileAccounts(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
