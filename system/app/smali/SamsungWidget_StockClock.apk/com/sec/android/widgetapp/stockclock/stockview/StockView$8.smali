.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$8;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->regEventUpdateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V
    .registers 2
    .parameter

    .prologue
    .line 1441
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$8;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #calls: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->executeRefresh()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$600(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)V

    .line 1445
    return-void
.end method
