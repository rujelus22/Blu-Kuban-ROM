.class public Lcom/google/android/apps/plus/views/PhotoLayout;
.super Landroid/widget/LinearLayout;
.source "PhotoLayout.java"


# instance fields
.field private mFixedHeight:I

.field private mHeaderInfo:Lcom/google/android/apps/plus/views/PhotoInfoView;

.field private mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

.field private mScroller:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    .line 40
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    .line 62
    .end local p1
    :goto_a
    return-void

    .line 48
    .restart local p1
    :sswitch_b
    check-cast p1, Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    goto :goto_a

    .line 53
    .restart local p1
    :sswitch_10
    check-cast p1, Lcom/google/android/apps/plus/views/PhotoInfoView;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mHeaderInfo:Lcom/google/android/apps/plus/views/PhotoInfoView;

    goto :goto_a

    .line 58
    .restart local p1
    :sswitch_15
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mScroller:Landroid/view/View;

    goto :goto_a

    .line 46
    :sswitch_data_18
    .sparse-switch
        0x7f09019c -> :sswitch_b
        0x7f09019d -> :sswitch_15
        0x7f0901a2 -> :sswitch_10
    .end sparse-switch
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoLayout;->removeAllViews()V

    .line 76
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mHeaderInfo:Lcom/google/android/apps/plus/views/PhotoInfoView;

    .line 77
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    .line 78
    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mScroller:Landroid/view/View;

    .line 79
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 67
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/PhotoLayout;->setFixedHeight(I)V

    .line 68
    return-void
.end method

.method public setFixedHeight(I)V
    .registers 8
    .parameter "fixedHeight"

    .prologue
    const/16 v5, 0x8

    .line 85
    if-gtz p1, :cond_5

    .line 109
    :cond_4
    :goto_4
    return-void

    .line 89
    :cond_5
    iget v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    if-eq p1, v4, :cond_4e

    const/4 v0, 0x1

    .line 90
    .local v0, adjustBounds:Z
    :goto_a
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    .line 92
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    if-eqz v4, :cond_3f

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, adjustHeight:I
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mHeaderInfo:Lcom/google/android/apps/plus/views/PhotoInfoView;

    if-eqz v4, :cond_24

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mHeaderInfo:Lcom/google/android/apps/plus/views/PhotoInfoView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_24

    .line 95
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mHeaderInfo:Lcom/google/android/apps/plus/views/PhotoInfoView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getMeasuredHeight()I

    move-result v2

    .line 96
    .local v2, infoHeight:I
    add-int/2addr v1, v2

    .line 98
    .end local v2           #infoHeight:I
    :cond_24
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mScroller:Landroid/view/View;

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mScroller:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v5, :cond_37

    .line 99
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mScroller:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 100
    .local v3, scrollerHeight:I
    add-int/2addr v1, v3

    .line 102
    .end local v3           #scrollerHeight:I
    :cond_37
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mPhotoView:Lcom/google/android/apps/plus/views/PhotoHeaderView;

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    sub-int/2addr v5, v1

    invoke-virtual {v4, v5}, Lcom/google/android/apps/plus/views/PhotoHeaderView;->setFixedHeight(I)V

    .line 104
    .end local v1           #adjustHeight:I
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/google/android/apps/plus/views/PhotoLayout;->mFixedHeight:I

    invoke-virtual {p0, v4, v5}, Lcom/google/android/apps/plus/views/PhotoLayout;->setMeasuredDimension(II)V

    .line 106
    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoLayout;->requestLayout()V

    goto :goto_4

    .line 89
    .end local v0           #adjustBounds:Z
    :cond_4e
    const/4 v0, 0x0

    goto :goto_a
.end method
