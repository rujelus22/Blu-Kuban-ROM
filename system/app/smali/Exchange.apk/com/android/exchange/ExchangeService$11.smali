.class Lcom/android/exchange/ExchangeService$11;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .registers 2
    .parameter

    .prologue
    .line 3967
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$11;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3972
    :try_start_0
    new-instance v1, Lcom/android/emailcommon/service/AccountServiceProxy;

    iget-object v2, p0, Lcom/android/exchange/ExchangeService$11;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v2}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/emailcommon/service/AccountServiceProxy;->restoreAccountsIfNeeded()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 3977
    :goto_a
    return-void

    .line 3973
    :catch_b
    move-exception v0

    .line 3975
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_a
.end method
