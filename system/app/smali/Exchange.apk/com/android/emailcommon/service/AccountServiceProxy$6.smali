.class Lcom/android/emailcommon/service/AccountServiceProxy$6;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->notifySendResult(JJZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J

.field final synthetic val$sendfailed:Z

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;JJZLjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$accountId:J

    iput-wide p4, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$messageId:J

    iput-boolean p6, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$sendfailed:Z

    iput-object p7, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$title:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

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
    .line 97
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #getter for: Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;
    invoke-static {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$accountId:J

    iget-wide v3, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$messageId:J

    iget-boolean v5, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$sendfailed:Z

    iget-object v6, p0, Lcom/android/emailcommon/service/AccountServiceProxy$6;->val$title:Ljava/lang/String;

    invoke-interface/range {v0 .. v6}, Lcom/android/emailcommon/service/IAccountService;->notifySendResult(JJZLjava/lang/String;)V

    .line 98
    return-void
.end method
