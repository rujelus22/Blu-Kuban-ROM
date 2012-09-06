.class public Lcom/google/android/apps/plus/views/CardViewLayout;
.super Lcom/google/android/apps/plus/views/ExactLayout;
.source "CardViewLayout.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Recyclable;


# static fields
.field private static sBackground:Landroid/graphics/drawable/Drawable;

.field private static sInitialized:Z

.field private static sPaddingBottom:I

.field private static sPaddingLeft:I

.field private static sPaddingRight:I

.field private static sPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/CardViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/CardViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/CardViewLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method private adjustPadding(IIZ)I
    .registers 6
    .parameter "amount"
    .parameter "original"
    .parameter "enabled"

    .prologue
    .line 90
    if-eqz p3, :cond_b

    const/4 v0, 0x1

    :goto_3
    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_3
.end method


# virtual methods
.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 52
    .local v1, resources:Landroid/content/res/Resources;
    sget-boolean v4, Lcom/google/android/apps/plus/views/CardViewLayout;->sInitialized:Z

    if-nez v4, :cond_3d

    .line 53
    const v4, 0x7f0d01a7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingLeft:I

    .line 54
    const v4, 0x7f0d01a9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingTop:I

    .line 55
    const v4, 0x7f0d01a8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingRight:I

    .line 56
    const v4, 0x7f0d01aa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sput v4, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingBottom:I

    .line 57
    const v4, 0x7f020026

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sput-object v4, Lcom/google/android/apps/plus/views/CardViewLayout;->sBackground:Landroid/graphics/drawable/Drawable;

    .line 58
    sput-boolean v2, Lcom/google/android/apps/plus/views/CardViewLayout;->sInitialized:Z

    .line 62
    :cond_3d
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/CardViewLayout;->toggleCardBorderStyle(Z)V

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_5a

    move v0, v2

    .line 67
    .local v0, landscape:Z
    :goto_4d
    new-instance v4, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    if-eqz v0, :cond_52

    move v2, v3

    :cond_52
    const/4 v3, -0x3

    invoke-direct {v4, v2, v3}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/CardViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void

    .line 64
    .end local v0           #landscape:Z
    :cond_5a
    const/4 v0, 0x0

    goto :goto_4d
.end method

.method public toggleCardBorderStyle(Z)V
    .registers 8
    .parameter "enabled"

    .prologue
    .line 79
    if-eqz p1, :cond_33

    sget-object v4, Lcom/google/android/apps/plus/views/CardViewLayout;->sBackground:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/CardViewLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardViewLayout;->getPaddingLeft()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingLeft:I

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/apps/plus/views/CardViewLayout;->adjustPadding(IIZ)I

    move-result v1

    .line 82
    .local v1, leftPadding:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardViewLayout;->getPaddingTop()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingTop:I

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/apps/plus/views/CardViewLayout;->adjustPadding(IIZ)I

    move-result v3

    .line 83
    .local v3, topPadding:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardViewLayout;->getPaddingRight()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingRight:I

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/apps/plus/views/CardViewLayout;->adjustPadding(IIZ)I

    move-result v2

    .line 84
    .local v2, rightPadding:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/CardViewLayout;->getPaddingBottom()I

    move-result v4

    sget v5, Lcom/google/android/apps/plus/views/CardViewLayout;->sPaddingBottom:I

    invoke-direct {p0, v4, v5, p1}, Lcom/google/android/apps/plus/views/CardViewLayout;->adjustPadding(IIZ)I

    move-result v0

    .line 86
    .local v0, bottomPadding:I
    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/google/android/apps/plus/views/CardViewLayout;->setPadding(IIII)V

    .line 87
    return-void

    .line 79
    .end local v0           #bottomPadding:I
    .end local v1           #leftPadding:I
    .end local v2           #rightPadding:I
    .end local v3           #topPadding:I
    :cond_33
    const/4 v4, 0x0

    goto :goto_4
.end method
