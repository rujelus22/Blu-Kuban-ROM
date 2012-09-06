.class public Lcom/google/android/apps/plus/views/MultiLineLayout;
.super Landroid/view/ViewGroup;
.source "MultiLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;
    }
.end annotation


# instance fields
.field private mChipHeight:I

.field private mNumLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributes"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mNumLines:I

    .line 18
    iput v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mChipHeight:I

    .line 22
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

.method static synthetic access$302(Lcom/google/android/apps/plus/views/MultiLineLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mNumLines:I

    return p1
.end method

.method static synthetic access$308(Lcom/google/android/apps/plus/views/MultiLineLayout;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mNumLines:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mNumLines:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/views/MultiLineLayout;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mChipHeight:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/plus/views/MultiLineLayout;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput p1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mChipHeight:I

    return p1
.end method


# virtual methods
.method public getHeightForNumLines(I)I
    .registers 5
    .parameter "numLines"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingTop()I

    move-result v0

    .line 73
    .local v0, verticalSpacing:I
    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mChipHeight:I

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    return v1
.end method

.method public getNumLines()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout;->mNumLines:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/apps/plus/views/MultiLineLayout$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/views/MultiLineLayout$1;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;)V

    sub-int v1, p4, p2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MultiLineLayout$1;->apply(I)V

    .line 34
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthConstraint"
    .parameter "heightConstraint"

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/plus/views/MultiLineLayout$2;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;II)V

    const v1, 0x7fffffff

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/views/MultiLineLayout;->resolveSize(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->apply(I)V

    .line 65
    return-void
.end method
