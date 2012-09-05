.class public abstract Lcom/sec/android/socialhub/view/IndexListView;
.super Lcom/sec/android/socialhub/view/QueryHandleListView;
.source "IndexListView.java"


# instance fields
.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field public mEmpty:Landroid/view/View;

.field protected mIndexCharacter:Ljava/lang/String;

.field public mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

.field protected mSortedColumnIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/QueryHandleListView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 30
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 32
    const-string v0, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mSortedColumnIndex:I

    .line 34
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/IndexListView;->initialize(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/view/QueryHandleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 30
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 32
    const-string v0, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mSortedColumnIndex:I

    .line 34
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/IndexListView;->initialize(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/socialhub/view/QueryHandleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 30
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    .line 31
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 32
    const-string v0, "#ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    iput-object v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mSortedColumnIndex:I

    .line 34
    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 51
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/view/IndexListView;->initialize(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-direct {v1, p1}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    .line 61
    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    .line 62
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    const/16 v2, 0x59

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 63
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    const v2, 0x7f0b0032

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, mMessage:Landroid/widget/TextView;
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public abstract onIndexSelected(I)V
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 105
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/view/QueryHandleListView;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 107
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/ResourceCursorAdapter;

    if-eqz v1, :cond_10

    .line 109
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/ResourceCursorAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 112
    :cond_10
    if-eqz p3, :cond_50

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_50

    .line 116
    :try_start_18
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    .line 118
    :cond_25
    const-string v1, " "

    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    .line 120
    :cond_29
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    iget v2, p0, Lcom/sec/android/socialhub/view/IndexListView;->mSortedColumnIndex:I

    iget-object v3, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    invoke-direct {v1, p3, v2, v3}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 122
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    if-eqz v1, :cond_49

    .line 124
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    iget-object v2, p0, Lcom/sec/android/socialhub/view/IndexListView;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 125
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    new-instance v2, Lcom/sec/android/socialhub/view/IndexListView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/socialhub/view/IndexListView$1;-><init>(Lcom/sec/android/socialhub/view/IndexListView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwIndexScrollView$OnIndexSelectedListener;)V

    .line 135
    :cond_49
    iget-object v1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/sec/android/socialhub/view/IndexListView;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_50} :catch_51

    .line 146
    :cond_50
    :goto_50
    return-void

    .line 137
    :catch_51
    move-exception v0

    .line 139
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v1, "QueryHandleListView"

    const-string v2, "onQueryComplete()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/socialhub/view/IndexListView;->mSortedColumnIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , char - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/view/IndexListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 87
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/view/QueryHandleListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    return-void
.end method

.method public setIndexCharacter(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexCharacter:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setParentLayout(Landroid/view/ViewGroup;)V
    .registers 4
    .parameter "layout"

    .prologue
    const/4 v1, -0x1

    .line 75
    if-eqz p1, :cond_d

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mIndexer:Lcom/sec/android/touchwiz/widget/TwIndexScrollView;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 78
    iget-object v0, p0, Lcom/sec/android/socialhub/view/IndexListView;->mEmpty:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 80
    :cond_d
    return-void
.end method

.method public setSortedColumnIndex(I)V
    .registers 2
    .parameter "sort_index"

    .prologue
    .line 92
    iput p1, p0, Lcom/sec/android/socialhub/view/IndexListView;->mSortedColumnIndex:I

    .line 93
    return-void
.end method
