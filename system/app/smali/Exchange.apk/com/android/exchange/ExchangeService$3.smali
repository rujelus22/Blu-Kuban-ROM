.class final Lcom/android/exchange/ExchangeService$3;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService;->reconcileAccounts(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$3;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2501
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2502
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_9

    .line 2503
    iget-object v1, p0, Lcom/android/exchange/ExchangeService$3;->val$context:Landroid/content/Context;

    #calls: Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->access$1700(Lcom/android/exchange/ExchangeService;Landroid/content/Context;)V

    .line 2505
    :cond_9
    return-void
.end method
