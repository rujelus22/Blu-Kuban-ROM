.class public Lcom/google/android/finsky/layout/SongList;
.super Landroid/widget/LinearLayout;
.source "SongList.java"


# instance fields
.field private final mCorpusColor:I

.field private mHighlightedSongDocId:Ljava/lang/String;

.field private mParent:Landroid/widget/ScrollView;

.field private final mScrollRunnable:Ljava/lang/Runnable;

.field private final mSongSnippets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/layout/SongSnippet;",
            ">;"
        }
    .end annotation
.end field

.field private mSongsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    .line 39
    new-instance v0, Lcom/google/android/finsky/layout/SongList$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongList$1;-><init>(Lcom/google/android/finsky/layout/SongList;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    .line 63
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/SongList;->mCorpusColor:I

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongList;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongList;)Landroid/widget/ScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private hideUi()V
    .registers 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 176
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_c

    .line 177
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 181
    :goto_b
    return-void

    .line 179
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto :goto_b
.end method

.method private highlightSong()V
    .registers 5

    .prologue
    .line 165
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 166
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, songDocId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SongSnippet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    goto :goto_14

    .line 170
    .end local v1           #songDocId:Ljava/lang/String;
    :cond_2d
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/SongList;->post(Ljava/lang/Runnable;)Z

    .line 172
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_32
    return-void
.end method

.method private shouldShowArtistNames(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)Z
    .registers 8
    .parameter "album"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v4, 0x0

    .line 143
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 144
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, representativeTitle:Ljava/lang/String;
    :goto_11
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 152
    .local v2, song:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 153
    const/4 v3, 0x1

    .line 156
    .end local v2           #song:Lcom/google/android/finsky/api/model/Document;
    :goto_2c
    return v3

    .line 147
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #representativeTitle:Ljava/lang/String;
    :cond_2d
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #representativeTitle:Ljava/lang/String;
    goto :goto_11

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_38
    move v3, v4

    .line 156
    goto :goto_2c
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 77
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 70
    const v0, 0x7f080177

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    .line 71
    return-void
.end method

.method public setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V
    .registers 3
    .parameter "songDocumentId"
    .parameter "parent"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    .line 161
    iput-object p2, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    .line 162
    return-void
.end method

.method public setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;ZLjava/util/Set;)V
    .registers 24
    .parameter "navigationManager"
    .parameter "album"
    .parameter
    .parameter "useActualTrackNumbers"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    .local p5, initiallyOwnedDocuments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 85
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 88
    :cond_18
    if-eqz p3, :cond_20

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 89
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->hideUi()V

    .line 134
    :goto_23
    return-void

    .line 93
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/layout/SongList;->shouldShowArtistNames(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)Z

    move-result v7

    .line 94
    .local v7, showArtistNames:Z
    const v4, 0x7f0800a8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 95
    .local v11, headerText:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/finsky/layout/SongList;->mCorpusColor:I

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    const v4, 0x7f080176

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/finsky/layout/PlaylistControlButtons;

    .line 99
    .local v16, songListControl:Lcom/google/android/finsky/layout/PlaylistControlButtons;
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setDocuments(Ljava/util/Collection;)V

    .line 101
    const v4, 0x7f080175

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 102
    .local v10, header:Landroid/view/View;
    new-instance v4, Lcom/google/android/finsky/layout/SongList$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/google/android/finsky/layout/SongList$2;-><init>(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/layout/PlaylistControlButtons;)V

    invoke-virtual {v10, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 111
    .local v13, inflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v15

    .line 112
    .local v15, library:Lcom/google/android/finsky/library/Library;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_78
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_d5

    .line 113
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/finsky/api/model/Document;

    .line 114
    .local v5, song:Lcom/google/android/finsky/api/model/Document;
    const v4, 0x7f04009b

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v13, v4, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/layout/SongSnippet;

    .line 116
    .local v3, snippet:Lcom/google/android/finsky/layout/SongSnippet;
    if-eqz p4, :cond_d0

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v6

    .line 119
    .local v6, trackNumber:I
    :goto_9c
    invoke-static {v5, v15}, Lcom/google/android/finsky/utils/LibraryUtils;->isOwned(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/Library;)Z

    move-result v14

    .line 120
    .local v14, isOwned:Z
    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 121
    .local v17, wasOwned:Z
    if-eqz v14, :cond_d3

    if-nez v17, :cond_d3

    const/4 v9, 0x1

    .local v9, isNewPurchase:Z
    :goto_af
    move-object/from16 v4, p2

    move-object/from16 v8, p1

    .line 122
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/finsky/layout/SongSnippet;->setSongDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;Z)V

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    if-nez v12, :cond_cd

    .line 129
    invoke-virtual {v3}, Lcom/google/android/finsky/layout/SongSnippet;->initialize()V

    .line 112
    :cond_cd
    add-int/lit8 v12, v12, 0x1

    goto :goto_78

    .line 116
    .end local v6           #trackNumber:I
    .end local v9           #isNewPurchase:Z
    .end local v14           #isOwned:Z
    .end local v17           #wasOwned:Z
    :cond_d0
    add-int/lit8 v6, v12, 0x1

    goto :goto_9c

    .line 121
    .restart local v6       #trackNumber:I
    .restart local v14       #isOwned:Z
    .restart local v17       #wasOwned:Z
    :cond_d3
    const/4 v9, 0x0

    goto :goto_af

    .line 133
    .end local v3           #snippet:Lcom/google/android/finsky/layout/SongSnippet;
    .end local v5           #song:Lcom/google/android/finsky/api/model/Document;
    .end local v6           #trackNumber:I
    .end local v14           #isOwned:Z
    .end local v17           #wasOwned:Z
    :cond_d5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/layout/SongList;->highlightSong()V

    goto/16 :goto_23
.end method
