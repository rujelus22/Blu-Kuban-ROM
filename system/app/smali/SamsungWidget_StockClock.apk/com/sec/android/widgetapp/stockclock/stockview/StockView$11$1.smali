.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 1938
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #setter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1502(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Z)Z

    .line 1939
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->clearQueryResultArray()V

    .line 1940
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1942
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 1944
    :cond_24
    return-void
.end method
