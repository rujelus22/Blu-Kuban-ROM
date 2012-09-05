.class public Lcom/google/android/apps/books/widget/ScrubTrackView;
.super Landroid/view/View;
.source "ScrubTrackView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;
    }
.end annotation


# static fields
.field private static final ENABLED_NIGHT_STATE:[I

.field private static final ENABLED_STATE:[I

.field private static final NIGHT_STATE:[I


# instance fields
.field private mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;"
        }
    .end annotation
.end field

.field private mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/books/widget/ScrubTrackView;->ENABLED_STATE:[I

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/android/apps/books/widget/ScrubTrackView;->ENABLED_NIGHT_STATE:[I

    .line 55
    new-array v0, v3, [I

    const v1, 0x10100a6

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/apps/books/widget/ScrubTrackView;->NIGHT_STATE:[I

    return-void

    .line 52
    nop

    :array_1e
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa6t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .parameter "canvas"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    if-nez v7, :cond_8

    .line 84
    :goto_7
    return-void

    .line 65
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v8, v8, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v5, v7, 0x2

    .line 66
    .local v5, top:I
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v7, v7, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int v2, v5, v7

    .line 68
    .local v2, bottom:I
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    invoke-interface {v7}, Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;->getAvailableContentFraction()F

    move-result v0

    .line 69
    .local v0, availableFraction:F
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getMeasuredWidth()I

    move-result v6

    .line 70
    .local v6, width:I
    int-to-float v7, v6

    mul-float/2addr v7, v0

    float-to-int v1, v7

    .line 73
    .local v1, availableRegionWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->getDrawableState()[I

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/apps/books/widget/StateUtil;->hasStateLast([I)Z

    move-result v3

    .line 74
    .local v3, isNightMode:Z
    if-eqz v3, :cond_6a

    sget-object v4, Lcom/google/android/apps/books/widget/ScrubTrackView;->ENABLED_NIGHT_STATE:[I

    .line 75
    .local v4, newState:[I
    :goto_3a
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v7, v7, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 76
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v7, v7, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v7, v7, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    if-eqz v3, :cond_6d

    sget-object v4, Lcom/google/android/apps/books/widget/ScrubTrackView;->NIGHT_STATE:[I

    .line 81
    :goto_54
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v7, v7, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 82
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v7, v7, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1, v5, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    iget-object v7, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    iget-object v7, v7, Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;->groupWell:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 74
    .end local v4           #newState:[I
    :cond_6a
    sget-object v4, Lcom/google/android/apps/books/widget/ScrubTrackView;->ENABLED_STATE:[I

    goto :goto_3a

    .line 80
    .restart local v4       #newState:[I
    :cond_6d
    sget-object v4, Landroid/view/View;->EMPTY_STATE_SET:[I

    goto :goto_54
.end method

.method public setResources(Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;)V
    .registers 2
    .parameter "resources"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mResources:Lcom/google/android/apps/books/widget/ScrubTrackView$Resources;

    .line 44
    return-void
.end method

.method public setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, index:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;,"Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex<**>;"
    iput-object p1, p0, Lcom/google/android/apps/books/widget/ScrubTrackView;->mIndex:Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/books/widget/ScrubTrackView;->invalidate()V

    .line 49
    return-void
.end method
