.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$18;
.super Ljava/lang/Object;
.source "StockList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->showRefreshDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 2
    .parameter

    .prologue
    .line 1908
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$18;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 1912
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$18;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$602(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;Z)Z

    .line 1913
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$18;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1915
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$18;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->access$900(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1917
    :cond_17
    return-void
.end method
