.class Lcom/android/emailcommon/service/EmailServiceProxy$12;
.super Ljava/lang/Object;
.source "EmailServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/EmailServiceProxy;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$destMailboxId:J

.field final synthetic val$searchParams:Lcom/android/emailcommon/service/SearchParams;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/EmailServiceProxy;JLcom/android/emailcommon/service/SearchParams;J)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$accountId:J

    iput-object p4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    iput-wide p5, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$destMailboxId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mCallback:Lcom/android/emailcommon/service/IEmailServiceCallback;
    invoke-static {v1}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$000(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/emailcommon/service/IEmailService;->setCallback(Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    .line 393
    :cond_17
    iget-object v6, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    iget-object v0, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->this$0:Lcom/android/emailcommon/service/EmailServiceProxy;

    #getter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mService:Lcom/android/emailcommon/service/IEmailService;
    invoke-static {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$100(Lcom/android/emailcommon/service/EmailServiceProxy;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$accountId:J

    iget-object v3, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$searchParams:Lcom/android/emailcommon/service/SearchParams;

    iget-wide v4, p0, Lcom/android/emailcommon/service/EmailServiceProxy$12;->val$destMailboxId:J

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailService;->searchMessages(JLcom/android/emailcommon/service/SearchParams;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    #setter for: Lcom/android/emailcommon/service/EmailServiceProxy;->mReturn:Ljava/lang/Object;
    invoke-static {v6, v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->access$202(Lcom/android/emailcommon/service/EmailServiceProxy;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method
