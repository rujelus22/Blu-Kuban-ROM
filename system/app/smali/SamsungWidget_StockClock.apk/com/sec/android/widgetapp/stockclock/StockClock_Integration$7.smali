.class Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$7;
.super Ljava/lang/Object;
.source "StockClock_Integration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->showNetworkError()V
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
    .line 3123
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$7;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3126
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$7;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$7;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->getAllIds()[I
    invoke-static {v1}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$000(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)[I

    move-result-object v1

    #calls: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->setNormalUI([I)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$100(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;[I)V

    .line 3127
    return-void
.end method
