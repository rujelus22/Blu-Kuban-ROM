.class public Lcom/google/android/finsky/activities/SongListViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SongListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;


# instance fields
.field private mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mNumSongsToShow:I

.field private mUseActualTrackNumbers:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method

.method private detachRequestListeners()V
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_e

    .line 107
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 110
    :cond_e
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .registers 14
    .parameter "view"
    .parameter "albumDoc"
    .parameter "title"
    .parameter "subtitle"
    .parameter "songListUrl"
    .parameter "useActualTrackNumbers"
    .parameter "numSongsToShow"
    .parameter "hasDetailsLoaded"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 54
    const/4 v1, 0x2

    invoke-super {p0, p1, p3, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    .line 56
    if-nez p8, :cond_f

    .line 57
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :goto_e
    return-void

    .line 61
    :cond_f
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, subheaderView:Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 65
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_28
    iput-object p2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    .line 72
    iput p7, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    .line 74
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    .line 75
    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v1, v2, p5, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 76
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 77
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 78
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 80
    iput-boolean p6, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    goto :goto_e

    .line 67
    :cond_4a
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28
.end method

.method public onDataChanged()V
    .registers 8

    .prologue
    .line 85
    iget-object v3, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    check-cast v3, Lcom/google/android/finsky/layout/SongList;

    .line 86
    .local v3, songList:Lcom/google/android/finsky/layout/SongList;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 87
    .local v0, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget v4, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    iget-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 88
    .local v2, numTracks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_15
    if-ge v1, v2, :cond_23

    .line 89
    iget-object v4, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v4, v1}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 91
    :cond_23
    iget-object v4, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    invoke-virtual {v3, v4, v5, v0, v6}, Lcom/google/android/finsky/layout/SongList;->setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Z)V

    .line 92
    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    .line 103
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method
