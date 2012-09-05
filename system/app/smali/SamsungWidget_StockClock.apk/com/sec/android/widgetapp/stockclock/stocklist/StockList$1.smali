.class Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$1;
.super Ljava/lang/Object;
.source "StockList.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->makeTab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;)V
    .registers 2
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList$1;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-virtual {v0, p1}, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;->selectTab(Ljava/lang/String;)V

    .line 217
    return-void
.end method
