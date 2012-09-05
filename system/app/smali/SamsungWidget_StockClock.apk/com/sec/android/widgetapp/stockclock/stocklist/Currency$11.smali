.class Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;
.super Ljava/lang/Object;
.source "Currency.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

.field final synthetic val$ad:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;Landroid/graphics/drawable/AnimationDrawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iput-object p2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->val$ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1622
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->val$ad:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1624
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1a

    .line 1626
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1628
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1629
    sput-object v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 1632
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ViewFlipper;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1633
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    #getter for: Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mIndicesFlipper:Landroid/widget/ViewFlipper;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->access$1700(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 1636
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;->this$0:Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;

    const v4, 0x7f090038

    invoke-virtual {v2, v4}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$1;

    invoke-direct {v5, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$1;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;)V

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 1649
    sget-object v0, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency;->mRefreshDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11$2;-><init>(Lcom/sec/android/widgetapp/stockclock/stocklist/Currency$11;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1675
    return-void
.end method
