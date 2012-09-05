.class Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;
.super Ljava/lang/Object;
.source "StockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

.field final synthetic val$ad:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1912
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->val$ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 1917
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->val$ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1918
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_19

    .line 1920
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1922
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1923
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 1927
    :cond_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1400(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1929
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->access$1400(Lcom/sec/android/widgetapp/stockclock/stockview/StockView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 1934
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stockview/StockView;

    const v3, 0x7f090038

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 1947
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stockview/StockView;->mRefreshDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stockview/StockView$11;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 1980
    :goto_4d
    return-void

    .line 1976
    :catch_4e
    move-exception v6

    .line 1978
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d
.end method
