.class public Lcom/google/android/apps/plus/views/EventDetailsCardLayout;
.super Lcom/google/android/apps/plus/views/EsScrollView;
.source "EventDetailsCardLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/views/Recyclable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;
    }
.end annotation


# static fields
.field private static sBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sInitialized:Z

.field private static sPadding:I

.field private static sPaddingBottom:I

.field private static sPaddingLeft:I

.field private static sPaddingRight:I

.field private static sPaddingTop:I

.field private static sScrollingSecondaryPadding:I

.field private static sSecondaryPadding:I

.field private static sTwoSpanLayoutDividerPercentage:F


# instance fields
.field private mCardLayout:Z

.field private mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

.field private mExpanded:Z

.field private mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

.field private mLandscape:Z

.field private mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

.field private mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

.field private mUserClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v5, -0x2

    const/4 v3, 0x1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EsScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    sget-boolean v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sInitialized:Z

    if-nez v2, :cond_6a

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x7f0d0112

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sSecondaryPadding:I

    .line 109
    const v2, 0x7f0d0111

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sScrollingSecondaryPadding:I

    .line 111
    const v2, 0x7f0d0113

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sTwoSpanLayoutDividerPercentage:F

    .line 114
    const v2, 0x7f020026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 116
    const v2, 0x7f0d01a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    .line 117
    const v2, 0x7f0d01a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingTop:I

    .line 118
    const v2, 0x7f0d01a8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingRight:I

    .line 119
    const v2, 0x7f0d01aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingBottom:I

    .line 120
    const v2, 0x7f0d0103

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPadding:I

    .line 122
    sput-boolean v3, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sInitialized:Z

    .line 125
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_6a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v7, :cond_e7

    move v2, v3

    :goto_77
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mLandscape:Z

    .line 127
    invoke-static {p1}, Lcom/google/android/apps/plus/phone/ScreenMetrics;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ScreenMetrics;

    move-result-object v2

    iget v2, v2, Lcom/google/android/apps/plus/phone/ScreenMetrics;->screenDisplayType:I

    if-ne v2, v3, :cond_82

    move v4, v3

    :cond_82
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mCardLayout:Z

    .line 130
    new-instance v2, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    .line 131
    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mLandscape:Z

    if-eqz v2, :cond_e9

    move v2, v5

    :goto_94
    invoke-direct {v8, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v8}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance v2, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->addView(Landroid/view/View;)V

    .line 138
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mLandscape:Z

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    .line 140
    new-instance v2, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    .line 141
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-eqz v2, :cond_c3

    .line 142
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->addView(Landroid/view/View;)V

    .line 145
    :cond_c3
    new-instance v2, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-direct {v2, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    .line 146
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-eqz v2, :cond_d5

    .line 147
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v4, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v2, v4}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->addView(Landroid/view/View;)V

    .line 150
    :cond_d5
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mCardLayout:Z

    if-eqz v2, :cond_eb

    move v1, v7

    .line 151
    .local v1, spanSize:I
    :goto_da
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mLandscape:Z

    if-eqz v2, :cond_ed

    .line 152
    new-instance v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    invoke-direct {v2, v3, v5, v1, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :goto_e6
    return-void

    .end local v1           #spanSize:I
    :cond_e7
    move v2, v4

    .line 125
    goto :goto_77

    :cond_e9
    move v2, v6

    .line 131
    goto :goto_94

    :cond_eb
    move v1, v3

    .line 150
    goto :goto_da

    .line 155
    .restart local v1       #spanSize:I
    :cond_ed
    new-instance v2, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;

    invoke-direct {v2, v7, v5, v1, v1}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_e6
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 26
    sget v0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingBottom:I

    return v0
.end method

.method private toggleExpansion()V
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-nez v2, :cond_20

    .line 308
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->addView(Landroid/view/View;)V

    .line 309
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->addView(Landroid/view/View;)V

    .line 310
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->setExpandState(Z)V

    .line 317
    :goto_19
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-nez v2, :cond_34

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    .line 318
    return-void

    .line 312
    :cond_20
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->removeView(Landroid/view/View;)V

    .line 313
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->removeView(Landroid/view/View;)V

    .line 314
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->setExpandState(Z)V

    goto :goto_19

    :cond_34
    move v0, v1

    .line 317
    goto :goto_1d
.end method


# virtual methods
.method public bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/fragments/EventActiveState;Lcom/google/android/apps/plus/views/EventActionListener;)V
    .registers 8
    .parameter "event"
    .parameter "state"
    .parameter "listener"

    .prologue
    .line 276
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mUserClick:Z

    if-nez v1, :cond_1a

    iget-boolean v1, p2, Lcom/google/android/apps/plus/fragments/EventActiveState;->hasUserInteracted:Z

    if-nez v1, :cond_1a

    .line 277
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mLandscape:Z

    if-nez v1, :cond_31

    iget-boolean v1, p2, Lcom/google/android/apps/plus/fragments/EventActiveState;->expanded:Z

    if-nez v1, :cond_31

    const/4 v0, 0x1

    .line 279
    .local v0, shouldCollapse:Z
    :goto_11
    if-eqz v0, :cond_33

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-eqz v1, :cond_33

    .line 280
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->toggleExpansion()V

    .line 287
    .end local v0           #shouldCollapse:Z
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mLandscape:Z

    if-eqz v1, :cond_3d

    const/4 v1, 0x0

    :goto_21
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mCardLayout:Z

    invoke-virtual {v2, p1, v1, v3, p3}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Landroid/view/View$OnClickListener;ZLcom/google/android/apps/plus/views/EventActionListener;)V

    .line 288
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/fragments/EventActiveState;Lcom/google/android/apps/plus/views/EventActionListener;)V

    .line 290
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->bind(Lcom/google/api/services/plusi/model/PlusEvent;Lcom/google/android/apps/plus/views/EventActionListener;)V

    .line 291
    return-void

    .line 277
    :cond_31
    const/4 v0, 0x0

    goto :goto_11

    .line 281
    .restart local v0       #shouldCollapse:Z
    :cond_33
    if-nez v0, :cond_1a

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-nez v1, :cond_1a

    .line 282
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->toggleExpansion()V

    goto :goto_1a

    .end local v0           #shouldCollapse:Z
    :cond_3d
    move-object v1, p0

    .line 287
    goto :goto_21
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->toggleExpansion()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mUserClick:Z

    .line 304
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 219
    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 220
    sget-object v0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 222
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/EsScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 16
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 227
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/plus/views/EsScrollView;->onLayout(ZIIII)V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->getMeasuredWidth()I

    move-result v5

    .line 231
    .local v5, width:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v6, v8, v8, v5, v7}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->layout(IIII)V

    .line 233
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getMeasuredHeight()I

    move-result v0

    .line 234
    .local v0, headerBottom:I
    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPadding:I

    add-int v1, v0, v6

    .line 235
    .local v1, infoTop:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    sget v7, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    invoke-virtual {v6, v7, v8, v5, v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->layout(IIII)V

    .line 237
    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    sget v7, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingRight:I

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 239
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-eqz v6, :cond_70

    .line 240
    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    iget-object v7, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->getMeasuredWidth()I

    move-result v7

    add-int v4, v6, v7

    .line 241
    .local v4, mainRight:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->getMeasuredHeight()I

    move-result v6

    add-int v3, v1, v6

    .line 242
    .local v3, mainBottom:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    sget v7, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    invoke-virtual {v6, v7, v1, v4, v3}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->layout(IIII)V

    .line 244
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    iget-boolean v7, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mCardLayout:Z

    invoke-virtual {v6, v7}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->setLayoutType(Z)V

    .line 246
    iget-boolean v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mCardLayout:Z

    if-eqz v6, :cond_71

    .line 247
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-virtual {v6, v4, v1}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->setDivider(II)V

    .line 249
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    sget v7, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sSecondaryPadding:I

    add-int/2addr v7, v4

    sget v8, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sSecondaryPadding:I

    add-int/2addr v8, v4

    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v1

    invoke-virtual {v6, v7, v1, v8, v9}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->layout(IIII)V

    .line 260
    .end local v3           #mainBottom:I
    .end local v4           #mainRight:I
    :cond_70
    :goto_70
    return-void

    .line 253
    .restart local v3       #mainBottom:I
    .restart local v4       #mainRight:I
    :cond_71
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->clearDivider()V

    .line 254
    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sScrollingSecondaryPadding:I

    add-int v2, v3, v6

    .line 255
    .local v2, mSecondaryTop:I
    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    sget v7, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    sget v8, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sSecondaryPadding:I

    add-int/2addr v7, v8

    sget v8, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    sget v9, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sSecondaryPadding:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v9, v2

    invoke-virtual {v6, v7, v2, v8, v9}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->layout(IIII)V

    goto :goto_70
.end method

.method protected onMeasure(II)V
    .registers 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 162
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/views/EsScrollView;->onMeasure(II)V

    .line 164
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 165
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 166
    .local v0, height:I
    if-nez v3, :cond_11

    .line 167
    move v3, v0

    .line 170
    :cond_11
    sget v4, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingTop:I

    .line 171
    .local v4, y:I
    sget v5, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingRight:I

    add-int/2addr v5, v6

    sub-int/2addr v3, v5

    .line 173
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->measure(II)V

    .line 175
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->getMeasuredHeight()I

    move-result v5

    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPadding:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 177
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mExpanded:Z

    if-eqz v5, :cond_74

    .line 182
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mCardLayout:Z

    if-eqz v5, :cond_a4

    .line 183
    int-to-float v5, v3

    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sTwoSpanLayoutDividerPercentage:F

    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 184
    .local v1, mainLayoutWidth:I
    sub-int v5, v3, v1

    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sSecondaryPadding:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    .line 190
    .local v2, secondLayoutWidth:I
    :goto_45
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->measure(II)V

    .line 192
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->measure(II)V

    .line 196
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mCardLayout:Z

    if-eqz v5, :cond_ac

    .line 197
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v4, v5

    .line 205
    .end local v1           #mainLayoutWidth:I
    .end local v2           #secondLayoutWidth:I
    :cond_74
    :goto_74
    sget v5, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingBottom:I

    add-int/2addr v4, v5

    .line 206
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->measure(II)V

    .line 208
    iget-boolean v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mLandscape:Z

    if-nez v5, :cond_9a

    .line 209
    move v0, v4

    .line 210
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mContainer:Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout$ContainerView;->measure(II)V

    .line 214
    :cond_9a
    sget v5, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingLeft:I

    add-int/2addr v5, v3

    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sPaddingRight:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5, v0}, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->setMeasuredDimension(II)V

    .line 215
    return-void

    .line 186
    :cond_a4
    move v1, v3

    .line 187
    .restart local v1       #mainLayoutWidth:I
    sget v5, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sSecondaryPadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v2, v3, v5

    .restart local v2       #secondLayoutWidth:I
    goto :goto_45

    .line 200
    :cond_ac
    iget-object v5, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->getMeasuredHeight()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->sScrollingSecondaryPadding:I

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    goto :goto_74
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mHeaderView:Lcom/google/android/apps/plus/views/EventDetailsHeaderView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailsHeaderView;->onRecycle()V

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->clear()V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EventDetailsCardLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;->clear()V

    .line 298
    return-void
.end method
