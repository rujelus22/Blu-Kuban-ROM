.class public LaZ;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ViewPager.java"


# instance fields
.field public a:I

.field public a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 2086
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2087
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2090
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2092
    invoke-static {}, Landroid/support/v4/view/ViewPager;->a()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2093
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, LaZ;->a:I

    .line 2094
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2095
    return-void
.end method
