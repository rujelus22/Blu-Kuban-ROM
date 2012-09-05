.class public Lcom/android/calendar/ToBtnLayout;
.super Landroid/widget/ScrollView;
.source "ToBtnLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;
    }
.end annotation


# instance fields
.field private mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

.field private mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

.field private mContext:Landroid/content/Context;

.field private mCurLines:I

.field private mDefaultRowHeight:I

.field private mMaxLines:I

.field private mPosY:I

.field private mToBtnPanel:Landroid/widget/AbsoluteLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/16 v0, 0x2e

    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    .line 65
    iput v1, p0, Lcom/android/calendar/ToBtnLayout;->mPosY:I

    .line 69
    iput-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    .line 73
    iput v1, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    .line 83
    iput-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 115
    iput-object p1, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v0, 0x4

    :goto_1d
    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mMaxLines:I

    .line 127
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    .line 131
    new-instance v0, Landroid/widget/AbsoluteLayout;

    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    .line 133
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v0}, Lcom/android/calendar/ToBtnLayout;->addView(Landroid/view/View;)V

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/calendar/ToBtnLayout;->setSmoothScrollingEnabled(Z)V

    .line 141
    invoke-virtual {p0, v4}, Lcom/android/calendar/ToBtnLayout;->setFillViewport(Z)V

    .line 143
    return-void

    .line 119
    :cond_4f
    const/4 v0, 0x2

    goto :goto_1d
.end method


# virtual methods
.method public addButton(Landroid/view/View;ILandroid/widget/AbsoluteLayout$LayoutParams;)V
    .registers 8
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 301
    iget v2, p3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 307
    .local v1, parent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_11

    .line 309
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 315
    :cond_11
    iget-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v2, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget v2, p3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    .line 323
    invoke-virtual {p0}, Lcom/android/calendar/ToBtnLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 327
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/calendar/ToBtnLayout;->mDefaultRowHeight:I

    iget v3, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/calendar/ToBtnLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    return-void
.end method

.method public getToButtonCount()I
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/calendar/Utils;->IsScreenPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x4

    :goto_c
    iput v0, p0, Lcom/android/calendar/ToBtnLayout;->mMaxLines:I

    .line 191
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    invoke-virtual {v0}, Lcom/android/calendar/ComposeHeaderView;->onSizeChanged()V

    .line 193
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

    invoke-interface {v0}, Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;->onConfigurationChanged()V

    .line 195
    return-void

    .line 185
    :cond_19
    const/4 v0, 0x2

    goto :goto_c
.end method

.method public releaseResources()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 369
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    if-eqz v0, :cond_c

    .line 371
    iget-object v0, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 373
    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    .line 377
    :cond_c
    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    .line 379
    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 381
    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

    .line 383
    return-void
.end method

.method public removeAllButton()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 253
    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v1}, Landroid/widget/AbsoluteLayout;->removeAllViews()V

    .line 255
    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v1}, Lcom/android/calendar/ToBtnLayout;->removeView(Landroid/view/View;)V

    .line 257
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    .line 259
    new-instance v1, Landroid/widget/AbsoluteLayout;

    iget-object v2, p0, Lcom/android/calendar/ToBtnLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    .line 261
    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v1, p0, Lcom/android/calendar/ToBtnLayout;->mToBtnPanel:Landroid/widget/AbsoluteLayout;

    invoke-virtual {p0, v1}, Lcom/android/calendar/ToBtnLayout;->addView(Landroid/view/View;)V

    .line 269
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/ToBtnLayout;->mCurLines:I

    .line 273
    invoke-virtual {p0}, Lcom/android/calendar/ToBtnLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 275
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/calendar/ToBtnLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    return-void
.end method

.method public setConfigListener(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter "instance"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/calendar/ToBtnLayout;->mConfigListener:Lcom/android/calendar/ToBtnLayout$OnConfigurationChangedListener;

    .line 217
    return-void
.end method

.method public setParentClass(Lcom/android/calendar/ComposeHeaderView;)V
    .registers 2
    .parameter "composeHeaderView"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/calendar/ToBtnLayout;->mComposeHeaderView:Lcom/android/calendar/ComposeHeaderView;

    .line 235
    return-void
.end method
