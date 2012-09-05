.class Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
.super Ljava/lang/Object;
.source "TransfersDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;,
        Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;
    }
.end annotation


# static fields
.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/transfer/TransfersDbHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final databaseName:Ljava/lang/String;

.field private handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private final lock:Ljava/lang/Object;

.field private pendingClose:Z

.field private restoreListener:Landroid/os/Handler;

.field private restoreMessage:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->instances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->databaseName:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->lock:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/HandlerThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/os/Bundle;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-static {p0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBytes(Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreListener:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreListener:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreMessage:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toContentValues(Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->pendingClose:Z

    return v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
    .registers 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 73
    sget-object v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 74
    sget-object v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->instances:Ljava/util/Map;

    new-instance v1, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_12
    sget-object v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    return-object v0
.end method

.method private maybeInit()V
    .registers 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 100
    :cond_13
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 101
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;-><init>(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendEmptyMessage(I)Z

    .line 109
    :goto_3a
    monitor-exit v1

    .line 110
    return-void

    .line 106
    :cond_3c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->pendingClose:Z

    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->removeMessages(I)V

    goto :goto_3a

    .line 109
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_46

    throw v0
.end method

.method private query()Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/transfer/Transfer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v19, transfers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "transfers"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 247
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_15
    const-string v20, "file_path"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 248
    .local v14, filePathCol:I
    const-string v20, "network_uri"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 249
    .local v16, networkUriCol:I
    const-string v20, "status"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 250
    .local v18, statusCol:I
    const-string v20, "bytes_transferred"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 251
    .local v12, bytesTransferredCol:I
    const-string v20, "bytes_total"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 252
    .local v11, bytesTotalCol:I
    const-string v20, "extras"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 253
    .local v15, inputExtrasCol:I
    const-string v20, "output_extras"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 255
    .local v17, outputExtrasCol:I
    :goto_4d
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_93

    .line 256
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, filePath:Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, networkUri:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->values()[Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v20

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    aget-object v4, v20, v21

    .line 259
    .local v4, status:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 260
    .local v5, bytesTransferred:J
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 261
    .local v7, bytesTotal:J
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBundle([B)Landroid/os/Bundle;

    move-result-object v9

    .line 262
    .local v9, inputExtras:Landroid/os/Bundle;
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBundle([B)Landroid/os/Bundle;

    move-result-object v10

    .line 264
    .local v10, outputExtras:Landroid/os/Bundle;
    new-instance v1, Lcom/google/android/youtube/core/transfer/Transfer;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/youtube/core/transfer/Transfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;JJLandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 273
    .local v1, transfer:Lcom/google/android/youtube/core/transfer/Transfer;
    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catchall {:try_start_15 .. :try_end_8d} :catchall_8e

    goto :goto_4d

    .line 276
    .end local v1           #transfer:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #networkUri:Ljava/lang/String;
    .end local v4           #status:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .end local v5           #bytesTransferred:J
    .end local v7           #bytesTotal:J
    .end local v9           #inputExtras:Landroid/os/Bundle;
    .end local v10           #outputExtras:Landroid/os/Bundle;
    .end local v11           #bytesTotalCol:I
    .end local v12           #bytesTransferredCol:I
    .end local v14           #filePathCol:I
    .end local v15           #inputExtrasCol:I
    .end local v16           #networkUriCol:I
    .end local v17           #outputExtrasCol:I
    .end local v18           #statusCol:I
    :catchall_8e
    move-exception v20

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v20

    .restart local v11       #bytesTotalCol:I
    .restart local v12       #bytesTransferredCol:I
    .restart local v14       #filePathCol:I
    .restart local v15       #inputExtrasCol:I
    .restart local v16       #networkUriCol:I
    .restart local v17       #outputExtrasCol:I
    .restart local v18       #statusCol:I
    :cond_93
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 278
    return-object v19
.end method

.method private static toBundle([B)Landroid/os/Bundle;
    .registers 5
    .parameter "bytes"

    .prologue
    const/4 v3, 0x0

    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 324
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 325
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 326
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    return-object v0
.end method

.method private static toBytes(Landroid/os/Bundle;)[B
    .registers 4
    .parameter "bundle"

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 315
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 317
    .local v0, bytes:[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    return-object v0
.end method

.method private toContentValues(Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;
    .registers 6
    .parameter "transfer"

    .prologue
    .line 282
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 283
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "file_path"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "network_uri"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "status"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v1, "bytes_transferred"

    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 287
    const-string v1, "bytes_total"

    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 288
    const-string v1, "extras"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->inputExtras:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBytes(Landroid/os/Bundle;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 289
    const-string v1, "output_extras"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->outputExtras:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBytes(Landroid/os/Bundle;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 291
    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->pendingClose:Z

    .line 309
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendEmptyMessage(I)Z

    .line 311
    return-void

    .line 309
    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public insert(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter "transfer"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v2, 0x3

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 296
    return-void
.end method

.method public remove(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter "transfer"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v2, 0x5

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 304
    return-void
.end method

.method public restore(Landroid/os/Handler;I)V
    .registers 5
    .parameter "listener"
    .parameter "message"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreListener:Landroid/os/Handler;

    .line 87
    iput p2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreMessage:I

    .line 89
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->maybeInit()V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendEmptyMessage(I)Z

    .line 91
    return-void
.end method

.method public update(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 5
    .parameter "transfer"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    return-void
.end method
