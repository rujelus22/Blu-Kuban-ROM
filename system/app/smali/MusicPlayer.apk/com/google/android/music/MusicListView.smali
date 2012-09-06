.class public Lcom/google/android/music/MusicListView;
.super Landroid/widget/ListView;
.source "MusicListView.java"


# instance fields
.field mDrawingFix:Z

.field private mHeaderViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v2, p0, Lcom/google/android/music/MusicListView;->mDrawingFix:Z

    .line 30
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicListView;->mHeaderViews:Ljava/util/List;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_overdraw_listview"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/MusicListView;->mDrawingFix:Z

    .line 36
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/music/MusicListView;->mHeaderViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 5
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 43
    iget-object v0, p0, Lcom/google/android/music/MusicListView;->mHeaderViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "c"

    .prologue
    .line 62
    iget-boolean v7, p0, Lcom/google/android/music/MusicListView;->mDrawingFix:Z

    if-eqz v7, :cond_50

    .line 64
    invoke-virtual {p0}, Lcom/google/android/music/MusicListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 65
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_d

    .line 66
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/music/MusicListView;->getChildCount()I

    move-result v2

    .line 69
    .local v2, count:I
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v7}, Lcom/google/android/music/MusicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 70
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_4f

    .line 71
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 72
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/google/android/music/MusicListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 73
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 74
    .local v0, bottom:I
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 76
    .local v1, clip:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 78
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 79
    invoke-virtual {p0}, Lcom/google/android/music/MusicListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_49

    .line 81
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 82
    .local v4, db:Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 83
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 84
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    .end local v4           #db:Landroid/graphics/Rect;
    :cond_49
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 88
    :cond_4c
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 93
    .end local v0           #bottom:I
    .end local v1           #clip:Landroid/graphics/Rect;
    .end local v2           #count:I
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v6           #v:Landroid/view/View;
    :cond_4f
    :goto_4f
    return-void

    .line 91
    :cond_50
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4f
.end method

.method public invalidateViews()V
    .registers 1

    .prologue
    .line 138
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 139
    invoke-super {p0}, Landroid/widget/ListView;->invalidateViews()V

    .line 140
    return-void
.end method

.method public isHeaderView(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/MusicListView;->mHeaderViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 97
    if-eqz p1, :cond_33

    .line 107
    invoke-virtual {p0}, Lcom/google/android/music/MusicListView;->getFirstVisiblePosition()I

    move-result v3

    .line 108
    .local v3, oldFirstVisiblePosition:I
    invoke-virtual {p0}, Lcom/google/android/music/MusicListView;->getChildCount()I

    move-result v2

    .line 109
    .local v2, oldChildCount:I
    new-array v1, v2, [I

    .line 110
    .local v1, mOldChildPositions:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v2, :cond_20

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/music/MusicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 112
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_1b

    const/4 v7, 0x0

    :goto_16
    aput v7, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 112
    :cond_1b
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v7

    goto :goto_16

    .line 115
    .end local v5           #v:Landroid/view/View;
    :cond_20
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 121
    invoke-virtual {p0}, Lcom/google/android/music/MusicListView;->getSelectedItemPosition()I

    move-result v4

    .line 122
    .local v4, selectedItemPosition:I
    sub-int v0, v4, v3

    .line 123
    if-ltz v0, :cond_32

    if-ge v0, v2, :cond_32

    .line 124
    aget v6, v1, v0

    .line 125
    .local v6, y:I
    invoke-virtual {p0, v4, v6}, Lcom/google/android/music/MusicListView;->setSelectionFromTop(II)V

    .line 130
    .end local v0           #i:I
    .end local v1           #mOldChildPositions:[I
    .end local v2           #oldChildCount:I
    .end local v3           #oldFirstVisiblePosition:I
    .end local v4           #selectedItemPosition:I
    .end local v6           #y:I
    :cond_32
    :goto_32
    return-void

    .line 128
    :cond_33
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_32
.end method
