.class public Lcom/google/android/apps/docs/view/CustomButton;
.super Landroid/widget/FrameLayout;
.source "CustomButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/docs/view/CustomButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 27
    const v1, 0x1010048

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    if-eqz p2, :cond_1c

    .line 29
    sget-object v1, Lda;->CustomButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 31
    if-eqz v1, :cond_16

    const/4 v0, 0x1

    :cond_16
    invoke-static {v0}, LafQ;->b(Z)V

    .line 32
    invoke-static {p1, v1, p0}, Lcom/google/android/apps/docs/view/CustomButton;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    :cond_1c
    return-void
.end method
