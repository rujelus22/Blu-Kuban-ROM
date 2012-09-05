.class public Lcom/sdgtl/mediahub/spr/customview/MHViewFlipper;
.super Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_7

    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    :goto_6
    return-void

    :catch_7
    move-exception v0

    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_6

    :catchall_c
    move-exception v0

    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    throw v0
.end method
