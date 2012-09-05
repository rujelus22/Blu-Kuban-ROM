.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$1;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;)V
    .registers 2
    .parameter

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 1785
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1602(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;Z)Z

    .line 1786
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->clearQueryResultArray()V

    .line 1787
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1789
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$1700(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1791
    :cond_24
    return-void
.end method
