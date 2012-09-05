.class Lcom/android/emailcommon/service/AccountServiceProxy$3;
.super Ljava/lang/Object;
.source "AccountServiceProxy.java"

# interfaces
.implements Lcom/android/emailcommon/service/ServiceProxy$ProxyTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/service/AccountServiceProxy;->notifyNewMessages(JJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

.field final synthetic val$accountId:J

.field final synthetic val$lastestMsgId:J

.field final synthetic val$messageCount:I


# direct methods
.method constructor <init>(Lcom/android/emailcommon/service/AccountServiceProxy;JJI)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    iput-wide p2, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$accountId:J

    iput-wide p4, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$lastestMsgId:J

    iput p6, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$messageCount:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->this$0:Lcom/android/emailcommon/service/AccountServiceProxy;

    #getter for: Lcom/android/emailcommon/service/AccountServiceProxy;->mService:Lcom/android/emailcommon/service/IAccountService;
    invoke-static {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->access$000(Lcom/android/emailcommon/service/AccountServiceProxy;)Lcom/android/emailcommon/service/IAccountService;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$accountId:J

    iget-wide v3, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$lastestMsgId:J

    iget v5, p0, Lcom/android/emailcommon/service/AccountServiceProxy$3;->val$messageCount:I

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IAccountService;->notifyNewMessages(JJI)V

    .line 69
    return-void
.end method
