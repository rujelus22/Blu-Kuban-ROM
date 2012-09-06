.class Lcom/android/emailcommon/service/EmailServiceProxy$4;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$hostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;Lcom/android/emailcommon/provider/HostAuth;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-object p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->val$hostAuth:Lcom/android/emailcommon/provider/HostAuth;

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
    .line 195
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 196
    :cond_17
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$4;->val$hostAuth:Lcom/android/emailcommon/provider/HostAuth;

    invoke-interface {v1, v2}, Lcom/android/emailcommon/service/IEmailService;->validate(Lcom/android/emailcommon/provider/HostAuth;)Landroid/os/Bundle;

    move-result-object v1

    #setter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$202(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method
