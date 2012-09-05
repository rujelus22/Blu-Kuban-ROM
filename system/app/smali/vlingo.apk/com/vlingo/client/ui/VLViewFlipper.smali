.class public Lcom/vlingo/client/ui/VLViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "VLViewFlipper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 25
    :try_start_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_7

    .line 30
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 32
    :goto_6
    return-void

    .line 26
    :catch_7
    move-exception v0

    .line 30
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_6

    :catchall_c
    move-exception v0

    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    throw v0
.end method
