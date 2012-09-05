.class public Lcom/sec/android/widgetapp/stockclock/stockview/MyViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "MyViewFlipper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 23
    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 29
    :goto_3
    return-void

    .line 25
    :catch_4
    move-exception v0

    .line 27
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/stockclock/stockview/MyViewFlipper;->stopFlipping()V

    goto :goto_3
.end method
