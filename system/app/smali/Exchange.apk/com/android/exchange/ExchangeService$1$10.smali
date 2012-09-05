.class Lcom/android/exchange/ExchangeService$1$10;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->refreshIRMTemplatesStatus(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$accountId:J

.field final synthetic val$progress:I

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;JII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$10;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$1$10;->val$accountId:J

    iput p4, p0, Lcom/android/exchange/ExchangeService$1$10;->val$statusCode:I

    iput p5, p0, Lcom/android/exchange/ExchangeService$1$10;->val$progress:I

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
    .line 653
    iget-wide v0, p0, Lcom/android/exchange/ExchangeService$1$10;->val$accountId:J

    iget v2, p0, Lcom/android/exchange/ExchangeService$1$10;->val$statusCode:I

    iget v3, p0, Lcom/android/exchange/ExchangeService$1$10;->val$progress:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/emailcommon/service/IEmailServiceCallback;->refreshIRMTemplatesStatus(JII)V

    .line 654
    return-void
.end method
