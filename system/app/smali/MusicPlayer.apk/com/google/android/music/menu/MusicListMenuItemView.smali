.class public Lcom/google/android/music/menu/MusicListMenuItemView;
.super Landroid/widget/RelativeLayout;
.source "MusicListMenuItemView.java"


# instance fields
.field private mLeftIconView:Landroid/widget/ImageView;

.field private mMenuItem:Lcom/google/android/music/menu/MusicListMenuItem;

.field private mRightIconView:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/menu/MusicListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItemView;->setDescendantFocusability(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItemView;->setDescendantFocusability(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public getMenuItem()Lcom/google/android/music/menu/MusicMenuItem;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mMenuItem:Lcom/google/android/music/menu/MusicListMenuItem;

    return-object v0
.end method

.method public initialize(Lcom/google/android/music/menu/MusicListMenuItem;)V
    .registers 3
    .parameter "menuItem"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mMenuItem:Lcom/google/android/music/menu/MusicListMenuItem;

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItemView;->setVisibility(I)V

    .line 52
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 44
    const v0, 0x7f10008a

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mLeftIconView:Landroid/widget/ImageView;

    .line 45
    const v0, 0x7f100002

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mRightIconView:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method public performClick()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 75
    :goto_8
    return v0

    .line 71
    :cond_9
    iget-object v2, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mMenuItem:Lcom/google/android/music/menu/MusicListMenuItem;

    invoke-virtual {v2}, Lcom/google/android/music/menu/MusicListMenuItem;->invoke()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 72
    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->playSoundEffect(I)V

    goto :goto_8

    :cond_15
    move v0, v1

    .line 75
    goto :goto_8
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "icon"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mLeftIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 96
    :cond_6
    :goto_6
    return-void

    .line 87
    :cond_7
    if-eqz p1, :cond_1d

    .line 88
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mLeftIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mLeftIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mLeftIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 94
    :cond_1d
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mLeftIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "title"

    .prologue
    const/16 v1, 0x8

    .line 55
    if-eqz p1, :cond_18

    .line 56
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    :cond_17
    :goto_17
    return-void

    .line 60
    :cond_18
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_17
.end method

.method protected setWidgetImage(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mRightIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    return-void
.end method

.method protected setWidgetVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 99
    if-eqz p1, :cond_9

    .line 100
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mRightIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_8
    return-void

    .line 102
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItemView;->mRightIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8
.end method
