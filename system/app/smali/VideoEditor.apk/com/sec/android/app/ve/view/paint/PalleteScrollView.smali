.class public Lcom/sec/android/app/ve/view/paint/PalleteScrollView;
.super Landroid/widget/ScrollView;
.source "PalleteScrollView.java"


# static fields
.field private static final MAX_SCROLL_Y:F = 114.0f


# instance fields
.field mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    if-nez v0, :cond_a

    .line 35
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getInstance()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->mPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    return-object v0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 8
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->getPaintPopup()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v0

    mul-int/lit16 v1, p2, 0x1c4

    int-to-float v1, v1

    const/high16 v2, 0x42e4

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x21

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setScrollThumbY(I)V

    .line 45
    return-void
.end method
