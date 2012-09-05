.class public Lcom/sec/android/app/music/widget/TwIndexListView;
.super Landroid/widget/ListView;
.source "TwIndexListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field private mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field protected mScrollState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/sec/android/app/music/widget/TwIndexListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/widget/TwIndexListView;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/widget/TwIndexListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 50
    return-void
.end method


# virtual methods
.method public onIndexSelected(I)V
    .registers 2
    .parameter "sectionIndex"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/widget/TwIndexListView;->setSelection(I)V

    .line 103
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 111
    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 115
    iget v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mScrollState:I

    if-eq v0, p2, :cond_f

    .line 116
    iput p2, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mScrollState:I

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/music/widget/TwIndexListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/music/widget/SimpleScrollCursorAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 126
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_18

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 129
    :cond_18
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/music/widget/TwIndexListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_15

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 59
    :cond_15
    iput-object p1, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mAdapter:Landroid/widget/Adapter;

    .line 60
    return-void
.end method

.method public setIndexer(Landroid/database/Cursor;ILjava/lang/String;)V
    .registers 6
    .parameter "c"
    .parameter "columnIndex"
    .parameter "indexCharacters"

    .prologue
    .line 72
    if-eqz p1, :cond_2d

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_14

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 77
    :cond_14
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v0, :cond_2d

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v1, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 83
    :cond_2d
    return-void
.end method

.method public setTwScrollView(Lcom/sec/android/touchwiz/widget/TwIndexScrollView;)V
    .registers 3
    .parameter "sv"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {p1, v0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 96
    :cond_9
    invoke-virtual {p1, p0}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 97
    iput-object p1, p0, Lcom/sec/android/app/music/widget/TwIndexListView;->mIndexScrollView:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 98
    return-void
.end method
