.class public Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;
.super Ljava/lang/Object;
.source "SQLiteInstallerDataStore.java"

# interfaces
.implements Lcom/google/android/finsky/appstate/InstallerDataStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;
    }
.end annotation


# static fields
.field private static final FULL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mHelper:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "auto_update"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "desired_version"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "download_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "delivery_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "delivery_data_timestamp_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "installer_state"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "first_download_ms"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "referrer"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "continue_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;-><init>(Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mHelper:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;

    .line 149
    return-void
.end method

.method private close()V
    .registers 2

    .prologue
    .line 157
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 158
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 159
    return-void
.end method

.method private localAppStateFromCursor(Landroid/database/Cursor;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .registers 23
    .parameter "cursor"

    .prologue
    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, packageName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 232
    sget-object v4, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->DEFAULT:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    .line 238
    .local v4, autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    :goto_12
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 239
    const/4 v5, -0x1

    .line 243
    .local v5, desiredVersion:I
    :goto_1c
    const/4 v6, 0x0

    .line 244
    .local v6, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 246
    const/4 v2, 0x4

    :try_start_27
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->parseFrom([B)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    :try_end_30
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_27 .. :try_end_30} :catch_92

    move-result-object v6

    .line 252
    :cond_31
    :goto_31
    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 253
    .local v7, deliveryDataTimestampMs:J
    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 254
    .local v9, installerState:I
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, downloadUri:Ljava/lang/String;
    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 256
    .local v11, firstDownloadMs:J
    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 257
    .local v13, referrer:Ljava/lang/String;
    const/16 v2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 258
    .local v15, account:Ljava/lang/String;
    const/16 v2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 259
    .local v16, title:Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 260
    .local v17, flags:I
    const/16 v2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 262
    .local v14, continueUrl:Ljava/lang/String;
    new-instance v2, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct/range {v2 .. v17}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;-><init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v2

    .line 234
    .end local v4           #autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    .end local v5           #desiredVersion:I
    .end local v6           #deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .end local v7           #deliveryDataTimestampMs:J
    .end local v9           #installerState:I
    .end local v10           #downloadUri:Ljava/lang/String;
    .end local v11           #firstDownloadMs:J
    .end local v13           #referrer:Ljava/lang/String;
    .end local v14           #continueUrl:Ljava/lang/String;
    .end local v15           #account:Ljava/lang/String;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #flags:I
    :cond_7b
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v2, v0

    invoke-static {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->valueOf(I)Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v4

    .restart local v4       #autoUpdate:Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;
    goto :goto_12

    .line 241
    :cond_8a
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .restart local v5       #desiredVersion:I
    goto :goto_1c

    .line 248
    .restart local v6       #deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    :catch_92
    move-exception v18

    .line 249
    .local v18, ipbme:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v2, "Couldn\'t parse blob as AndroidAppDeliveryData"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v18, v19, v20

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31
.end method

.method private reopen()V
    .registers 2

    .prologue
    .line 152
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureNotOnMainThread()V

    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mHelper:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 154
    return-void
.end method


# virtual methods
.method public declared-synchronized get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    .registers 13
    .parameter "packageName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 163
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->reopen()V

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appstate"

    sget-object v2, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "package_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_38

    move-result-object v8

    .line 167
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1b
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3b

    move-result v0

    if-eq v0, v10, :cond_2a

    .line 174
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 175
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_38

    move-object v0, v9

    :goto_28
    monitor-exit p0

    return-object v0

    .line 170
    :cond_2a
    :try_start_2a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 171
    invoke-direct {p0, v8}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->localAppStateFromCursor(Landroid/database/Cursor;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_3b

    move-result-object v0

    .line 174
    :try_start_31
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 175
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_38

    goto :goto_28

    .line 163
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0

    .line 174
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_3b
    move-exception v0

    :try_start_3c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 175
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V

    throw v0
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_38
.end method

.method public declared-synchronized getAll()Ljava/util/Collection;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->reopen()V

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appstate"

    sget-object v2, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 184
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_32

    .line 186
    .local v10, result:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    :goto_1c
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 187
    invoke-direct {p0, v8}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->localAppStateFromCursor(Landroid/database/Cursor;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v9

    .line 188
    .local v9, installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-interface {v10, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_2a

    goto :goto_1c

    .line 191
    .end local v9           #installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_2a
    move-exception v0

    :try_start_2b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V

    throw v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_32

    .line 181
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #result:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #result:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;>;"
    :cond_35
    :try_start_35
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_32

    .line 194
    monitor-exit p0

    return-object v10
.end method

.method public declared-synchronized put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->reopen()V

    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "package_name"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v1, "auto_update"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAutoUpdate()Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v1, "desired_version"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v1, "download_uri"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDownloadUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v1

    if-eqz v1, :cond_b1

    .line 206
    const-string v1, "delivery_data"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 210
    :goto_4c
    const-string v1, "delivery_data_timestamp_ms"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDeliveryDataTimestampMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    const-string v1, "installer_state"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getInstallerState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v1, "first_download_ms"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFirstDownloadMs()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v1, "referrer"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v1, "flags"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v1, "continue_url"

    invoke-virtual {p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getContinueUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "appstate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 219
    invoke-direct {p0}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->close()V
    :try_end_af
    .catchall {:try_start_1 .. :try_end_af} :catchall_b7

    .line 220
    monitor-exit p0

    return-void

    .line 208
    :cond_b1
    :try_start_b1
    const-string v1, "delivery_data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_b7

    goto :goto_4c

    .line 199
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_b7
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAccount(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"
    .parameter "accountName"

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 314
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAccountName(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 316
    monitor-exit p0

    return-void

    .line 313
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setAutoUpdate(Ljava/lang/String;Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)V
    .registers 5
    .parameter "packageName"
    .parameter "autoUpdate"

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 270
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setAutoUpdate(Lcom/google/android/finsky/appstate/InstallerDataStore$AutoUpdateState;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 272
    monitor-exit p0

    return-void

    .line 269
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setContinueUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"
    .parameter "continueUrl"

    .prologue
    .line 334
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 335
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setContinueUrl(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 337
    monitor-exit p0

    return-void

    .line 334
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDeliveryData(Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)V
    .registers 7
    .parameter "packageName"
    .parameter "deliveryData"
    .parameter "timestampMs"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 278
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDeliveryData(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 280
    monitor-exit p0

    return-void

    .line 277
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setDesiredVersion(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "desiredVersion"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 285
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDesiredVersion(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 287
    monitor-exit p0

    return-void

    .line 284
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFirstDownloadMs(Ljava/lang/String;J)V
    .registers 6
    .parameter "packageName"
    .parameter "firstDownloadMs"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 300
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFirstDownloadMs(J)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 302
    monitor-exit p0

    return-void

    .line 299
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setFlags(Ljava/lang/String;I)V
    .registers 5
    .parameter "packageName"
    .parameter "flags"

    .prologue
    .line 327
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 328
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setFlags(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 330
    monitor-exit p0

    return-void

    .line 327
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setInstallerState(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .parameter "packageName"
    .parameter "installerState"
    .parameter "downloadUri"

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 293
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setInstallerState(I)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setDownloadUri(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 295
    monitor-exit p0

    return-void

    .line 292
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setReferrer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"
    .parameter "referrer"

    .prologue
    .line 306
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 307
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setExternalReferrer(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 309
    monitor-exit p0

    return-void

    .line 306
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "packageName"
    .parameter "title"

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v0

    .line 321
    .local v0, current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    invoke-static {v0, p1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->buildUpon(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData$Builder;->build()Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 323
    monitor-exit p0

    return-void

    .line 320
    .end local v0           #current:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method
