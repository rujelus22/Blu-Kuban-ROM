.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->saveData()V
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
    .line 1585
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1588
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1589
    const-string v1, "type"

    const-string v2, "searchAdd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1590
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mSymbol:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$2500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1591
    const-string v1, "loadfinish"

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->m_bLoadingFinish:Z
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$1300(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1592
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1593
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->startActivity(Landroid/content/Intent;)V

    .line 1594
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->qurrencySearchFlag:Z

    .line 1595
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->setResult(ILandroid/content/Intent;)V

    .line 1596
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->finish()V

    .line 1597
    return-void
.end method
