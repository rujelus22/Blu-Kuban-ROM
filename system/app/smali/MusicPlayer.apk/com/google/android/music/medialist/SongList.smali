.class public abstract Lcom/google/android/music/medialist/SongList;
.super Lcom/google/android/music/medialist/MediaList;
.source "SongList.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/music/medialist/SongList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mSortOrder:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 225
    new-instance v0, Lcom/google/android/music/medialist/SongList$1;

    invoke-direct {v0}, Lcom/google/android/music/medialist/SongList$1;-><init>()V

    sput-object v0, Lcom/google/android/music/medialist/SongList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "sortOrder"

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/music/dl/ContentIdentifier$Domain;->DEFAULT:Lcom/google/android/music/dl/ContentIdentifier$Domain;

    invoke-direct {p0, v0}, Lcom/google/android/music/medialist/MediaList;-><init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 47
    iput p1, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    .line 48
    return-void
.end method

.method public constructor <init>(ILcom/google/android/music/dl/ContentIdentifier$Domain;)V
    .registers 3
    .parameter "sortOrder"
    .parameter "domain"

    .prologue
    .line 41
    invoke-direct {p0, p2}, Lcom/google/android/music/medialist/MediaList;-><init>(Lcom/google/android/music/dl/ContentIdentifier$Domain;)V

    .line 42
    iput p1, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    .line 43
    return-void
.end method


# virtual methods
.method public appendToPlaylist(Landroid/content/ContentResolver;J)I
    .registers 6
    .parameter "resolver"
    .parameter "playlistId"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "appending to playlist not supported by base SongList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsLocalItems(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public containsRemoteItems(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public final describeContents()I
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public getItemLayout()I
    .registers 2

    .prologue
    .line 222
    const v0, 0x7f04005e

    return v0
.end method

.method public getSortOrder()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    return v0
.end method

.method protected getSortParam()Ljava/lang/String;
    .registers 3

    .prologue
    .line 92
    iget v1, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    packed-switch v1, :pswitch_data_14

    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, sortParam:Ljava/lang/String;
    :goto_6
    return-object v0

    .line 94
    .end local v0           #sortParam:Ljava/lang/String;
    :pswitch_7
    const-string v0, "name"

    .line 95
    .restart local v0       #sortParam:Ljava/lang/String;
    goto :goto_6

    .line 97
    .end local v0           #sortParam:Ljava/lang/String;
    :pswitch_a
    const-string v0, "album"

    .line 98
    .restart local v0       #sortParam:Ljava/lang/String;
    goto :goto_6

    .line 100
    .end local v0           #sortParam:Ljava/lang/String;
    :pswitch_d
    const-string v0, "artist"

    .line 101
    .restart local v0       #sortParam:Ljava/lang/String;
    goto :goto_6

    .line 103
    .end local v0           #sortParam:Ljava/lang/String;
    :pswitch_10
    const-string v0, "date"

    .line 104
    .restart local v0       #sortParam:Ljava/lang/String;
    goto :goto_6

    .line 92
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public getSuggestedPositionSearchRadius()I
    .registers 2

    .prologue
    .line 249
    const/16 v0, 0xfa

    return v0
.end method

.method public abstract getValidSortOrders()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public hasMetaData()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public hasStablePrimaryIds()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public hasUniqueAudioId()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/store/IStoreService;)Z
    .registers 5
    .parameter "context"
    .parameter "offlineMusicManager"
    .parameter "storeService"

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectedForOfflineCaching(Lcom/google/android/music/store/IStoreService;)Z
    .registers 3
    .parameter "storeService"

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V
    .registers 4
    .parameter "offlineMusicManager"
    .parameter "context"
    .parameter "selected"

    .prologue
    .line 214
    return-void
.end method

.method public refreshMetaData(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 6
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no metadata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSortOrder(I)V
    .registers 2
    .parameter "order"

    .prologue
    .line 83
    iput p1, p0, Lcom/google/android/music/medialist/SongList;->mSortOrder:I

    .line 84
    return-void
.end method

.method public abstract storeDefaultSortOrder(Landroid/content/Context;)V
.end method

.method public supportsAppendToPlaylist()Z
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public supportsOfflineCaching()Z
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 4
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/google/android/music/medialist/SongList;->freeze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    return-void
.end method
