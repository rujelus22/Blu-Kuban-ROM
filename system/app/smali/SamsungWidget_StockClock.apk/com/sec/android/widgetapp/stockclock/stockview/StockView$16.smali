.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$16;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 2207
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$16;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "v"
    .parameter "event"

    .prologue
    const v3, 0x7f0b010c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2211
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 2213
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$16;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 2219
    :cond_1e
    :goto_1e
    return v1

    .line 2215
    :cond_1f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 2217
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$16;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->gallery:Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$200(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockClockGallery;->getSelectedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_1e
.end method