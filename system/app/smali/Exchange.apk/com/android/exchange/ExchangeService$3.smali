.class final Lcom/android/exchange/ExchangeService$3;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1155
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1156
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_9

    .line 1157
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$3;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    .line 1159
    :cond_9
    return-void
.end method
