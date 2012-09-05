.class Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$3;
.super Ljava/lang/Object;
.source "StockIndicesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;
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
    .line 383
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.yahoo.com/samsungwi/finance"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView$3;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockIndicesView;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method
