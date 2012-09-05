.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$8;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->regEventUpdateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V
    .registers 2
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->executeRefresh()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;)V

    .line 1358
    return-void
.end method
