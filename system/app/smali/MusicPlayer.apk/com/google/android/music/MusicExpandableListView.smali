.class public Lcom/google/android/music/MusicExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "MusicExpandableListView.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupCollapseListener;
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field mDrawingFix:Z

.field private mExpandedGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
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
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicExpandableListView;->mExpandedGroups:Ljava/util/Set;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_overdraw_explistview"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/MusicExpandableListView;->mDrawingFix:Z

    .line 39
    invoke-virtual {p0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 40
    invoke-virtual {p0, p0}, Lcom/google/android/music/MusicExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 41
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .parameter "c"

    .prologue
    .line 46
    iget-boolean v7, p0, Lcom/google/android/music/MusicExpandableListView;->mDrawingFix:Z

    if-eqz v7, :cond_50

    .line 48
    invoke-virtual {p0}, Lcom/google/android/music/MusicExpandableListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 49
    .local v3, d:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_d

    .line 50
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 52
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/music/MusicExpandableListView;->getChildCount()I

    move-result v2

    .line 53
    .local v2, count:I
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v7}, Lcom/google/android/music/MusicExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 54
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_4f

    .line 55
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 56
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/google/android/music/MusicExpandableListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 57
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 58
    .local v0, bottom:I
    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 60
    .local v1, clip:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4c

    .line 63
    invoke-virtual {p0}, Lcom/google/android/music/MusicExpandableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 64
    if-eqz v3, :cond_49

    .line 65
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 66
    .local v4, db:Landroid/graphics/Rect;
    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v7, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 67
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    .end local v4           #db:Landroid/graphics/Rect;
    :cond_49
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 72
    :cond_4c
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->draw(Landroid/graphics/Canvas;)V

    .line 77
    .end local v0           #bottom:I
    .end local v1           #clip:Landroid/graphics/Rect;
    .end local v2           #count:I
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v6           #v:Landroid/view/View;
    :cond_4f
    :goto_4f
    return-void

    .line 75
    :cond_50
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4f
.end method

.method public getExpandedPositions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/music/MusicExpandableListView;->mExpandedGroups:Ljava/util/Set;

    return-object v0
.end method

.method public onGroupCollapse(I)V
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/music/MusicExpandableListView;->mExpandedGroups:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public onGroupExpand(I)V
    .registers 4
    .parameter "groupPosition"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/MusicExpandableListView;->mExpandedGroups:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method
