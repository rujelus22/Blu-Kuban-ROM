.class public Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;
.super Landroid/widget/RelativeLayout;
.source "RelativeLayoutWithLayoutNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;
    }
.end annotation


# instance fields
.field private layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .registers 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;

    if-eqz v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;->onLayout(ZIIII)V

    .line 77
    :cond_e
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 78
    return-void
.end method

.method public onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 59
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 61
    .local v1, contentWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 63
    .local v0, contentHeight:I
    iget-object v2, p0, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;

    if-eqz v2, :cond_27

    .line 64
    iget-object v2, p0, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;

    invoke-interface {v2, p1, p2, v1, v0}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;->onMeasure(IIII)V

    .line 67
    :cond_27
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->onMeasure(IIII)V

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 70
    return-void
.end method

.method public onMeasure(IIII)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 55
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;

    if-eqz v0, :cond_9

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;->onSizeChanged(IIII)V

    .line 86
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 87
    return-void
.end method

.method public setLayoutListener(Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;)V
    .registers 2
    .parameter "layoutListener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications;->layoutListener:Lcom/google/android/apps/plus/views/RelativeLayoutWithLayoutNotifications$LayoutListener;

    .line 46
    return-void
.end method
