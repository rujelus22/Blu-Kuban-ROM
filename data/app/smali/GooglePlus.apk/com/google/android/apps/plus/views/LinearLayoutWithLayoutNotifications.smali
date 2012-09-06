.class public Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutWithLayoutNotifications.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;
    }
.end annotation


# instance fields
.field private mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mMaxWidth:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mMaxWidth:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mMaxWidth:I

    .line 41
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
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

    if-eqz v0, :cond_11

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;->onLayout(ZIIII)V

    .line 78
    :cond_11
    return-void
.end method

.method public onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 61
    iget v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mMaxWidth:I

    if-lez v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mMaxWidth:I

    if-le v0, v1, :cond_1a

    .line 63
    const/high16 v0, 0x4000

    iget v1, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mMaxWidth:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 67
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

    if-eqz v0, :cond_23

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

    invoke-interface {v0, p0}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;->onMeasured(Landroid/view/View;)V

    .line 70
    :cond_23
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;->onSizeChanged(IIII)V

    .line 86
    :cond_c
    return-void
.end method

.method public setLayoutListener(Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;)V
    .registers 2
    .parameter "layoutListener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mLayoutListener:Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications$LayoutListener;

    .line 48
    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .parameter "maxWidth"

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/apps/plus/views/LinearLayoutWithLayoutNotifications;->mMaxWidth:I

    .line 56
    return-void
.end method
