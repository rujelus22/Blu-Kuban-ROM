.class Lcom/android/exchange/ExchangeService$1$2;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$1;->sendMessageStatus(JJLjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService$1;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J

.field final synthetic val$progress:I

.field final synthetic val$status:I

.field final synthetic val$subject:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$1;JJLjava/lang/String;II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$1$2;->this$0:Lcom/android/exchange/ExchangeService$1;

    iput-wide p2, p0, Lcom/android/exchange/ExchangeService$1$2;->val$accountId:J

    iput-wide p4, p0, Lcom/android/exchange/ExchangeService$1$2;->val$messageId:J

    iput-object p6, p0, Lcom/android/exchange/ExchangeService$1$2;->val$subject:Ljava/lang/String;

    iput p7, p0, Lcom/android/exchange/ExchangeService$1$2;->val$status:I

    iput p8, p0, Lcom/android/exchange/ExchangeService$1$2;->val$progress:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/android/emailcommon/service/IEmailServiceCallback;)V
    .registers 10
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    iget-wide v1, p0, Lcom/android/exchange/ExchangeService$1$2;->val$accountId:J

    iget-wide v3, p0, Lcom/android/exchange/ExchangeService$1$2;->val$messageId:J

    iget-object v5, p0, Lcom/android/exchange/ExchangeService$1$2;->val$subject:Ljava/lang/String;

    iget v6, p0, Lcom/android/exchange/ExchangeService$1$2;->val$status:I

    iget v7, p0, Lcom/android/exchange/ExchangeService$1$2;->val$progress:I

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/emailcommon/service/IEmailServiceCallback;->sendMessageStatus(JJLjava/lang/String;II)V

    .line 557
    return-void
.end method
