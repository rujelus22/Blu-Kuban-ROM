.class public Lcom/google/android/finsky/activities/SongListViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "SongListViewBinder.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/google/android/finsky/api/model/OnDataChangedListener;
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# instance fields
.field private mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

.field private mInitialDocumentsOwned:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

.field private mLibraries:Lcom/google/android/finsky/library/Libraries;

.field private mNumSongsToShow:I

.field private mUseActualTrackNumbers:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    return-void
.end method

.method private detachRequestListeners()V
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/api/model/DfeList;->removeErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 180
    :cond_e
    return-void
.end method

.method private populateFromLibrary(Lcom/google/android/finsky/library/Library;)V
    .registers 12
    .parameter "library"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    check-cast v0, Lcom/google/android/finsky/layout/SongList;

    .line 122
    .local v0, songList:Lcom/google/android/finsky/layout/SongList;
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 123
    .local v3, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/DfeList;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 125
    .local v8, numTracks:I
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    if-nez v1, :cond_43

    const/4 v6, 0x1

    .line 126
    .local v6, firstTimeThrough:Z
    :goto_19
    if-eqz v6, :cond_21

    .line 127
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    .line 130
    :cond_21
    const/4 v7, 0x0

    .local v7, i:I
    :goto_22
    if-ge v7, v8, :cond_45

    .line 131
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, v7}, Lcom/google/android/finsky/api/model/DfeList;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/api/model/Document;

    .line 132
    .local v9, song:Lcom/google/android/finsky/api/model/Document;
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    if-eqz v6, :cond_40

    invoke-static {v9, p1}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 135
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-virtual {v9}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 125
    .end local v6           #firstTimeThrough:Z
    .end local v7           #i:I
    .end local v9           #song:Lcom/google/android/finsky/api/model/Document;
    :cond_43
    const/4 v6, 0x0

    goto :goto_19

    .line 138
    .restart local v6       #firstTimeThrough:Z
    .restart local v7       #i:I
    :cond_45
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    iget-boolean v4, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    iget-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/SongList;->setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;ZLjava/util/Set;)V

    .line 140
    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLcom/google/android/finsky/library/Libraries;)V
    .registers 15
    .parameter "view"
    .parameter "albumDoc"
    .parameter "title"
    .parameter "subtitle"
    .parameter "songListUrl"
    .parameter "useActualTrackNumbers"
    .parameter "numSongsToShow"
    .parameter "hasDetailsLoaded"
    .parameter "libraries"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 72
    const/4 v1, 0x2

    invoke-super {p0, p1, p3, v1}, Lcom/google/android/finsky/fragments/DetailsViewBinder;->bind(Landroid/view/View;Ljava/lang/String;I)V

    .line 74
    iput-object p9, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    .line 76
    if-nez p8, :cond_11

    .line 77
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 104
    :goto_10
    return-void

    .line 81
    :cond_11
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLayout:Landroid/view/View;

    const v2, 0x7f0800a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, subheaderView:Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 85
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_2a
    iput-object p2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mAlbumDoc:Lcom/google/android/finsky/api/model/Document;

    .line 92
    iput p7, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mNumSongsToShow:I

    .line 94
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    .line 95
    new-instance v1, Lcom/google/android/finsky/api/model/DfeList;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-direct {v1, v2, p5, v3}, Lcom/google/android/finsky/api/model/DfeList;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    .line 96
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/api/model/DfeList;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mItemListRequest:Lcom/google/android/finsky/api/model/DfeList;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeList;->startLoadItems()V

    .line 100
    iput-boolean p6, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mUseActualTrackNumbers:Z

    .line 102
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v1, p0}, Lcom/google/android/finsky/library/Libraries;->addListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    goto :goto_10

    .line 87
    :cond_56
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2a
.end method

.method public onAllLibrariesLoaded()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public onDataChanged()V
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/SongListViewBinder;->populateFromLibrary(Lcom/google/android/finsky/library/Library;)V

    .line 109
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    if-eqz v0, :cond_9

    .line 151
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mLibraries:Lcom/google/android/finsky/library/Libraries;

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/library/Libraries;->removeListener(Lcom/google/android/finsky/library/Libraries$Listener;)V

    .line 153
    :cond_9
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SongListViewBinder;->detachRequestListeners()V

    .line 154
    return-void
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .registers 2
    .parameter "library"

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/SongListViewBinder;->populateFromLibrary(Lcom/google/android/finsky/library/Library;)V

    .line 118
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 157
    const-string v5, "SongListViewBinder.InitialDocumentsOwned"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, ownedDocumentIds:[Ljava/lang/String;
    if-eqz v4, :cond_1d

    .line 159
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    .line 160
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_11
    if-ge v1, v2, :cond_1d

    aget-object v3, v0, v1

    .line 161
    .local v3, ownedDocumentId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 164
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #ownedDocumentId:Ljava/lang/String;
    :cond_1d
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, ownedDocumentIds:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    if-eqz v2, :cond_15

    .line 169
    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 170
    .local v0, numDocuments:I
    iget-object v2, p0, Lcom/google/android/finsky/activities/SongListViewBinder;->mInitialDocumentsOwned:Ljava/util/Set;

    new-array v3, v0, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #ownedDocumentIds:[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    .line 172
    .end local v0           #numDocuments:I
    .restart local v1       #ownedDocumentIds:[Ljava/lang/String;
    :cond_15
    const-string v2, "SongListViewBinder.InitialDocumentsOwned"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 173
    return-void
.end method
