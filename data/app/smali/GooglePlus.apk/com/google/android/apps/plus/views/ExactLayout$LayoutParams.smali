.class public Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ExactLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ExactLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public horizontalBound:I

.field public verticalBound:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    sget-object v1, Lcom/google/android/apps/plus/R$styleable;->ExactLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->x:I

    .line 142
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->y:I

    .line 143
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->horizontalBound:I

    .line 145
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ExactLayout$LayoutParams;->verticalBound:I

    .line 147
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 2
    .parameter "source"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method
