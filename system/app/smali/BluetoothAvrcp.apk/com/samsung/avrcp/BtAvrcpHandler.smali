.class public Lcom/samsung/avrcp/BtAvrcpHandler;
.super Landroid/content/BroadcastReceiver;
.source "BtAvrcpHandler.java"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private db1:Landroid/database/sqlite/SQLiteDatabase;

.field mAction:Ljava/lang/String;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlbumName:Ljava/lang/String;

.field private mArtistName:Ljava/lang/String;

.field private mAudioId:J

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mIsPlaying:Z

.field private mMediaMountedCount:I

.field private mMediaNumber:I

.field private mPosition:J

.field private mRepeatMode:I

.field private mShuffleMode:I

.field private mTrackName:Ljava/lang/String;

.field private sdb:Lcom/samsung/avrcp/AudioDBHelper;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 61
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mArtistName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mTrackName:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAlbumName:Ljava/lang/String;

    .line 65
    iput-boolean v1, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mIsPlaying:Z

    .line 66
    iput-wide v2, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mDuration:J

    .line 67
    iput-wide v2, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mPosition:J

    .line 68
    iput v1, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mShuffleMode:I

    .line 69
    iput-wide v2, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAudioId:J

    .line 70
    iput v1, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mRepeatMode:I

    .line 71
    iput v1, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mMediaNumber:I

    .line 72
    iput v1, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mMediaMountedCount:I

    .line 73
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->sdb:Lcom/samsung/avrcp/AudioDBHelper;

    .line 74
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->db1:Landroid/database/sqlite/SQLiteDatabase;

    .line 75
    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "BtAvrcpHandler constructor call()"

    invoke-static {v0}, Lcom/samsung/avrcp/BtAvrcpHandler;->log(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 80
    return-void
.end method

.method private deleteData()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 227
    const-string v2, "In deleteData"

    invoke-static {v2}, Lcom/samsung/avrcp/BtAvrcpHandler;->log(Ljava/lang/String;)V

    .line 228
    const-string v2, "content://com.samsung.avrcp/Audio"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 229
    .local v1, u:Landroid/net/Uri;
    iget-object v2, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 230
    .local v0, deleted:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of Rows deleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/avrcp/BtAvrcpHandler;->log(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .parameter "msg"

    .prologue
    .line 84
    return-void
.end method

.method private updateDatabase()V
    .registers 6

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/samsung/avrcp/BtAvrcpHandler;->deleteData()V

    .line 199
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v1, value:Landroid/content/ContentValues;
    const-string v2, "action"

    iget-object v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "artist"

    iget-object v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "album"

    iget-object v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v2, "duration"

    iget-wide v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mDuration:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 204
    const-string v2, "_display_name"

    iget-object v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mTrackName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-boolean v2, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mIsPlaying:Z

    if-eqz v2, :cond_8c

    .line 206
    const-string v2, "isplaying"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    :goto_3d
    const-string v2, "position"

    iget-wide v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mPosition:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v2, "mediaNumber"

    iget v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mMediaNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v2, "mediaTotal"

    iget v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mMediaMountedCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v2, "_id"

    iget-wide v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAudioId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    const-string v2, "shuffle"

    iget v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mShuffleMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v2, "repeat"

    iget v3, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mRepeatMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    :try_start_7f
    iget-object v2, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_8b

    .line 218
    iget-object v2, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "AUDIO"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7f .. :try_end_8b} :catch_97

    .line 223
    :cond_8b
    :goto_8b
    return-void

    .line 208
    :cond_8c
    const-string v2, "isplaying"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3d

    .line 220
    :catch_97
    move-exception v0

    .line 221
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_8b
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    .line 89
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    if-eqz v6, :cond_44

    if-eqz p1, :cond_44

    .line 90
    iput-object p1, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mContext:Landroid/content/Context;

    .line 91
    new-instance v6, Lcom/samsung/avrcp/AudioDBHelper;

    invoke-direct {v6, p1}, Lcom/samsung/avrcp/AudioDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->sdb:Lcom/samsung/avrcp/AudioDBHelper;

    .line 92
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->sdb:Lcom/samsung/avrcp/AudioDBHelper;

    invoke-virtual {v6}, Lcom/samsung/avrcp/AudioDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    const-string v6, "content://com.samsung.avrcp/Audio"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 97
    .local v5, u2:Landroid/net/Uri;
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 98
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 100
    .local v1, btState:I
    packed-switch v1, :pswitch_data_136

    .line 162
    .end local v1           #btState:I
    :cond_3b
    :goto_3b
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_44

    .line 163
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    .end local v5           #u2:Landroid/net/Uri;
    :cond_44
    return-void

    .line 102
    .restart local v1       #btState:I
    .restart local v5       #u2:Landroid/net/Uri;
    :pswitch_45
    new-instance v3, Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {v3, p2}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 105
    :try_start_4f
    const-string v6, "Start AVRCP service !"

    invoke-static {v6}, Lcom/samsung/avrcp/BtAvrcpHandler;->log(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_57} :catch_58

    goto :goto_3b

    .line 107
    :catch_58
    move-exception v2

    .line 108
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "BtAvrcpHandler"

    const-string v7, "Unable to invoke AVRCP service !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 112
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i:Landroid/content/Intent;
    :pswitch_61
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, j:Landroid/content/Intent;
    invoke-virtual {v4, p2}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 115
    :try_start_6b
    const-string v6, "Stop AVRCP service !"

    invoke-static {v6}, Lcom/samsung/avrcp/BtAvrcpHandler;->log(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_74

    goto :goto_3b

    .line 117
    :catch_74
    move-exception v2

    .line 118
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "BtAvrcpHandler"

    const-string v7, "Unable to stop AVRCP service !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 124
    .end local v1           #btState:I
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #j:Landroid/content/Intent;
    :cond_7d
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    const-string v7, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    const-string v7, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9b

    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    const-string v7, "com.android.music.musicservicecommand"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 127
    :cond_9b
    new-instance v0, Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, a:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 130
    :try_start_a5
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b0} :catch_b1

    goto :goto_3b

    .line 133
    :catch_b1
    move-exception v2

    .line 134
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "BtAvrcpHandler"

    const-string v7, "Unable to invoke AVRCP media service for A2DP intent!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 139
    .end local v0           #a:Landroid/content/Intent;
    .end local v2           #e:Ljava/lang/Exception;
    :cond_ba
    const-string v6, "artist"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mArtistName:Ljava/lang/String;

    .line 140
    const-string v6, "track"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mTrackName:Ljava/lang/String;

    .line 141
    const-string v6, "album"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAlbumName:Ljava/lang/String;

    .line 142
    const-string v6, "playing"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mIsPlaying:Z

    .line 143
    const-string v6, "position"

    invoke-virtual {p2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mPosition:J

    .line 144
    const-string v6, "shuffle"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mShuffleMode:I

    .line 145
    const-string v6, "repeat"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mRepeatMode:I

    .line 146
    const-string v6, "id"

    invoke-virtual {p2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAudioId:J

    .line 147
    const-string v6, "trackLength"

    invoke-virtual {p2, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mDuration:J

    .line 148
    const-string v6, "listpos"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mMediaNumber:I

    .line 149
    const-string v6, "mediaCount"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mMediaMountedCount:I

    .line 150
    invoke-direct {p0}, Lcom/samsung/avrcp/BtAvrcpHandler;->updateDatabase()V

    .line 151
    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAction:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v4       #j:Landroid/content/Intent;
    invoke-virtual {v4, p2}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 154
    :try_start_11f
    iget-object v6, p0, Lcom/samsung/avrcp/BtAvrcpHandler;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 155
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_12a} :catch_12c

    goto/16 :goto_3b

    .line 157
    :catch_12c
    move-exception v2

    .line 158
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v6, "BtAvrcpHandler"

    const-string v7, "Unable to invoke AVRCP media service !"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 100
    :pswitch_data_136
    .packed-switch 0xc
        :pswitch_45
        :pswitch_61
    .end packed-switch
.end method
