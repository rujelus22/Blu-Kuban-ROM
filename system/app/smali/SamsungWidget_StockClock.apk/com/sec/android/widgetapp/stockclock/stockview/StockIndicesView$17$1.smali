.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17$1;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;)V
    .registers 2
    .parameter

    .prologue
    .line 2498
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17$1;->this$1:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$17;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->finish()V

    .line 2502
    return-void
.end method
