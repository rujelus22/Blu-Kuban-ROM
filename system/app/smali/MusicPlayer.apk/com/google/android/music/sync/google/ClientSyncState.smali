.class public Lcom/google/android/music/sync/google/ClientSyncState;
.super Ljava/lang/Object;
.source "ClientSyncState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/ClientSyncState$1;,
        Lcom/google/android/music/sync/google/ClientSyncState$Helpers;,
        Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    }
.end annotation


# static fields
.field private static final type:Lcom/google/common/io/protocol/ProtoBufType;


# instance fields
.field final mEtagPlaylist:Ljava/lang/String;

.field final mEtagPlaylistEntry:Ljava/lang/String;

.field final mEtagTrack:Ljava/lang/String;

.field final mRemoteAccount:Ljava/lang/Integer;

.field final mRemotePlaylistVersion:Ljava/lang/Long;

.field final mRemotePlentryVersion:Ljava/lang/Long;

.field final mRemoteTrackVersion:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x224

    const/16 v4, 0x213

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v1, "MusicMetadataSyncState"

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    .line 37
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x215

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 38
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 40
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x3

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 42
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x4

    invoke-virtual {v0, v4, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 44
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x5

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 46
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x6

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 48
    sget-object v0, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x7

    invoke-virtual {v0, v5, v1, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 50
    return-void
.end method

.method private constructor <init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "remoteAccount"
    .parameter "remoteTrackVersion"
    .parameter "remotePlaylistVersion"
    .parameter "remotePlentryVersion"
    .parameter "etagTrack"
    .parameter "etagPlaylist"
    .parameter "etagPlaylistEntry"

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    .line 224
    iput-object p2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    .line 225
    iput-object p3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    .line 226
    iput-object p4, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    .line 227
    iput-object p5, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    .line 228
    iput-object p6, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    .line 229
    iput-object p7, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    .line 230
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/sync/google/ClientSyncState$1;)V
    .registers 9
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/google/android/music/sync/google/ClientSyncState;-><init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .registers 2

    .prologue
    .line 233
    new-instance v0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;-><init>(Lcom/google/android/music/sync/google/ClientSyncState$1;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/android/music/sync/google/ClientSyncState;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;
    .registers 3
    .parameter "clone"

    .prologue
    .line 237
    new-instance v0, Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;-><init>(Lcom/google/android/music/sync/google/ClientSyncState;Lcom/google/android/music/sync/google/ClientSyncState$1;)V

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/music/sync/google/ClientSyncState;
    .registers 16
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/ProviderException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 241
    new-instance v9, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 243
    .local v9, item:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_c
    invoke-virtual {v9, p0}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_75

    .line 247
    invoke-virtual {v9, v11}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    invoke-virtual {v9, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 249
    .local v10, remoteAccount:Ljava/lang/Integer;
    :goto_1d
    invoke-virtual {v9, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-virtual {v9, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 251
    .local v2, remoteTrackVersion:Ljava/lang/Long;
    :goto_2b
    invoke-virtual {v9, v13}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-virtual {v9, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 253
    .local v3, remotePlaylistVersion:Ljava/lang/Long;
    :goto_39
    invoke-virtual {v9, v14}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {v9, v14}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 255
    .local v4, remotePlentryVersion:Ljava/lang/Long;
    :goto_47
    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_84

    const/4 v1, 0x5

    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 257
    .local v5, etagTrack:Ljava/lang/String;
    :goto_53
    const/4 v1, 0x6

    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v1, 0x6

    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 259
    .local v6, etagPlaylist:Ljava/lang/String;
    :goto_5f
    const/4 v1, 0x7

    invoke-virtual {v9, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_88

    const/4 v0, 0x7

    invoke-virtual {v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, etagPlaylistEntry:Ljava/lang/String;
    :goto_6b
    new-instance v0, Lcom/google/android/music/sync/google/ClientSyncState;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/sync/google/ClientSyncState;-><init>(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 244
    .end local v2           #remoteTrackVersion:Ljava/lang/Long;
    .end local v3           #remotePlaylistVersion:Ljava/lang/Long;
    .end local v4           #remotePlentryVersion:Ljava/lang/Long;
    .end local v5           #etagTrack:Ljava/lang/String;
    .end local v6           #etagPlaylist:Ljava/lang/String;
    .end local v7           #etagPlaylistEntry:Ljava/lang/String;
    .end local v10           #remoteAccount:Ljava/lang/Integer;
    :catch_75
    move-exception v8

    .line 245
    .local v8, e:Ljava/io/IOException;
    new-instance v0, Lcom/google/android/music/sync/common/ProviderException;

    invoke-direct {v0, v8}, Lcom/google/android/music/sync/common/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .end local v8           #e:Ljava/io/IOException;
    :cond_7c
    move-object v10, v0

    .line 247
    goto :goto_1d

    .restart local v10       #remoteAccount:Ljava/lang/Integer;
    :cond_7e
    move-object v2, v0

    .line 249
    goto :goto_2b

    .restart local v2       #remoteTrackVersion:Ljava/lang/Long;
    :cond_80
    move-object v3, v0

    .line 251
    goto :goto_39

    .restart local v3       #remotePlaylistVersion:Ljava/lang/Long;
    :cond_82
    move-object v4, v0

    .line 253
    goto :goto_47

    .restart local v4       #remotePlentryVersion:Ljava/lang/Long;
    :cond_84
    move-object v5, v0

    .line 255
    goto :goto_53

    .restart local v5       #etagTrack:Ljava/lang/String;
    :cond_86
    move-object v6, v0

    .line 257
    goto :goto_5f

    .restart local v6       #etagPlaylist:Ljava/lang/String;
    :cond_88
    move-object v7, v0

    .line 259
    goto :goto_6b
.end method


# virtual methods
.method public getRemoteAccount()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    return-object v0
.end method

.method public toBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/ProviderException;
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/android/music/sync/google/ClientSyncState;->type:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 267
    .local v1, item:Lcom/google/common/io/protocol/ProtoBuf;
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    .line 268
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 271
    :cond_15
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    if-eqz v2, :cond_23

    .line 272
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 275
    :cond_23
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    if-eqz v2, :cond_31

    .line 276
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 279
    :cond_31
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    if-eqz v2, :cond_3f

    .line 280
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 283
    :cond_3f
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    if-eqz v2, :cond_49

    .line 284
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 287
    :cond_49
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    if-eqz v2, :cond_53

    .line 288
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 291
    :cond_53
    iget-object v2, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    if-eqz v2, :cond_5d

    .line 292
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 296
    :cond_5d
    :try_start_5d
    invoke-virtual {v1}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_62

    move-result-object v2

    return-object v2

    .line 297
    :catch_62
    move-exception v0

    .line 298
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/music/sync/common/ProviderException;

    invoke-direct {v2, v0}, Lcom/google/android/music/sync/common/ProviderException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteAccount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteAccount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; remoteTrackVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemoteTrackVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; remotePlaylistVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlaylistVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; remotePlaylistEntryVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mRemotePlentryVersion:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; etagTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagTrack:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; etagPlaylist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; etagPlaylistEntry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/ClientSyncState;->mEtagPlaylistEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
