.class public Lcom/samsung/swift/service/sound/SoundPlugin;
.super Ljava/lang/Object;
.source "SoundPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/swift/service/sound/SoundPlugin$1;,
        Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;
    }
.end annotation


# static fields
.field private static final TRACE_LOG:Ljava/lang/String; = null

.field private static _type_ringtone1:Ljava/lang/Integer; = null

.field private static cachedRingtone:Lcom/samsung/swift/service/sound/Ringtone; = null

.field private static cachedRingtone1:Lcom/samsung/swift/service/sound/Ringtone; = null

.field private static final cachedRingtoneMaxAge:J = 0x1388L

.field private static cachedRingtoneTime:J

.field private static final monitor:Ljava/lang/Object;

.field private static final random:Ljava/util/Random;

.field protected static final refCounter:Lcom/samsung/swift/util/PeerRefCounter;

.field private static revision:Ljava/lang/String;

.field private static ringtoneObserver:Lcom/samsung/swift/service/sound/RingtoneContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 114
    const-class v0, Lcom/samsung/swift/service/sound/SoundPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->random:Ljava/util/Random;

    .line 121
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->revision:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->monitor:Ljava/lang/Object;

    .line 123
    new-instance v0, Lcom/samsung/swift/util/PeerRefCounter;

    invoke-direct {v0}, Lcom/samsung/swift/util/PeerRefCounter;-><init>()V

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    .line 124
    sput-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->_type_ringtone1:Ljava/lang/Integer;

    .line 127
    sput-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtone:Lcom/samsung/swift/service/sound/Ringtone;

    .line 128
    sput-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtone1:Lcom/samsung/swift/service/sound/Ringtone;

    .line 129
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtoneTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method static synthetic access$100(Landroid/net/Uri;Lcom/samsung/swift/service/sound/Ringtone;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-static {p0, p1}, Lcom/samsung/swift/service/sound/SoundPlugin;->setAsDefaultRingtone(Landroid/net/Uri;Lcom/samsung/swift/service/sound/Ringtone;)V

    return-void
.end method

.method private static add(Lcom/samsung/swift/service/sound/Ringtone;)V
    .registers 25
    .parameter "ringtone"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/swift/exception/SwiftException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v15

    .line 165
    .local v15, cx:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 168
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v4

    const/4 v4, 0x1

    const-string v6, "_id"

    aput-object v6, v5, v4

    .line 169
    .local v5, proj:[Ljava/lang/String;
    const-string v23, "_data = ?"

    .line 170
    .local v23, where:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v4

    .line 171
    .local v7, selectionArgs:[Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_data = ?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 174
    .local v14, c:Landroid/database/Cursor;
    :try_start_2a
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v22, values:Landroid/content/ContentValues;
    const-string v4, "is_ringtone"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 177
    if-eqz v14, :cond_f9

    .line 179
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 181
    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/mnt"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v12, v4

    .line 183
    .local v12, mntPath:[Ljava/lang/String;
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v11, "_data = ?"

    const/4 v13, 0x0

    move-object v8, v3

    move-object v10, v5

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 186
    .end local v12           #mntPath:[Ljava/lang/String;
    :cond_6b
    if-eqz v14, :cond_f9

    .line 188
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11c

    .line 189
    const-string v4, "_id"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 192
    .local v18, id:J
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v18

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 194
    .local v20, itemUri:Landroid/net/Uri;
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v3, v0, v1, v6, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-eq v4, v6, :cond_bd

    .line 197
    new-instance v4, Lcom/samsung/swift/exception/SwiftException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to mark "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/sound/Ringtone;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " as a ringtone: database error"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b6
    .catchall {:try_start_2a .. :try_end_b6} :catchall_b6

    .line 251
    .end local v18           #id:J
    .end local v20           #itemUri:Landroid/net/Uri;
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_b6
    move-exception v4

    if-eqz v14, :cond_bc

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_bc
    throw v4

    .line 200
    .restart local v18       #id:J
    .restart local v20       #itemUri:Landroid/net/Uri;
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_bd
    :try_start_bd
    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/sound/Ringtone;->isSelected(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ce

    .line 202
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/samsung/swift/service/sound/SoundPlugin;->setAsDefaultRingtone(Landroid/net/Uri;Lcom/samsung/swift/service/sound/Ringtone;)V

    .line 205
    :cond_ce
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "external"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ff

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "E"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V

    .line 215
    :goto_f6
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->invalidateCache()V
    :try_end_f9
    .catchall {:try_start_bd .. :try_end_f9} :catchall_b6

    .line 251
    .end local v18           #id:J
    .end local v20           #itemUri:Landroid/net/Uri;
    :cond_f9
    :goto_f9
    if-eqz v14, :cond_fe

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 254
    :cond_fe
    return-void

    .line 211
    .restart local v18       #id:J
    .restart local v20       #itemUri:Landroid/net/Uri;
    :cond_ff
    :try_start_ff
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V

    goto :goto_f6

    .line 220
    .end local v18           #id:J
    .end local v20           #itemUri:Landroid/net/Uri;
    :cond_11c
    new-instance v21, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;-><init>(Lcom/samsung/swift/service/sound/SoundPlugin$1;)V

    .line 221
    .local v21, samr:Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->scan(Lcom/samsung/swift/service/sound/Ringtone;Landroid/content/ContentValues;)V

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    add-long v16, v8, v10

    .line 224
    .local v16, endTime:J
    monitor-enter v21
    :try_end_136
    .catchall {:try_start_ff .. :try_end_136} :catchall_b6

    .line 225
    :cond_136
    :try_start_136
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->getResult()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16b

    .line 227
    const-wide/16 v8, 0x3e8

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v4, v8, v16

    if-lez v4, :cond_136

    .line 232
    new-instance v4, Lcom/samsung/swift/exception/SwiftException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Media scanner failed to scan "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    :catchall_168
    move-exception v4

    monitor-exit v21
    :try_end_16a
    .catchall {:try_start_136 .. :try_end_16a} :catchall_168

    :try_start_16a
    throw v4
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_b6

    .line 235
    :cond_16b
    :try_start_16b
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->getResult()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_198

    .line 237
    new-instance v4, Lcom/samsung/swift/exception/SwiftException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to set "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " as ringtone"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/samsung/swift/exception/SwiftException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    :cond_198
    monitor-exit v21
    :try_end_199
    .catchall {:try_start_16b .. :try_end_199} :catchall_168

    .line 241
    :try_start_199
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/swift/service/sound/SoundPlugin$ScanAndMakeRingtone;->getResult()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->invalidateCache()V
    :try_end_1a5
    .catchall {:try_start_199 .. :try_end_1a5} :catchall_b6

    goto/16 :goto_f9
.end method

.method private static calcRandomRevision()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static delete(Ljava/lang/String;)Z
    .registers 13
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 899
    const-string v10, "E"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "I"

    invoke-virtual {p0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 901
    :cond_12
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 906
    :cond_16
    invoke-static {p0}, Lcom/samsung/swift/service/sound/SoundPlugin;->getUriFromId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 908
    .local v1, delete_uri:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 910
    .local v0, defaultRingtone:Landroid/net/Uri;
    if-eqz v0, :cond_32

    .line 912
    invoke-virtual {v0, v1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v10

    if-nez v10, :cond_32

    .line 914
    sget-object v8, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v10, "wont delete selected ringtone"

    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :goto_31
    return v9

    .line 919
    :cond_32
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 921
    .local v6, uri_path:Ljava/lang/String;
    const-string v10, "external"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_80

    .line 922
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 926
    .local v2, mediaUri:Landroid/net/Uri;
    :goto_40
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 927
    .local v7, values:Landroid/content/ContentValues;
    const-string v10, "is_ringtone"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 929
    const-string v4, "_id like ?"

    .line 930
    .local v4, selection:Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 931
    .local v5, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "_id like ?"

    invoke-virtual {v10, v2, v7, v11, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 933
    .local v3, returnVal:I
    if-lez v3, :cond_7c

    .line 935
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->invalidateCache()V

    .line 938
    :cond_7c
    if-lez v3, :cond_83

    :goto_7e
    move v9, v8

    goto :goto_31

    .line 924
    .end local v2           #mediaUri:Landroid/net/Uri;
    .end local v3           #returnVal:I
    .end local v4           #selection:Ljava/lang/String;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #values:Landroid/content/ContentValues;
    :cond_80
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v2       #mediaUri:Landroid/net/Uri;
    goto :goto_40

    .restart local v3       #returnVal:I
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v7       #values:Landroid/content/ContentValues;
    :cond_83
    move v8, v9

    .line 938
    goto :goto_7e
.end method

.method private static get(Ljava/lang/String;)Lcom/samsung/swift/service/sound/Ringtone;
    .registers 19
    .parameter "ringtoneId"

    .prologue
    .line 337
    const-string v1, "E"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "I"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 339
    :cond_14
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 343
    :cond_1b
    const/4 v8, 0x0

    .line 347
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 348
    .local v9, duration:J
    const/4 v13, 0x0

    .line 352
    .local v13, ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    const/4 v1, 0x1

    :try_start_20
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 353
    .local v3, proj:[Ljava/lang/String;
    new-instance v15, Landroid/media/RingtoneManager;

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 354
    .local v15, rm:Landroid/media/RingtoneManager;
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 355
    invoke-virtual {v15}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 357
    if-eqz v8, :cond_fc

    .line 359
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_50

    .line 361
    sget-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "cursor.moveToFirst() failed"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_20 .. :try_end_47} :catchall_105

    .line 424
    :cond_47
    :goto_47
    if-eqz v8, :cond_4c

    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    .line 419
    :cond_4c
    return-object v13

    .line 409
    .local v11, id:Ljava/lang/String;
    :cond_4d
    :try_start_4d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 365
    .end local v11           #id:Ljava/lang/String;
    :cond_50
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_47

    .line 367
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 368
    .restart local v11       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 371
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 372
    .local v2, ringToneURI:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 375
    .local v16, tempCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_47

    .line 377
    const-string v1, "_data"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 379
    .local v7, column_index:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 382
    .local v12, path:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 384
    invoke-static {v2}, Lcom/samsung/swift/service/sound/SoundPlugin;->getRingtoneDuration(Landroid/net/Uri;)J

    move-result-wide v9

    .line 386
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 388
    .local v17, title:Ljava/lang/String;
    new-instance v14, Lcom/samsung/swift/service/sound/Ringtone;

    invoke-direct {v14}, Lcom/samsung/swift/service/sound/Ringtone;-><init>()V
    :try_end_9e
    .catchall {:try_start_4d .. :try_end_9e} :catchall_105

    .line 390
    .end local v13           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .local v14, ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :try_start_9e
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "external"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V

    .line 399
    :goto_c0
    invoke-virtual {v14, v12}, Lcom/samsung/swift/service/sound/Ringtone;->setPath(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/samsung/swift/service/sound/Ringtone;->setName(Ljava/lang/String;)V

    .line 401
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setMimeTypeFromFileName(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v14, v9, v10}, Lcom/samsung/swift/service/sound/Ringtone;->setDuration(J)V

    move-object v13, v14

    .line 403
    .end local v14           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .restart local v13       #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    goto/16 :goto_47

    .line 396
    .end local v13           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .restart local v14       #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :cond_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_9e .. :try_end_f3} :catchall_f4

    goto :goto_c0

    .line 424
    :catchall_f4
    move-exception v1

    move-object v13, v14

    .end local v2           #ringToneURI:Landroid/net/Uri;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v7           #column_index:I
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v14           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .end local v15           #rm:Landroid/media/RingtoneManager;
    .end local v16           #tempCursor:Landroid/database/Cursor;
    .end local v17           #title:Ljava/lang/String;
    .restart local v13       #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :goto_f6
    if-eqz v8, :cond_fb

    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    :cond_fb
    throw v1

    .line 416
    .restart local v3       #proj:[Ljava/lang/String;
    .restart local v15       #rm:Landroid/media/RingtoneManager;
    :cond_fc
    :try_start_fc
    sget-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "cursor.moveToFirst() failed"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_105

    goto/16 :goto_47

    .line 424
    .end local v3           #proj:[Ljava/lang/String;
    .end local v15           #rm:Landroid/media/RingtoneManager;
    :catchall_105
    move-exception v1

    goto :goto_f6
.end method

.method private static getContentResolver()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 327
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private static getList(Lcom/samsung/swift/util/SearchQueryFilter;)Lcom/samsung/swift/service/sound/RingtoneList;
    .registers 22
    .parameter "sqf"

    .prologue
    .line 701
    sget-object v19, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v20, "getList"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v4, 0x0

    .line 705
    .local v4, cursor:Landroid/database/Cursor;
    const-string v9, ""

    .line 706
    .local v9, path:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 708
    .local v5, duration:J
    new-instance v13, Lcom/samsung/swift/service/sound/RingtoneList;

    invoke-direct {v13}, Lcom/samsung/swift/service/sound/RingtoneList;-><init>()V

    .line 709
    .local v13, ringtonelist:Lcom/samsung/swift/service/sound/RingtoneList;
    const-string v15, ""

    .line 710
    .local v15, searchPath:Ljava/lang/String;
    const/16 v16, -0x1

    .line 712
    .local v16, searchSelected:I
    if-eqz p0, :cond_64

    .line 714
    sget v19, Lcom/samsung/swift/util/SearchQueryFilter;->path:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v10

    .line 715
    .local v10, pathArray:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v19, v0

    if-lez v19, :cond_2a

    .line 717
    const/16 v19, 0x0

    aget-object v15, v10, v19

    .line 720
    :cond_2a
    sget v19, Lcom/samsung/swift/util/SearchQueryFilter;->selected:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/swift/util/SearchQueryFilter;->getFilterTerms(I)[Ljava/lang/String;

    move-result-object v17

    .line 721
    .local v17, selectedArray:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_47

    .line 723
    const/16 v19, 0x0

    aget-object v19, v17, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_61

    const/16 v16, 0x1

    .line 727
    :cond_47
    :goto_47
    const/4 v8, 0x0

    .line 728
    .local v8, numQueries:I
    const/16 v19, -0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-eq v0, v1, :cond_52

    .line 730
    add-int/lit8 v8, v8, 0x1

    .line 732
    :cond_52
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_5a

    .line 735
    add-int/lit8 v8, v8, 0x1

    .line 738
    :cond_5a
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_64

    .line 847
    .end local v8           #numQueries:I
    .end local v10           #pathArray:[Ljava/lang/String;
    .end local v13           #ringtonelist:Lcom/samsung/swift/service/sound/RingtoneList;
    .end local v17           #selectedArray:[Ljava/lang/String;
    :cond_60
    :goto_60
    return-object v13

    .line 723
    .restart local v10       #pathArray:[Ljava/lang/String;
    .restart local v13       #ringtonelist:Lcom/samsung/swift/service/sound/RingtoneList;
    .restart local v17       #selectedArray:[Ljava/lang/String;
    :cond_61
    const/16 v16, 0x2

    goto :goto_47

    .line 745
    .end local v10           #pathArray:[Ljava/lang/String;
    .end local v17           #selectedArray:[Ljava/lang/String;
    :cond_64
    const/16 v19, 0x1

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_71

    .line 747
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtones()Lcom/samsung/swift/service/sound/RingtoneList;

    move-result-object v13

    goto :goto_60

    .line 751
    :cond_71
    :try_start_71
    new-instance v14, Landroid/media/RingtoneManager;

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 753
    .local v14, rm:Landroid/media/RingtoneManager;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 755
    invoke-virtual {v14}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 757
    if-eqz v4, :cond_1b7

    .line 759
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-nez v19, :cond_9c

    .line 761
    sget-object v19, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v20, "could not find any ringtones "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_71 .. :try_end_96} :catchall_177

    .line 851
    if-eqz v4, :cond_60

    :goto_98
    invoke-interface {v4}, Landroid/database/Cursor;->deactivate()V

    goto :goto_60

    .line 767
    :cond_9c
    :try_start_9c
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 768
    .local v2, actualtone_uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 769
    .local v3, actualtone_uri1:Landroid/net/Uri;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v19

    if-eqz v19, :cond_b9

    .line 771
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v19

    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->type_ringtone1()I

    move-result v20

    invoke-static/range {v19 .. v20}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 774
    :cond_b9
    :goto_b9
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v19

    if-nez v19, :cond_1b7

    .line 776
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v11

    .line 777
    .local v11, ringToneURI:Landroid/net/Uri;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 778
    .local v7, id:Ljava/lang/String;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 779
    .local v18, title:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/swift/service/sound/SoundPlugin;->getRingtonePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 780
    invoke-static {v11}, Lcom/samsung/swift/service/sound/SoundPlugin;->getRingtoneDuration(Landroid/net/Uri;)J

    move-result-wide v5

    .line 782
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_f0

    .line 785
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17e

    .line 788
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z

    .line 797
    :cond_f0
    new-instance v12, Lcom/samsung/swift/service/sound/Ringtone;

    invoke-direct {v12}, Lcom/samsung/swift/service/sound/Ringtone;-><init>()V

    .line 799
    .local v12, ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "external"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_183

    .line 801
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "E"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V

    .line 807
    :goto_11b
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/samsung/swift/service/sound/Ringtone;->setName(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v12, v9}, Lcom/samsung/swift/service/sound/Ringtone;->setPath(Ljava/lang/String;)V

    .line 809
    const-string v19, "/"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/samsung/swift/service/sound/Ringtone;->setMimeTypeFromFileName(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v12, v5, v6}, Lcom/samsung/swift/service/sound/Ringtone;->setDuration(J)V

    .line 812
    if-eqz v2, :cond_15b

    .line 814
    invoke-virtual {v2, v11}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v19

    if-nez v19, :cond_15b

    .line 817
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v19

    if-eqz v19, :cond_1ab

    .line 819
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v19

    if-eqz v19, :cond_19f

    .line 820
    const/16 v19, 0x1

    const-string v20, "wcdma"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setSelected(ZLjava/lang/String;)V

    .line 826
    :goto_15a
    const/4 v2, 0x0

    .line 829
    :cond_15b
    if-eqz v3, :cond_16f

    .line 831
    invoke-virtual {v3, v11}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v19

    if-nez v19, :cond_16f

    .line 834
    const/16 v19, 0x1

    const-string v20, "gsm"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setSelected(ZLjava/lang/String;)V

    .line 835
    const/4 v3, 0x0

    .line 841
    :cond_16f
    invoke-virtual {v13, v12}, Lcom/samsung/swift/service/sound/RingtoneList;->add(Lcom/samsung/swift/service/sound/Ringtone;)V

    .line 842
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_175
    .catchall {:try_start_9c .. :try_end_175} :catchall_177

    goto/16 :goto_b9

    .line 851
    .end local v2           #actualtone_uri:Landroid/net/Uri;
    .end local v3           #actualtone_uri1:Landroid/net/Uri;
    .end local v7           #id:Ljava/lang/String;
    .end local v11           #ringToneURI:Landroid/net/Uri;
    .end local v12           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .end local v14           #rm:Landroid/media/RingtoneManager;
    .end local v18           #title:Ljava/lang/String;
    :catchall_177
    move-exception v19

    if-eqz v4, :cond_17d

    invoke-interface {v4}, Landroid/database/Cursor;->deactivate()V

    :cond_17d
    throw v19

    .line 792
    .restart local v2       #actualtone_uri:Landroid/net/Uri;
    .restart local v3       #actualtone_uri1:Landroid/net/Uri;
    .restart local v7       #id:Ljava/lang/String;
    .restart local v11       #ringToneURI:Landroid/net/Uri;
    .restart local v14       #rm:Landroid/media/RingtoneManager;
    .restart local v18       #title:Ljava/lang/String;
    :cond_17e
    :try_start_17e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_b9

    .line 805
    .restart local v12       #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :cond_183
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "I"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V

    goto/16 :goto_11b

    .line 822
    :cond_19f
    const/16 v19, 0x1

    const-string v20, "cdma"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setSelected(ZLjava/lang/String;)V

    goto :goto_15a

    .line 825
    :cond_1ab
    const/16 v19, 0x1

    const-string v20, "gsm"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setSelected(ZLjava/lang/String;)V
    :try_end_1b6
    .catchall {:try_start_17e .. :try_end_1b6} :catchall_177

    goto :goto_15a

    .line 851
    .end local v2           #actualtone_uri:Landroid/net/Uri;
    .end local v3           #actualtone_uri1:Landroid/net/Uri;
    .end local v7           #id:Ljava/lang/String;
    .end local v11           #ringToneURI:Landroid/net/Uri;
    .end local v12           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .end local v18           #title:Ljava/lang/String;
    :cond_1b7
    if-eqz v4, :cond_60

    goto/16 :goto_98
.end method

.method private static getRingtoneDuration(Landroid/net/Uri;)J
    .registers 11
    .parameter "ringtoneUri"

    .prologue
    .line 665
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "duration"

    aput-object v1, v2, v0

    .line 667
    .local v2, proj:[Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 668
    .local v7, duration:J
    const/4 v9, 0x0

    .line 672
    .local v9, tempCursor:Landroid/database/Cursor;
    :try_start_b
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 675
    if-eqz v9, :cond_26

    .line 677
    const-string v0, "duration"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 678
    .local v6, column_index:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 679
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_2c

    move-result-wide v7

    .line 684
    .end local v6           #column_index:I
    :cond_26
    if-eqz v9, :cond_2b

    .line 686
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_2b
    return-wide v7

    .line 684
    :catchall_2c
    move-exception v0

    if-eqz v9, :cond_32

    .line 686
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 684
    :cond_32
    throw v0
.end method

.method private static getRingtonePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .parameter "ringtoneUri"

    .prologue
    .line 637
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 638
    .local v2, proj:[Ljava/lang/String;
    const-string v7, ""

    .line 639
    .local v7, ringtonePath:Ljava/lang/String;
    const/4 v8, 0x0

    .line 642
    .local v8, tempCursor:Landroid/database/Cursor;
    :try_start_b
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 644
    if-eqz v8, :cond_26

    .line 646
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 647
    .local v6, column_index:I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 648
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_2c

    move-result-object v7

    .line 653
    .end local v6           #column_index:I
    :cond_26
    if-eqz v8, :cond_2b

    .line 655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 658
    :cond_2b
    return-object v7

    .line 653
    :catchall_2c
    move-exception v0

    if-eqz v8, :cond_32

    .line 655
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_32
    throw v0
.end method

.method private static getSelectedRingtone(ILjava/lang/String;)Lcom/samsung/swift/service/sound/Ringtone;
    .registers 3
    .parameter "type"
    .parameter "typeString"

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;
    .registers 22
    .parameter "type"
    .parameter "typeString"
    .parameter "cachedOk"

    .prologue
    .line 461
    sget-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "getSelectedRingtone()"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    if-eqz p2, :cond_27

    .line 465
    sget-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "Returning cached selected ringtone"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->updateCachedRingtones()V

    .line 467
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 469
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->type_ringtone1()I

    move-result v1

    move/from16 v0, p0

    if-ne v0, v1, :cond_24

    .line 471
    sget-object v13, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtone1:Lcom/samsung/swift/service/sound/Ringtone;

    .line 540
    :cond_23
    :goto_23
    return-object v13

    .line 474
    :cond_24
    sget-object v13, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtone:Lcom/samsung/swift/service/sound/Ringtone;

    goto :goto_23

    .line 478
    :cond_27
    const/4 v8, 0x0

    .line 482
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v9, 0x0

    .line 483
    .local v9, duration:J
    const/4 v13, 0x0

    .line 486
    .local v13, ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :try_start_2b
    new-instance v15, Landroid/media/RingtoneManager;

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 487
    .local v15, rm:Landroid/media/RingtoneManager;
    move/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 489
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v3, v1

    .line 491
    .local v3, proj:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    move/from16 v0, p0

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 492
    .local v2, selectedRingtone_uri:Landroid/net/Uri;
    invoke-virtual {v15, v2}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I
    :try_end_4e
    .catchall {:try_start_2b .. :try_end_4e} :catchall_fc

    move-result v16

    .line 493
    .local v16, selectedIndex:I
    if-gez v16, :cond_57

    .line 545
    if-eqz v8, :cond_23

    :goto_53
    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    goto :goto_23

    .line 498
    :cond_57
    :try_start_57
    invoke-virtual {v15}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 500
    if-eqz v8, :cond_d9

    .line 502
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 504
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 505
    .local v11, id:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 507
    .local v18, title:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 510
    .local v17, tempCursor:Landroid/database/Cursor;
    if-eqz v17, :cond_d9

    .line 512
    const-string v1, "_data"

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 514
    .local v7, column_index:I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 515
    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 516
    .local v12, path:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 518
    invoke-static {v2}, Lcom/samsung/swift/service/sound/SoundPlugin;->getRingtoneDuration(Landroid/net/Uri;)J

    move-result-wide v9

    .line 522
    new-instance v14, Lcom/samsung/swift/service/sound/Ringtone;

    invoke-direct {v14}, Lcom/samsung/swift/service/sound/Ringtone;-><init>()V
    :try_end_96
    .catchall {:try_start_57 .. :try_end_96} :catchall_fc

    .line 523
    .end local v13           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .local v14, ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :try_start_96
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "external"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_dd

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V

    .line 532
    :goto_b8
    invoke-virtual {v14, v12}, Lcom/samsung/swift/service/sound/Ringtone;->setPath(Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/samsung/swift/service/sound/Ringtone;->setName(Ljava/lang/String;)V

    .line 534
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setMimeTypeFromFileName(Ljava/lang/String;)V

    .line 535
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v14, v1, v0}, Lcom/samsung/swift/service/sound/Ringtone;->setSelected(ZLjava/lang/String;)V

    .line 536
    invoke-virtual {v14, v9, v10}, Lcom/samsung/swift/service/sound/Ringtone;->setDuration(J)V

    move-object v13, v14

    .line 545
    .end local v7           #column_index:I
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v14           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .end local v17           #tempCursor:Landroid/database/Cursor;
    .end local v18           #title:Ljava/lang/String;
    .restart local v13       #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :cond_d9
    if-eqz v8, :cond_23

    goto/16 :goto_53

    .line 529
    .end local v13           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .restart local v7       #column_index:I
    .restart local v11       #id:Ljava/lang/String;
    .restart local v12       #path:Ljava/lang/String;
    .restart local v14       #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .restart local v17       #tempCursor:Landroid/database/Cursor;
    .restart local v18       #title:Ljava/lang/String;
    :cond_dd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/swift/service/sound/Ringtone;->setId(Ljava/lang/String;)V
    :try_end_f3
    .catchall {:try_start_96 .. :try_end_f3} :catchall_f4

    goto :goto_b8

    .line 545
    :catchall_f4
    move-exception v1

    move-object v13, v14

    .end local v2           #selectedRingtone_uri:Landroid/net/Uri;
    .end local v3           #proj:[Ljava/lang/String;
    .end local v7           #column_index:I
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v14           #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    .end local v15           #rm:Landroid/media/RingtoneManager;
    .end local v16           #selectedIndex:I
    .end local v17           #tempCursor:Landroid/database/Cursor;
    .end local v18           #title:Ljava/lang/String;
    .restart local v13       #ringtone:Lcom/samsung/swift/service/sound/Ringtone;
    :goto_f6
    if-eqz v8, :cond_fb

    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    :cond_fb
    throw v1

    :catchall_fc
    move-exception v1

    goto :goto_f6
.end method

.method private static getSelectedRingtones()Lcom/samsung/swift/service/sound/RingtoneList;
    .registers 5

    .prologue
    .line 431
    sget-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "getSelectedRingtones()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v1, Lcom/samsung/swift/service/sound/RingtoneList;

    invoke-direct {v1}, Lcom/samsung/swift/service/sound/RingtoneList;-><init>()V

    .line 433
    .local v1, rl:Lcom/samsung/swift/service/sound/RingtoneList;
    const-string v2, "gsm"

    .line 435
    .local v2, typeString:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 437
    sget-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "getSelectedRingtone: dual sim - getting TYPE_RINGTONE1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->type_ringtone1()I

    move-result v3

    invoke-static {v3, v2}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v0

    .line 439
    .local v0, r:Lcom/samsung/swift/service/sound/Ringtone;
    if-eqz v0, :cond_28

    .line 440
    invoke-virtual {v1, v0}, Lcom/samsung/swift/service/sound/RingtoneList;->add(Lcom/samsung/swift/service/sound/Ringtone;)V

    .line 441
    :cond_28
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 442
    const-string v2, "wcdma"

    .line 447
    .end local v0           #r:Lcom/samsung/swift/service/sound/Ringtone;
    :cond_30
    :goto_30
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v0

    .line 448
    .restart local v0       #r:Lcom/samsung/swift/service/sound/Ringtone;
    if-eqz v0, :cond_3a

    .line 449
    invoke-virtual {v1, v0}, Lcom/samsung/swift/service/sound/RingtoneList;->add(Lcom/samsung/swift/service/sound/Ringtone;)V

    .line 451
    :cond_3a
    return-object v1

    .line 444
    :cond_3b
    const-string v2, "cdma"

    goto :goto_30
.end method

.method private static getUriFromId(Ljava/lang/String;)Landroid/net/Uri;
    .registers 7
    .parameter "name_id"

    .prologue
    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 956
    .local v3, uri:Landroid/net/Uri;
    :try_start_2
    new-instance v2, Landroid/media/RingtoneManager;

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 958
    .local v2, rm:Landroid/media/RingtoneManager;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/RingtoneManager;->setType(I)V

    .line 959
    invoke-virtual {v2}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 961
    if-eqz v0, :cond_22

    .line 963
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 965
    sget-object v4, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v5, "could not find any ringtone for ID"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_45

    .line 987
    :cond_22
    :goto_22
    if-eqz v0, :cond_27

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 982
    :cond_27
    return-object v3

    .line 977
    .local v1, id:Ljava/lang/String;
    :cond_28
    :try_start_28
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 969
    .end local v1           #id:Ljava/lang/String;
    :cond_2b
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_22

    .line 971
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 972
    .restart local v1       #id:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 974
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;
    :try_end_43
    .catchall {:try_start_28 .. :try_end_43} :catchall_45

    move-result-object v3

    .line 975
    goto :goto_22

    .line 987
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #rm:Landroid/media/RingtoneManager;
    :catchall_45
    move-exception v4

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    :cond_4b
    throw v4
.end method

.method public static declared-synchronized invalidateCache()V
    .registers 3

    .prologue
    .line 139
    const-class v1, Lcom/samsung/swift/service/sound/SoundPlugin;

    monitor-enter v1

    :try_start_3
    sget-object v2, Lcom/samsung/swift/service/sound/SoundPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    .line 141
    :try_start_6
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->calcRandomRevision()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->revision:Ljava/lang/String;

    .line 142
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_f

    .line 143
    monitor-exit v1

    return-void

    .line 142
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    .line 139
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isSelectedRingtone(Ljava/lang/String;)Z
    .registers 2
    .parameter "path"

    .prologue
    .line 572
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/swift/service/sound/SoundPlugin;->isSelectedRingtone(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSelectedRingtone(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "path"
    .parameter "network"

    .prologue
    .line 603
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/swift/service/sound/SoundPlugin;->isSelectedRingtone(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSelectedRingtone(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .parameter "path"
    .parameter "network"
    .parameter "cachedOk"

    .prologue
    const/4 v2, 0x1

    .line 609
    const-string v1, "gsm"

    .line 611
    .local v1, typeString:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 613
    sget-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "isSelectedRingtone: dual sim - getting TYPE_RINGTONE1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->type_ringtone1()I

    move-result v3

    invoke-static {v3, v1, p2}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v0

    .line 615
    .local v0, r:Lcom/samsung/swift/service/sound/Ringtone;
    if-eqz v0, :cond_2b

    .line 616
    invoke-virtual {v0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 617
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 631
    :cond_2a
    :goto_2a
    return v2

    .line 619
    :cond_2b
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 620
    const-string v1, "wcdma"

    .line 625
    .end local v0           #r:Lcom/samsung/swift/service/sound/Ringtone;
    :cond_33
    :goto_33
    invoke-static {v2, v1, p2}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v0

    .line 626
    .restart local v0       #r:Lcom/samsung/swift/service/sound/Ringtone;
    if-eqz v0, :cond_49

    .line 627
    invoke-virtual {v0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 628
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 631
    :cond_49
    const/4 v2, 0x0

    goto :goto_2a

    .line 622
    :cond_4b
    const-string v1, "cdma"

    goto :goto_33
.end method

.method public static isSelectedRingtone(Ljava/lang/String;Z)Z
    .registers 7
    .parameter "path"
    .parameter "cachedOk"

    .prologue
    const/4 v2, 0x1

    .line 578
    const-string v1, "gsm"

    .line 580
    .local v1, typeString:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 582
    sget-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "isSelectedRingtone: dual sim - getting TYPE_RINGTONE1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->type_ringtone1()I

    move-result v3

    invoke-static {v3, v1, p1}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v0

    .line 584
    .local v0, r:Lcom/samsung/swift/service/sound/Ringtone;
    if-eqz v0, :cond_25

    .line 585
    invoke-virtual {v0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 598
    :cond_24
    :goto_24
    return v2

    .line 587
    :cond_25
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 588
    const-string v1, "wcdma"

    .line 593
    .end local v0           #r:Lcom/samsung/swift/service/sound/Ringtone;
    :cond_2d
    :goto_2d
    invoke-static {v2, v1, p1}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v0

    .line 594
    .restart local v0       #r:Lcom/samsung/swift/service/sound/Ringtone;
    if-eqz v0, :cond_3d

    .line 595
    invoke-virtual {v0}, Lcom/samsung/swift/service/sound/Ringtone;->path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 598
    :cond_3d
    const/4 v2, 0x0

    goto :goto_24

    .line 590
    :cond_3f
    const-string v1, "cdma"

    goto :goto_2d
.end method

.method private static pluginLoading()V
    .registers 2

    .prologue
    .line 1018
    sget-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v1, "Java SoundPlugin loading called..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-static {}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->instance()Lcom/samsung/swift/contentobserver/ContentObserverFactory;

    move-result-object v0

    const-class v1, Lcom/samsung/swift/service/sound/RingtoneContentObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/swift/contentobserver/ContentObserverFactory;->get(Ljava/lang/Class;)Lcom/samsung/swift/contentobserver/SwiftContentObserver;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/service/sound/RingtoneContentObserver;

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->ringtoneObserver:Lcom/samsung/swift/service/sound/RingtoneContentObserver;

    .line 1022
    return-void
.end method

.method private static pluginUnloading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1011
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->ringtoneObserver:Lcom/samsung/swift/service/sound/RingtoneContentObserver;

    .line 1012
    sget-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->refCounter:Lcom/samsung/swift/util/PeerRefCounter;

    invoke-virtual {v0}, Lcom/samsung/swift/util/PeerRefCounter;->garbageCollectPeers()V

    .line 1013
    return-void
.end method

.method private static revision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    sget-object v1, Lcom/samsung/swift/service/sound/SoundPlugin;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_3
    sget-object v0, Lcom/samsung/swift/service/sound/SoundPlugin;->revision:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 151
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private static setAsDefaultRingtone(Landroid/net/Uri;Lcom/samsung/swift/service/sound/Ringtone;)V
    .registers 4
    .parameter "uri"
    .parameter "ringtone"

    .prologue
    const/4 v1, 0x1

    .line 300
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 302
    const-string v0, "cdma"

    invoke-virtual {p1, v0}, Lcom/samsung/swift/service/sound/Ringtone;->isSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 305
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-static {v0, v1, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 307
    :cond_16
    const-string v0, "wcdma"

    invoke-virtual {p1, v0}, Lcom/samsung/swift/service/sound/Ringtone;->isSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 310
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-static {v0, v1, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 312
    :cond_25
    const-string v0, "gsm"

    invoke-virtual {p1, v0}, Lcom/samsung/swift/service/sound/Ringtone;->isSelected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 315
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->type_ringtone1()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 323
    :cond_38
    :goto_38
    return-void

    .line 321
    :cond_39
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-static {v0, v1, p0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_38
.end method

.method private static type_ringtone1()I
    .registers 4

    .prologue
    .line 993
    sget-object v2, Lcom/samsung/swift/service/sound/SoundPlugin;->_type_ringtone1:Ljava/lang/Integer;

    if-nez v2, :cond_18

    .line 996
    :try_start_4
    const-class v2, Landroid/media/RingtoneManager;

    const-string v3, "TYPE_RINGTONE1"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 997
    .local v1, f:Ljava/lang/reflect/Field;
    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v2, Lcom/samsung/swift/service/sound/SoundPlugin;->_type_ringtone1:Ljava/lang/Integer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1f

    .line 1005
    :cond_18
    :goto_18
    sget-object v2, Lcom/samsung/swift/service/sound/SoundPlugin;->_type_ringtone1:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 999
    :catch_1f
    move-exception v0

    .line 1001
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v3, "setAsDefaultRingtone: Exception retrieving TYPE_RINGTONE1"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method private static update(Lcom/samsung/swift/service/sound/Ringtone;)Z
    .registers 6
    .parameter "ringtone"

    .prologue
    const/4 v2, 0x1

    .line 863
    invoke-virtual {p0}, Lcom/samsung/swift/service/sound/Ringtone;->id()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, id:Ljava/lang/String;
    const-string v3, "E"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "I"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 869
    :cond_15
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 872
    :cond_19
    invoke-static {v0}, Lcom/samsung/swift/service/sound/SoundPlugin;->getUriFromId(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 873
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_21

    .line 874
    const/4 v2, 0x0

    .line 884
    :goto_20
    return v2

    .line 877
    :cond_21
    const-string v3, ""

    invoke-virtual {p0, v3}, Lcom/samsung/swift/service/sound/Ringtone;->isSelected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 879
    invoke-static {v1, p0}, Lcom/samsung/swift/service/sound/SoundPlugin;->setAsDefaultRingtone(Landroid/net/Uri;Lcom/samsung/swift/service/sound/Ringtone;)V

    .line 882
    :cond_2c
    sget-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "update() updated"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private static updateCachedRingtones()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 552
    .local v0, timeNow:J
    sget-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time now: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cache time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtoneTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    sget-wide v3, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtoneTime:J

    const-wide/16 v5, 0x1388

    add-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-gez v3, :cond_5c

    .line 555
    sget-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->TRACE_LOG:Ljava/lang/String;

    const-string v4, "Refreshing cached ringtone(s)"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v2, "gsm"

    .line 557
    .local v2, typeString:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->isDualSim()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 559
    invoke-static {}, Lcom/samsung/swift/service/sound/SoundPlugin;->type_ringtone1()I

    move-result v3

    invoke-static {v3, v2, v7}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v3

    sput-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtone1:Lcom/samsung/swift/service/sound/Ringtone;

    .line 560
    invoke-static {}, Lcom/samsung/swift/service/systemstate/SystemStatePlugin;->hasWCDMA()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 561
    const-string v2, "wcdma"

    .line 565
    :cond_53
    :goto_53
    const/4 v3, 0x1

    invoke-static {v3, v2, v7}, Lcom/samsung/swift/service/sound/SoundPlugin;->getSelectedRingtone(ILjava/lang/String;Z)Lcom/samsung/swift/service/sound/Ringtone;

    move-result-object v3

    sput-object v3, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtone:Lcom/samsung/swift/service/sound/Ringtone;

    .line 566
    sput-wide v0, Lcom/samsung/swift/service/sound/SoundPlugin;->cachedRingtoneTime:J

    .line 568
    .end local v2           #typeString:Ljava/lang/String;
    :cond_5c
    return-void

    .line 563
    .restart local v2       #typeString:Ljava/lang/String;
    :cond_5d
    const-string v2, "cdma"

    goto :goto_53
.end method
