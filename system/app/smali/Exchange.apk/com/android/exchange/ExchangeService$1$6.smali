.class Lcom/android/exchange/ExchangeService$1$6;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->oOOfStatus(JIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$accountId:J

.field final synthetic val$oooResults:Landroid/os/Bundle;

.field final synthetic val$progress:I

.field final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;JIILandroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$6;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$1$6;->val$accountId:J

    iput p4, p0, Lcom/android/exchange/ExchangeService$1$6;->val$statusCode:I

    iput p5, p0, Lcom/android/exchange/ExchangeService$1$6;->val$progress:I

    iput-object p6, p0, Lcom/android/exchange/ExchangeService$1$6;->val$oooResults:Landroid/os/Bundle;

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
    .line 594
    iget-wide v1, p0, Lcom/android/exchange/ExchangeService$1$6;->val$accountId:J

    iget v3, p0, Lcom/android/exchange/ExchangeService$1$6;->val$statusCode:I

    iget v4, p0, Lcom/android/exchange/ExchangeService$1$6;->val$progress:I

    iget-object v5, p0, Lcom/android/exchange/ExchangeService$1$6;->val$oooResults:Landroid/os/Bundle;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/emailcommon/service/IEmailServiceCallback;->oOOfStatus(JIILandroid/os/Bundle;)V

    .line 595
    return-void
.end method
