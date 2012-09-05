.class Lcom/android/exchange/ExchangeService$1$7;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->folderCommandStatus(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$command:I

.field final synthetic val$mailboxId:J

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;IJI)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$7;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput p2, p0, Lcom/android/exchange/ExchangeService$1$7;->val$command:I

    iput-wide p3, p0, Lcom/android/exchange/ExchangeService$1$7;->val$mailboxId:J

    iput p5, p0, Lcom/android/exchange/ExchangeService$1$7;->val$statusCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 6
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    const-string v0, "Deepak"

    const-string v1, "xCallbackProxy : calling folderCommandStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget v0, p0, Lcom/android/exchange/ExchangeService$1$7;->val$command:I

    iget-wide v1, p0, Lcom/android/exchange/ExchangeService$1$7;->val$mailboxId:J

    iget v3, p0, Lcom/android/exchange/ExchangeService$1$7;->val$statusCode:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailServiceCallback;->folderCommandStatus(IJI)V

    .line 612
    return-void
.end method
