.class Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$6;
.super Ljava/lang/Object;
.source "StockClock_Integration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V
    .registers 2
    .parameter

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$6;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$6;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->showNetworkError()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$400(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    .line 2940
    return-void
.end method
