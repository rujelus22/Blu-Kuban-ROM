.class Lcom/android/exchange/ExchangeService$1$12;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->sendMeetingEditedResponseCallback(ZJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$draftId:J

.field final synthetic val$messageId:J

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;ZJJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$12;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput-boolean p2, p0, Lcom/android/exchange/ExchangeService$1$12;->val$success:Z

    iput-wide p3, p0, Lcom/android/exchange/ExchangeService$1$12;->val$messageId:J

    iput-wide p5, p0, Lcom/android/exchange/ExchangeService$1$12;->val$draftId:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 8
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    iget-boolean v1, p0, Lcom/android/exchange/ExchangeService$1$12;->val$success:Z

    iget-wide v2, p0, Lcom/android/exchange/ExchangeService$1$12;->val$messageId:J

    iget-wide v4, p0, Lcom/android/exchange/ExchangeService$1$12;->val$draftId:J

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMeetingEditedResponseCallback(ZJJ)V

    .line 691
    return-void
.end method
