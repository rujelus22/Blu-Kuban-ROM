.class public Lcom/google/android/apps/plus/views/MultiLineLayout;
.super Landroid/view/ViewGroup;
.source "MultiLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/MultiLineLayout;Landroid/view/View;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/MultiLineLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/MultiLineLayout;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/views/MultiLineLayout;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/plus/views/MultiLineLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/MultiLineLayout$1;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;)V

    sub-int v1, p4, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MultiLineLayout$1;->apply(I)V

    .line 31
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthConstraint"
    .parameter "heightConstraint"

    .prologue
    .line 35
    new-instance v0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/plus/views/MultiLineLayout$2;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;II)V

    const v1, 0x7fffffff

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/views/MultiLineLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->apply(I)V

    .line 62
    return-void
.end method
