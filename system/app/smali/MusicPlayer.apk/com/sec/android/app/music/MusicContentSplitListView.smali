.class public Lcom/sec/android/app/music/MusicContentSplitListView;
.super Landroid/widget/FrameLayout;
.source "MusicContentSplitListView.java"

# interfaces
.implements Lcom/sec/android/app/music/widget/OnMusicListViewInterface;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field mLeftView:Lcom/sec/android/app/music/MusicContentListView;

.field mRightView:Lcom/sec/android/app/music/MusicContentListView;

.field mRightViewContainer:Landroid/view/View;

.field private mSplitViewVisibility:I

.field mTab:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/sec/android/app/music/MusicContentSplitListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicContentSplitListView;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "tabString"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 77
    const/16 v1, 0x8

    iput v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mSplitViewVisibility:I

    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    .local v0, tab:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/music/MusicContentSplitListView;->init(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method private init(ILjava/lang/String;)V
    .registers 9
    .parameter "tabFrom"
    .parameter "keyWord"

    .prologue
    const/4 v5, 0x0

    .line 59
    iput p1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    .line 61
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicContentSplitListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 63
    .local v0, li:Landroid/view/LayoutInflater;
    const v2, 0x7f030011

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 64
    .local v1, splitView:Landroid/view/ViewGroup;
    const v2, 0x7f0c002d

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/MusicContentListView;

    iput-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    .line 65
    const v2, 0x7f0c002e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightViewContainer:Landroid/view/View;

    .line 67
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    iget v3, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 68
    iget v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    if-eqz v2, :cond_53

    .line 70
    const v2, 0x7f0c0030

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/music/MusicContentListView;

    iput-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    iget v3, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    const-string v4, ""

    invoke-virtual {v2, v3, v4, v5, v5}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 73
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    iget-object v3, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/music/MusicContentListView;->bindingSplitView(Lcom/sec/android/app/music/MusicContentListView;)V

    .line 75
    :cond_53
    return-void
.end method


# virtual methods
.method public changeGridView(Z)V
    .registers 4
    .parameter "isGridView"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_14

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/music/MusicContentListView;->changeGridView(Z)V

    .line 124
    if-eqz p1, :cond_15

    .line 125
    iget v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mSplitViewVisibility:I

    .line 126
    .local v0, savedVisibility:I
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentSplitListView;->setSplitViewVisibility(I)V

    .line 127
    iput v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mSplitViewVisibility:I

    .line 132
    .end local v0           #savedVisibility:I
    :cond_14
    :goto_14
    return-void

    .line 129
    :cond_15
    iget v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mSplitViewVisibility:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/music/MusicContentSplitListView;->setSplitViewVisibility(I)V

    goto :goto_14
.end method

.method public closeListCursor()V
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_9

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->closeListCursor()V

    .line 202
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_12

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->closeListCursor()V

    .line 205
    :cond_12
    return-void
.end method

.method public closeRightListCursor()V
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_9

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->closeListCursor()V

    .line 307
    :cond_9
    return-void
.end method

.method public getAudioId(I)J
    .registers 5
    .parameter "position"

    .prologue
    .line 229
    const-wide/16 v0, -0x1

    .line 230
    .local v0, audioId:J
    iget v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    if-nez v2, :cond_11

    .line 231
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v2, :cond_10

    .line 232
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/music/MusicContentListView;->getAudioId(I)J

    move-result-wide v0

    .line 239
    :cond_10
    :goto_10
    return-wide v0

    .line 235
    :cond_11
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v2, :cond_10

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/music/MusicContentListView;->getAudioId(I)J

    move-result-wide v0

    goto :goto_10
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 3

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, mi:Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    if-nez v1, :cond_10

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_f

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 224
    :cond_f
    :goto_f
    return-object v0

    .line 220
    :cond_10
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_f

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    goto :goto_f
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, count:I
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_b

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getCount()I

    move-result v0

    .line 285
    :cond_b
    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .registers 3

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, keyword:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_b

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_b
    return-object v0
.end method

.method public getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;
    .registers 5
    .parameter "position"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, li:Lcom/sec/android/app/music/TrackListView$ListItemInfo;
    iget v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_10

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/music/MusicContentListView;->getListItemInfo(I)Lcom/sec/android/app/music/TrackListView$ListItemInfo;

    move-result-object v0

    .line 252
    :cond_10
    return-object v0
.end method

.method public getRightViewCount()I
    .registers 3

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, count:I
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_b

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getCount()I

    move-result v0

    .line 293
    :cond_b
    return v0
.end method

.method public invalidateAllViews()V
    .registers 3

    .prologue
    .line 140
    sget-object v0, Lcom/sec/android/app/music/MusicContentSplitListView;->CLASSNAME:Ljava/lang/String;

    const-string v1, "invalidateAllViews"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_10

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V

    .line 145
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_19

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V

    .line 148
    :cond_19
    return-void
.end method

.method public invalidateRightViews()V
    .registers 3

    .prologue
    .line 152
    sget-object v0, Lcom/sec/android/app/music/MusicContentSplitListView;->CLASSNAME:Ljava/lang/String;

    const-string v1, "invalidateAllViews"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_10

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->invalidateAllViews()V

    .line 157
    :cond_10
    return-void
.end method

.method public isGridView()Z
    .registers 3

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, isGridView:Z
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_b

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->isGridView()Z

    move-result v0

    .line 116
    :cond_b
    return v0
.end method

.method public reQueryListCursor(Z)V
    .registers 4
    .parameter "async"

    .prologue
    .line 166
    sget-object v0, Lcom/sec/android/app/music/MusicContentSplitListView;->CLASSNAME:Ljava/lang/String;

    const-string v1, "requeryListCursor mListView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_10

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicContentListView;->reQueryListCursor(Z)V

    .line 171
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_19

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicContentListView;->reQueryListCursor(Z)V

    .line 175
    :cond_19
    return-void
.end method

.method public setAutoReQuery(Z)V
    .registers 3
    .parameter "autoRequery"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_9

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicContentListView;->setAutoReQuery(Z)V

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_12

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicContentListView;->setAutoReQuery(Z)V

    .line 195
    :cond_12
    return-void
.end method

.method public setContentChangedListenHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicContentListView;->setContentChangedListenHandler(Landroid/os/Handler;)V

    .line 182
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_12

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicContentListView;->setContentChangedListenHandler(Landroid/os/Handler;)V

    .line 185
    :cond_12
    return-void
.end method

.method public setRightViewInit(ILjava/lang/String;ZZ)V
    .registers 6
    .parameter "tabFrom"
    .parameter "keyWord"
    .parameter "isSelectMode"
    .parameter "isReorderMode"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_9

    .line 299
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 301
    :cond_9
    return-void
.end method

.method public setSplitViewVisibility(I)V
    .registers 5
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    .line 80
    iget v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    if-nez v1, :cond_c

    .line 82
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightViewContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :goto_b
    return-void

    .line 87
    :cond_c
    iput p1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mSplitViewVisibility:I

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->isGridView()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightViewContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 95
    :cond_1c
    if-nez p1, :cond_33

    sget v1, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->sSavedWidth:I

    if-lez v1, :cond_33

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightViewContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    sget v1, Lcom/sec/android/app/music/widget/ListSplitViewResizer;->sSavedWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightViewContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_33
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightViewContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    if-nez p1, :cond_41

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicContentListView;->setIndexScrollViewVisibility(I)V

    goto :goto_b

    .line 106
    :cond_41
    iget-object v1, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicContentListView;->setIndexScrollViewVisibility(I)V

    goto :goto_b
.end method

.method public startNowplayingProgress()V
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    if-nez v0, :cond_d

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_d

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->startNowplayingProgress()V

    .line 262
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_16

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->startNowplayingProgress()V

    .line 265
    :cond_16
    return-void
.end method

.method public stopNowplayingProgress()V
    .registers 2

    .prologue
    .line 269
    iget v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mTab:I

    if-nez v0, :cond_d

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_d

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mLeftView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->stopNowplayingProgress()V

    .line 274
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v0, :cond_16

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/music/MusicContentSplitListView;->mRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->stopNowplayingProgress()V

    .line 277
    :cond_16
    return-void
.end method
