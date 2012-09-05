.class Lcom/android/exchange/ExchangeService$10$1;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$10;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$10;)V
    .registers 2
    .parameter

    .prologue
    .line 3922
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$10$1;->this$1:Lcom/android/exchange/ExchangeService$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3926
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_14

    .line 3929
    :goto_5
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$10$1;->this$1:Lcom/android/exchange/ExchangeService$10;

    iget-object v0, v0, Lcom/android/exchange/ExchangeService$10;->this$0:Lcom/android/exchange/ExchangeService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3931
    return-void

    .line 3927
    :catch_14
    move-exception v0

    goto :goto_5
.end method
