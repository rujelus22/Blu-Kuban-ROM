.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12$1;
.super Landroid/os/Handler;
.source "StockList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;)V
    .registers 2
    .parameter

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 1489
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1490
    const-string v1, "tab"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1491
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->startActivity(Landroid/content/Intent;)V

    .line 1492
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$12;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->finish()V

    .line 1493
    return-void
.end method
