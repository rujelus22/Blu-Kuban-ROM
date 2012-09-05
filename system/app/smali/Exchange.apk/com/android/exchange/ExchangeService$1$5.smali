.class Lcom/android/exchange/ExchangeService$1$5;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->moveItemStatus(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$mailboxId:J

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;JI)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$5;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$1$5;->val$mailboxId:J

    iput p4, p0, Lcom/android/exchange/ExchangeService$1$5;->val$statusCode:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 5
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 583
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$1$5;->val$mailboxId:J

    iget v2, p0, Lcom/android/exchange/ExchangeService$1$5;->val$statusCode:I

    invoke-interface {p1, v0, v1, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->moveItemStatus(JI)V

    .line 584
    return-void
.end method
