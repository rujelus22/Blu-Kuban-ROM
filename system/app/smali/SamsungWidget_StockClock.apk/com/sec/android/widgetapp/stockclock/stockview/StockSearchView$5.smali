.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$5;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->makeTab()V
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
    .line 570
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$5;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "arg"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$5;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->selectTab(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$000(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;Ljava/lang/String;)V

    .line 574
    return-void
.end method
