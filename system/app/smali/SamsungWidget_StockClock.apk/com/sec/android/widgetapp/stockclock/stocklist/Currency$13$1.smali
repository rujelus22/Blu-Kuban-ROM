.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;)V
    .registers 2
    .parameter

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->setGraphSymbol:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2502(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Ljava/lang/String;)Ljava/lang/String;

    .line 1860
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 1862
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->stockView:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2400(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v1, v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrentTab:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$2600(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v2}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v3, v3, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$200(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;

    iget-object v4, v4, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$13;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mCurrencyListItem:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$000(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$ViewAdapter;->selectTab(Ljava/lang/String;Landroid/view/View;I)V

    .line 1864
    :cond_54
    return-void
.end method
