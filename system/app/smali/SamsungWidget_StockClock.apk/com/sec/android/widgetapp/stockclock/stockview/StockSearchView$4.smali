.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$4;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->init()V
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
    .line 242
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$4;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 244
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://m.yahoo.com/w/yfinance/quotesdelayed/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$4;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->startActivity(Landroid/content/Intent;)V

    .line 249
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    const/4 v1, 0x0

    return v1
.end method