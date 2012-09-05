.class Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$9;
.super Ljava/lang/Object;
.source "StockSearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->showProgressDialog()V
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
    .line 776
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$9;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$9;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 780
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView$9;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->mUpdateBtn:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;->access$500(Lcom/sec/android/widgetapp/stockclock/stockview/StockSearchView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 782
    :cond_17
    return-void
.end method
