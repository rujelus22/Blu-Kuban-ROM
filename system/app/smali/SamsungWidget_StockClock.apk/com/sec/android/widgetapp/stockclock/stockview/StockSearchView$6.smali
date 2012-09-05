.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$6;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->regEventUpdateButton()V
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
    .line 595
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$6;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$6;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->executeRefresh()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$100(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)V

    .line 599
    return-void
.end method
