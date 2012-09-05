.class public Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Landroid/content/SyncStatusObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasSyncStatusObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/ExchangeService;


# direct methods
.method public constructor <init>(Lcom/android/exchange/ExchangeService;)V
    .registers 2
    .parameter

    .prologue
    .line 2482
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;->this$0:Lcom/android/exchange/ExchangeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 2486
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_9

    .line 2487
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;->this$0:Lcom/android/exchange/ExchangeService;

    #calls: Lcom/android/exchange/ExchangeService;->checkPIMSyncSettings()V
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->access$1600(Lcom/android/exchange/ExchangeService;)V

    .line 2489
    :cond_9
    return-void
.end method
