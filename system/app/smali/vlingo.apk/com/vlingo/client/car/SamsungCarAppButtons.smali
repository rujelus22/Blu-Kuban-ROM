.class public Lcom/vlingo/client/car/SamsungCarAppButtons;
.super Landroid/widget/FrameLayout;
.source "SamsungCarAppButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mDrivingModeUnderImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 30
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 26
    const v0, 0x7f0f010f

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/SamsungCarAppButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtons;->mDrivingModeUnderImageView:Landroid/widget/ImageView;

    .line 27
    return-void
.end method

.method public setUnderImageViewResources(I)V
    .registers 3
    .parameter "resId"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtons;->mDrivingModeUnderImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, p0, Lcom/vlingo/client/car/SamsungCarAppButtons;->mDrivingModeUnderImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 36
    :cond_9
    return-void
.end method
