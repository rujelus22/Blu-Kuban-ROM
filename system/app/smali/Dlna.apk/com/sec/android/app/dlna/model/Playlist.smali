.class public Lcom/sec/android/app/dlna/model/Playlist;
.super Ljava/util/ArrayList;
.source "Playlist.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/sec/android/app/dlna/model/PlaylistItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

.field private currentRepeatMode:I

.field private listeners:Lcom/samsung/util/ListenerList;

.field private shuffleEnabled:Z

.field private volatile shuffleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/dlna/model/PlaylistItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "Playlist."

    iput-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->CLASS_NAME:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentRepeatMode:I

    .line 37
    new-instance v0, Lcom/samsung/util/ListenerList;

    invoke-direct {v0}, Lcom/samsung/util/ListenerList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->listeners:Lcom/samsung/util/ListenerList;

    .line 39
    iput-boolean v1, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleEnabled:Z

    .line 41
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-void
.end method

.method private doShuffle()V
    .registers 4

    .prologue
    .line 93
    const-string v0, "DLNA"

    const-string v1, "Playlist.doShuffle()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 99
    return-void
.end method

.method private getCurrentList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/dlna/model/PlaylistItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-nez v0, :cond_7

    .line 110
    :goto_6
    return-object p0

    .line 105
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_25

    .line 106
    const-string v0, "DLNA"

    const-string v1, "Playlist.getCurrentList is shuffleList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p0, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleList:Ljava/util/LinkedList;

    goto :goto_6

    .line 109
    :cond_25
    const-string v0, "DLNA"

    const-string v1, "Playlist.getCurrentList is Playlist"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private notifyPlaylistchanged()V
    .registers 4

    .prologue
    .line 299
    iget-object v2, p0, Lcom/sec/android/app/dlna/model/Playlist;->listeners:Lcom/samsung/util/ListenerList;

    invoke-virtual {v2}, Lcom/samsung/util/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 300
    .local v1, obj:Ljava/lang/Object;
    instance-of v2, v1, Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;

    if-eqz v2, :cond_6

    .line 301
    check-cast v1, Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;

    .end local v1           #obj:Ljava/lang/Object;
    invoke-interface {v1}, Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;->onPlaylistChanged()V

    goto :goto_6

    .line 303
    :cond_1a
    return-void
.end method

.method private tryToSetPlaying(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 6
    .parameter "newItem"

    .prologue
    const/4 v3, 0x1

    .line 283
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playlist.tryToSetPlaying : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playlist.shuffleEnabled is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". currentRepeatMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentRepeatMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->unsetPlayingItem()V

    .line 288
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_81

    .line 289
    invoke-virtual {p1, v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setPlaying(Z)V

    .line 290
    iput-object p1, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 295
    :goto_7d
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->notifyPlaylistchanged()V

    .line 296
    return-void

    .line 292
    :cond_81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    goto :goto_7d
.end method


# virtual methods
.method public add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 312
    move-object v0, p1

    .line 317
    .local v0, playItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-super {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 318
    .local v1, result:Z
    iget-boolean v2, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleEnabled:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->doShuffle()V

    .line 320
    :cond_14
    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    move-result v0

    return v0
.end method

.method public addPlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->listeners:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public checkAllItems(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 235
    .local v0, i:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setChecked(Z)V

    goto :goto_4

    .line 237
    .end local v0           #i:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_14
    return-void
.end method

.method public getCountOfList()I
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentList()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public getCurrentContentItem()Lcom/samsung/api/ContentItem;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    .line 70
    .local v0, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-nez v0, :cond_8

    .line 71
    const/4 v1, 0x0

    .line 73
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    goto :goto_7
.end method

.method public getCurrentIndexOfList()I
    .registers 4

    .prologue
    .line 47
    move-object v1, p0

    .line 48
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    iget-object v2, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 49
    .local v0, indexOfList:I
    return v0
.end method

.method public getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    return-object v0
.end method

.method public moveToFirst()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v3

    if-nez v3, :cond_8

    .line 377
    :cond_7
    :goto_7
    return v2

    .line 370
    :cond_8
    move-object v0, p0

    .line 371
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 372
    .local v1, nextItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-direct {p0, v1}, Lcom/sec/android/app/dlna/model/Playlist;->tryToSetPlaying(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 375
    const/4 v2, 0x1

    goto :goto_7
.end method

.method public moveToNext()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v5

    if-nez v5, :cond_8

    .line 167
    :cond_7
    :goto_7
    return v4

    .line 123
    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentList()Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    iget-object v5, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-interface {v2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 125
    .local v1, currIndex:I
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-ltz v1, :cond_7

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, curRepeatMode:I
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3a

    .line 140
    iget v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentRepeatMode:I

    .line 142
    :cond_3a
    packed-switch v0, :pswitch_data_80

    .line 158
    :goto_3d
    :pswitch_3d
    if-ltz v1, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 161
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 162
    .local v3, nextItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/model/Playlist;->tryToSetPlaying(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 165
    const/4 v4, 0x1

    goto :goto_7

    .line 144
    .end local v3           #nextItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :pswitch_56
    add-int/lit8 v5, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_68

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dlna/DLNAManager;->isHandleNextButton()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 146
    :cond_68
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/dlna/DLNAManager;->setHandleNextButton(Z)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    .line 148
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v1, v5

    .line 149
    goto :goto_3d

    .line 153
    :pswitch_77
    add-int/lit8 v1, v1, 0x1

    .line 154
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/2addr v1, v5

    goto :goto_3d

    .line 142
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_56
        :pswitch_3d
        :pswitch_77
    .end packed-switch
.end method

.method public moveToNextByController()Z
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 195
    :cond_8
    :goto_8
    return v4

    .line 174
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentList()Ljava/util/List;

    move-result-object v2

    .line 176
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    iget-object v6, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-interface {v2, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 177
    .local v1, currIndex:I
    const/4 v0, 0x0

    .line 178
    .local v0, curRepeatMode:I
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_21

    .line 179
    iget v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentRepeatMode:I

    .line 181
    :cond_21
    if-eq v0, v5, :cond_2a

    .line 182
    add-int/lit8 v1, v1, 0x1

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr v1, v6

    .line 186
    :cond_2a
    if-ltz v1, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 189
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 190
    .local v3, nextItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/model/Playlist;->tryToSetPlaying(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v6

    if-eqz v6, :cond_8

    move v4, v5

    .line 193
    goto :goto_8
.end method

.method public moveToPrev()Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 230
    :cond_8
    :goto_8
    return v5

    .line 202
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentList()Ljava/util/List;

    move-result-object v2

    .line 204
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/android/app/dlna/model/PlaylistItem;>;"
    iget-object v7, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentItem:Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-interface {v2, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 205
    .local v1, currIndex:I
    const/4 v0, 0x0

    .line 206
    .local v0, curRepeatMode:I
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_21

    .line 207
    iget v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentRepeatMode:I

    .line 209
    :cond_21
    if-eq v0, v6, :cond_2d

    .line 210
    add-int/lit8 v1, v1, -0x1

    .line 211
    if-gez v1, :cond_2d

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 215
    :cond_2d
    if-ltz v1, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_8

    .line 218
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 219
    .local v3, nextItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-direct {p0, v3}, Lcom/sec/android/app/dlna/model/Playlist;->tryToSetPlaying(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 222
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v4

    .line 223
    .local v4, playlistItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-eqz v4, :cond_8

    .line 227
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v7

    if-eqz v7, :cond_8

    move v5, v6

    .line 228
    goto :goto_8
.end method

.method public remove(I)Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 3
    .parameter "location"

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->remove(I)Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removePlaylistChangedListener(Lcom/sec/android/app/dlna/model/IPlaylistChangedListenr;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/dlna/model/Playlist;->listeners:Lcom/samsung/util/ListenerList;

    invoke-virtual {v0, p1}, Lcom/samsung/util/ListenerList;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method protected removeRange(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 336
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->removeRange(II)V

    .line 337
    return-void
.end method

.method public setCurrentItemDimmed(Z)V
    .registers 4
    .parameter "flag"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->getCurrentPlaylistItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    .line 359
    .local v0, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    if-eqz v0, :cond_12

    .line 360
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isDimed()Z

    move-result v1

    if-eq v1, p1, :cond_12

    .line 361
    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setDimed(Z)V

    .line 362
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->notifyPlaylistchanged()V

    .line 365
    :cond_12
    return-void
.end method

.method public setCurrentPlayItem(I)V
    .registers 4
    .parameter "index"

    .prologue
    .line 260
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->size()I

    move-result v1

    if-lt p1, v1, :cond_9

    .line 265
    :cond_8
    :goto_8
    return-void

    .line 263
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 264
    .local v0, item:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-direct {p0, v0}, Lcom/sec/android/app/dlna/model/Playlist;->tryToSetPlaying(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    goto :goto_8
.end method

.method public setCurrentPlayItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 2
    .parameter "playItem"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/sec/android/app/dlna/model/Playlist;->tryToSetPlaying(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 256
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 115
    iput p1, p0, Lcom/sec/android/app/dlna/model/Playlist;->currentRepeatMode:I

    .line 116
    return-void
.end method

.method public setShuffle(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/model/Playlist;->shuffleEnabled:Z

    .line 87
    if-eqz p1, :cond_7

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/dlna/model/Playlist;->doShuffle()V

    .line 90
    :cond_7
    return-void
.end method

.method public unsetPlayingItem()V
    .registers 4

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/model/Playlist;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .line 278
    .local v0, i:Lcom/sec/android/app/dlna/model/PlaylistItem;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setPlaying(Z)V

    goto :goto_4

    .line 280
    .end local v0           #i:Lcom/sec/android/app/dlna/model/PlaylistItem;
    :cond_15
    return-void
.end method
