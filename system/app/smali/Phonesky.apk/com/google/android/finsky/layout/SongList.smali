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
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    .line 35
    new-instance v0, Lcom/google/android/finsky/layout/SongList$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/SongList$1;-><init>(Lcom/google/android/finsky/layout/SongList;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    .line 59
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/SongList;->mCorpusColor:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/SongList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/SongList;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/SongList;)Landroid/widget/ScrollView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private hideUi()V
    .registers 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongList;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 165
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_c

    .line 166
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 170
    :goto_b
    return-void

    .line 168
    :cond_c
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongList;->setVisibility(I)V

    goto :goto_b
.end method

.method private highlightSong()V
    .registers 5

    .prologue
    .line 154
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 155
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

    .line 156
    .local v1, songDocId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/SongSnippet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    goto :goto_14

    .line 159
    .end local v1           #songDocId:Ljava/lang/String;
    :cond_2d
    iget-object v2, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/SongList;->post(Ljava/lang/Runnable;)Z

    .line 161
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

    .line 132
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 133
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
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

    .line 141
    .local v2, song:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 142
    const/4 v3, 0x1

    .line 145
    .end local v2           #song:Lcom/google/android/finsky/api/model/Document;
    :goto_2c
    return v3

    .line 136
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

    .line 145
    goto :goto_2c
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 72
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 73
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 66
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    .line 67
    return-void
.end method

.method public setHighlightedSong(Ljava/lang/String;Landroid/widget/ScrollView;)V
    .registers 3
    .parameter "songDocumentId"
    .parameter "parent"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/finsky/layout/SongList;->mHighlightedSongDocId:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lcom/google/android/finsky/layout/SongList;->mParent:Landroid/widget/ScrollView;

    .line 151
    return-void
.end method

.method public setListDetails(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Ljava/util/List;Z)V
    .registers 16
    .parameter "navigationManager"
    .parameter "album"
    .parameter
    .parameter "useActualTrackNumbers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/navigationmanager/NavigationManager;",
            "Lcom/google/android/finsky/api/model/Document;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p3, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 79
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 83
    :cond_12
    if-eqz p3, :cond_1a

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 84
    :cond_1a
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongList;->hideUi()V

    .line 123
    :goto_1d
    return-void

    .line 88
    :cond_1e
    invoke-direct {p0, p2, p3}, Lcom/google/android/finsky/layout/SongList;->shouldShowArtistNames(Lcom/google/android/finsky/api/model/Document;Ljava/util/List;)Z

    move-result v4

    .line 89
    .local v4, showArtistNames:Z
    const v1, 0x7f0800a2

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 90
    .local v7, headerText:Landroid/widget/TextView;
    iget v1, p0, Lcom/google/android/finsky/layout/SongList;->mCorpusColor:I

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    const v1, 0x7f080138

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/layout/PlaylistControlButtons;

    .line 94
    .local v10, playAllButton:Lcom/google/android/finsky/layout/PlaylistControlButtons;
    invoke-virtual {v10, p3}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setDocuments(Ljava/util/Collection;)V

    .line 96
    const v1, 0x7f080137

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/SongList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 97
    .local v6, header:Landroid/view/View;
    new-instance v1, Lcom/google/android/finsky/layout/SongList$2;

    invoke-direct {v1, p0, v10}, Lcom/google/android/finsky/layout/SongList$2;-><init>(Lcom/google/android/finsky/layout/SongList;Lcom/google/android/finsky/layout/PlaylistControlButtons;)V

    invoke-virtual {v6, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SongList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 106
    .local v9, inflater:Landroid/view/LayoutInflater;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_54
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_93

    .line 107
    invoke-interface {p3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/api/model/Document;

    .line 108
    .local v2, song:Lcom/google/android/finsky/api/model/Document;
    const v1, 0x7f04008d

    const/4 v5, 0x0

    invoke-virtual {v9, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/SongSnippet;

    .line 110
    .local v0, snippet:Lcom/google/android/finsky/layout/SongSnippet;
    if-eqz p4, :cond_90

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getSongDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$SongDetails;->getTrackNumber()I

    move-result v3

    .local v3, trackNumber:I
    :goto_74
    move-object v1, p2

    move-object v5, p1

    .line 112
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/SongSnippet;->setSongDetails(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/Document;IZLcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongList;->mSongsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/finsky/layout/SongList;->mSongSnippets:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    if-nez v8, :cond_8d

    .line 118
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/SongSnippet;->setState(I)V

    .line 106
    :cond_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_54

    .line 110
    .end local v3           #trackNumber:I
    :cond_90
    add-int/lit8 v3, v8, 0x1

    goto :goto_74

    .line 122
    .end local v0           #snippet:Lcom/google/android/finsky/layout/SongSnippet;
    .end local v2           #song:Lcom/google/android/finsky/api/model/Document;
    :cond_93
    invoke-direct {p0}, Lcom/google/android/finsky/layout/SongList;->highlightSong()V

    goto :goto_1d
.end method
