.class public Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;
.super Ljava/lang/Object;
.source "ArtDownloadServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$1;,
        Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;,
        Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;,
        Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mAlbumArtChangedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;

.field private mAlbumArtWatchedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;

.field private mArtworkListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseArtListenerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReverseArtListenerCache:Ljava/util/HashMap;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->handleAlbumArtChanged(J)V

    return-void
.end method

.method private addArtworkListenerLocked(JLjava/util/LinkedList;)V
    .registers 6
    .parameter "albumId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 150
    .local v0, albumIdLong:Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method private cleanArtListenerCache()V
    .registers 11

    .prologue
    .line 159
    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    monitor-enter v7

    .line 161
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v6}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v5

    .local v5, ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    if-eqz v5, :cond_54

    .line 162
    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 163
    .local v1, albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v1, :cond_3

    .line 164
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 165
    .local v0, albumId:Ljava/lang/Long;
    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 167
    .local v4, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    if-eqz v4, :cond_19

    .line 168
    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 169
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    :cond_33
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    .line 170
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_33

    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_33

    .line 181
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v1           #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v5           #ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    :catchall_43
    move-exception v6

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw v6

    .line 174
    .restart local v0       #albumId:Ljava/lang/Long;
    .restart local v1       #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .restart local v4       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .restart local v5       #ref:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<+Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    :cond_46
    :try_start_46
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 175
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeArtworkListenerLocked(J)V

    goto :goto_19

    .line 181
    .end local v0           #albumId:Ljava/lang/Long;
    .end local v1           #albumIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v4           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    :cond_54
    monitor-exit v7
    :try_end_55
    .catchall {:try_start_46 .. :try_end_55} :catchall_43

    .line 182
    return-void
.end method

.method private createArtChangedBroadcaseReceiver(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.google.android.music.AlbumArtChanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$1;)V

    iput-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtChangedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;

    .line 99
    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtChangedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    return-void
.end method

.method private createArtWatchedQueryBroadcastReceiver(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.google.android.music.AlbumArtQueryWatched"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 108
    new-instance v1, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;-><init>(Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$1;)V

    iput-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtWatchedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;

    .line 110
    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtWatchedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void
.end method

.method private handleAlbumArtChanged(J)V
    .registers 10
    .parameter "albumId"

    .prologue
    .line 124
    invoke-static {p1, p2}, Lcom/google/android/music/utils/AlbumArtUtils;->handleAlbumArtChanged(J)V

    .line 126
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    monitor-enter v5

    .line 127
    :try_start_6
    iget-object v4, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 129
    .local v2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    if-eqz v2, :cond_40

    .line 130
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 133
    .local v1, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    .line 134
    .local v3, possibleListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;
    if-nez v3, :cond_33

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    .line 144
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v1           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    .end local v2           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v3           #possibleListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;
    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw v4

    .line 137
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .restart local v1       #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    .restart local v2       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .restart local v3       #possibleListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;
    :cond_33
    :try_start_33
    invoke-interface {v3, p1, p2}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;->notifyAlbumArtChanged(J)V

    goto :goto_18

    .line 140
    .end local v1           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    .end local v3           #possibleListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;
    :cond_37
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeArtworkListenerLocked(J)V

    .line 144
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    :cond_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_30

    .line 145
    return-void
.end method

.method private removeArtworkListenerLocked(J)V
    .registers 5
    .parameter "albumId"

    .prologue
    .line 154
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 155
    .local v0, albumIdLong:Ljava/lang/Long;
    iget-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method


# virtual methods
.method public getWatchedAlbums()[J
    .registers 11

    .prologue
    .line 235
    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    monitor-enter v7

    .line 236
    :try_start_3
    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v5

    .line 237
    .local v5, size:I
    new-array v4, v5, [J

    .line 238
    .local v4, result:[J
    const/4 v0, 0x0

    .line 239
    .local v0, i:I
    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 240
    .local v3, key:Ljava/lang/Long;
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v4, v1

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_17

    .line 242
    .end local v3           #key:Ljava/lang/Long;
    :cond_2d
    monitor-exit v7

    return-object v4

    .line 243
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #result:[J
    .end local v5           #size:I
    :catchall_2f
    move-exception v6

    monitor-exit v7
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v6
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->createArtChangedBroadcaseReceiver(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->createArtWatchedQueryBroadcastReceiver(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method public onDestroy(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtChangedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    iput-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtChangedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangedBroadcastReceiver;

    .line 118
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtWatchedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    iput-object v1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mAlbumArtWatchedBroadcastReceiver:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtWatchedBroadcastReceiver;

    .line 120
    return-void
.end method

.method public registerAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V
    .registers 10
    .parameter "albumId"
    .parameter "listener"

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->cleanArtListenerCache()V

    .line 187
    iget-object v4, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    monitor-enter v4

    .line 188
    :try_start_6
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 189
    .local v1, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    if-nez v1, :cond_1c

    .line 190
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 191
    .restart local v1       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->addArtworkListenerLocked(JLjava/util/LinkedList;)V

    .line 193
    :cond_1c
    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p3, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 195
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 198
    .local v0, allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v0, :cond_3a

    .line 199
    new-instance v0, Ljava/util/TreeSet;

    .end local v0           #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 200
    .restart local v0       #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_3a
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    monitor-exit v4

    .line 204
    return-void

    .line 203
    .end local v0           #allRegisteredAlbums:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    :catchall_43
    move-exception v3

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_6 .. :try_end_45} :catchall_43

    throw v3
.end method

.method public removeAlbumArtChangeListener(JLcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;)V
    .registers 12
    .parameter "albumId"
    .parameter "listener"

    .prologue
    .line 207
    iget-object v6, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    monitor-enter v6

    .line 208
    :try_start_3
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mArtworkListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 210
    .local v3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    if-eqz v3, :cond_57

    .line 211
    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 212
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 213
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 214
    .local v2, item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;

    .line 215
    .local v4, possibleListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;
    if-eqz v4, :cond_2b

    if-ne v4, p3, :cond_15

    .line 216
    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 218
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 219
    .local v0, allAlbumsForListener:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v0, :cond_15

    .line 220
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 222
    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->mReverseArtListenerCache:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 231
    .end local v0           #allAlbumsForListener:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v2           #item:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;"
    .end local v3           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .end local v4           #possibleListener:Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;
    :catchall_4b
    move-exception v5

    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v5

    .line 227
    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    .restart local v3       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    :cond_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 228
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection;->removeArtworkListenerLocked(J)V

    .line 231
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/dl/artwork/ArtDownloadServiceConnection$AlbumArtChangeListener;>;>;"
    :cond_57
    monitor-exit v6
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_4b

    .line 232
    return-void
.end method
