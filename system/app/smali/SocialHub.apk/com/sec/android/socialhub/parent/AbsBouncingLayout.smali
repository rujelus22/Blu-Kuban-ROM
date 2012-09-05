.class public abstract Lcom/sec/android/socialhub/parent/AbsBouncingLayout;
.super Landroid/widget/FrameLayout;
.source "AbsBouncingLayout.java"

# interfaces
.implements Lcom/sec/android/socialhub/parent/IListBouncingCabllack;


# static fields
.field private static param:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private bShowEmptyView:Z

.field protected mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mFooterRefresh:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mOverGlow:Landroid/view/View;

.field private rEmptyString:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 26
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->param:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v5, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    .line 28
    iput-object v5, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    .line 29
    iput-object v5, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mOverGlow:Landroid/view/View;

    .line 30
    iput-object v5, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    .line 32
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->bShowEmptyView:Z

    .line 33
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->rEmptyString:I

    .line 41
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->createListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    .line 44
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    instance-of v2, v2, Lcom/sec/android/socialhub/parent/IBouncingListView;

    if-eqz v2, :cond_75

    .line 46
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    check-cast v2, Lcom/sec/android/socialhub/parent/IBouncingListView;

    invoke-interface {v2, p0}, Lcom/sec/android/socialhub/parent/IBouncingListView;->setListBouncingCallback(Lcom/sec/android/socialhub/parent/IListBouncingCabllack;)V

    .line 54
    :goto_27
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 56
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030033

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, view:Landroid/view/View;
    const v2, 0x7f030034

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mOverGlow:Landroid/view/View;

    .line 58
    const v2, 0x7f030041

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    .line 60
    const v2, 0x7f0b00f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    .line 62
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    sget-object v3, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    sget-object v3, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    sget-object v2, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mOverGlow:Landroid/view/View;

    sget-object v3, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->param:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 68
    return-void

    .line 50
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #view:Landroid/view/View;
    :cond_75
    const-string v2, "AbsBouncingLayout"

    const-string v3, "AbsBouncingLayout()"

    const-string v4, "not matched listView!"

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 5
    .parameter "cursor"

    .prologue
    .line 192
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3b

    .line 194
    :cond_8
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    instance-of v1, v1, Lcom/sec/android/socialhub/parent/IBouncingListView;

    if-eqz v1, :cond_22

    .line 196
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    check-cast v1, Lcom/sec/android/socialhub/parent/IBouncingListView;

    invoke-interface {v1}, Lcom/sec/android/socialhub/parent/IBouncingListView;->isShowEmptyMessage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->bShowEmptyView:Z

    .line 197
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    check-cast v1, Lcom/sec/android/socialhub/parent/IBouncingListView;

    invoke-interface {v1}, Lcom/sec/android/socialhub/parent/IBouncingListView;->getEmptyStringResource()I

    move-result v1

    iput v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->rEmptyString:I

    .line 200
    :cond_22
    iget-boolean v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->bShowEmptyView:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 202
    iget v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->rEmptyString:I

    if-ltz v1, :cond_3b

    .line 204
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    const v2, 0x7f0b0128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 205
    .local v0, empty_string:Landroid/widget/TextView;
    iget v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->rEmptyString:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    .end local v0           #empty_string:Landroid/widget/TextView;
    :cond_3b
    return-void
.end method

.method protected abstract createListView()Landroid/widget/ListView;
.end method

.method public displayOverGlow(Z)V
    .registers 2
    .parameter "display"

    .prologue
    .line 179
    return-void
.end method

.method public displayOverGlow(ZI)V
    .registers 3
    .parameter "display"
    .parameter "pos"

    .prologue
    .line 188
    return-void
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onFlickDown()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 114
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_21

    .line 116
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    :cond_21
    const-string v0, "AbsBouncingLayout"

    const-string v1, "onFlickDown()"

    const-string v2, "FlickDown is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onFlickDownComplete(Z)V
    .registers 5
    .parameter "bContinue"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 127
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_21

    .line 129
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_21
    return-void
.end method

.method public onFlickUp()V
    .registers 4

    .prologue
    .line 138
    const-string v0, "AbsBouncingLayout"

    const-string v1, "onFlickUp()"

    const-string v2, "Flick Up is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public onFlickUpComplete(Z)V
    .registers 2
    .parameter "bContinue"

    .prologue
    .line 144
    return-void
.end method

.method public onLoadMore()V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    if-eqz v0, :cond_21

    .line 152
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_21

    .line 154
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mFooterRefresh:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_21
    const-string v0, "AbsBouncingLayout"

    const-string v1, "onLoadMore()"

    const-string v2, "LoadMore is fired!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public setUseEmptyView(Z)V
    .registers 4
    .parameter "bFlag"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_13

    .line 87
    if-nez p1, :cond_14

    .line 89
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_13
    :goto_13
    return-void

    .line 94
    :cond_14
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13
.end method

.method public setVisibleEmptView(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    if-eqz v1, :cond_15

    .line 74
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/AbsBouncingLayout;->mEmpty:Landroid/view/View;

    const v2, 0x7f0b0126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_15

    .line 78
    if-eqz p1, :cond_16

    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .end local v0           #view:Landroid/view/View;
    :cond_15
    return-void

    .line 78
    .restart local v0       #view:Landroid/view/View;
    :cond_16
    const/4 v1, 0x4

    goto :goto_12
.end method
