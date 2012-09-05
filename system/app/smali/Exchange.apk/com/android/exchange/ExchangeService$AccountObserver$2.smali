.class Lcom/android/exchange/ExchangeService$AccountObserver$2;
.super Ljava/lang/Object;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/exchange/ExchangeService$AccountObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/exchange/ExchangeService$AccountObserver;


# direct methods
.method constructor <init>(Lcom/android/exchange/ExchangeService$AccountObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 1964
    iput-object p1, p0, Lcom/android/exchange/ExchangeService$AccountObserver$2;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1966
    iget-object v0, p0, Lcom/android/exchange/ExchangeService$AccountObserver$2;->this$1:Lcom/android/exchange/ExchangeService$AccountObserver;

    #calls: Lcom/android/exchange/ExchangeService$AccountObserver;->onAccountChanged()V
    invoke-static {v0}, Lcom/android/exchange/ExchangeService$AccountObserver;->access$1300(Lcom/android/exchange/ExchangeService$AccountObserver;)V

    .line 1967
    return-void
.end method
