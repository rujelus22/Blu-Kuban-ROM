.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$15;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;
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
    .line 2196
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 2199
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2200
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const-class v2, Lcom/sec/android/widgetapp/stockclock/stocklist/StockList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2201
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2202
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$15;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2203
    return-void
.end method
