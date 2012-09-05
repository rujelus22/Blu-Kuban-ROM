.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V
    .registers 2
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 737
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$202(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Z)Z

    .line 738
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->clearQueryResultArray()V

    .line 739
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 741
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$7;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 743
    :cond_1c
    return-void
.end method
