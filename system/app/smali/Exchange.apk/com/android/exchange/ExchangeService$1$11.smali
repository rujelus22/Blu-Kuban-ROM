.class Lcom/android/exchange/ExchangeService$1$11;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->deviceInfoStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$11;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput p2, p0, Lcom/android/exchange/ExchangeService$1$11;->val$status:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 671
    iget v0, p0, Lcom/android/exchange/ExchangeService$1$11;->val$status:I

    invoke-interface {p1, v0}, Lcom/android/emailcommon/service/IEmailServiceCallback;->deviceInfoStatus(I)V

    .line 672
    return-void
.end method
