.class public Lcom/samsung/swift/service/content/MediaScannerRequest;
.super Ljava/lang/Object;
.source "MediaScannerRequest.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# static fields
.field private static final TRACE_LOG:Ljava/lang/String;


# instance fields
.field private final cnx:Landroid/media/MediaScannerConnection;

.field private contentId:Ljava/lang/String;

.field private contentValues:Landroid/content/ContentValues;

.field private path:Ljava/lang/String;

.field private updatedRows:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 105
    const-class v0, Lcom/samsung/swift/service/content/MediaScannerRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-object v0, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v1, "##### MediaScannerRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->cnx:Landroid/media/MediaScannerConnection;

    .line 117
    return-void
.end method


# virtual methods
.method public declared-synchronized dispatch()V
    .registers 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v1, "##### dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->cnx:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 128
    monitor-exit p0

    return-void

    .line 125
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 189
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->contentId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContentValues()Landroid/content/ContentValues;
    .registers 2

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->contentValues:Landroid/content/ContentValues;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->path:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUpdatedRows()I
    .registers 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->updatedRows:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onMediaScannerConnected()V
    .registers 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->cnx:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->path:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 13
    .parameter "path"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 207
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "date_modified"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 208
    .local v2, proj:[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 209
    .local v6, c:Landroid/database/Cursor;
    monitor-enter p0

    .line 213
    if-eqz v6, :cond_bc

    .line 215
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_43

    .line 217
    sget-object v0, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v1, "onScanCompleted: FAILED - Unable to retrieve URI"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_a3

    .line 250
    :cond_2d
    :goto_2d
    :try_start_2d
    sget-object v0, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v1, "onScanCompleted: DISCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->cnx:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 252
    if-eqz v6, :cond_3e

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_3e
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 258
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_b9

    .line 259
    return-void

    .line 222
    :cond_43
    :try_start_43
    const-string v0, "date_modified"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 223
    .local v7, modified_time:J
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->contentId:Ljava/lang/String;

    .line 224
    iget-object v9, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->contentValues:Landroid/content/ContentValues;

    .line 225
    .local v9, values:Landroid/content/ContentValues;
    const-wide v0, 0x2540be3ffL

    cmp-long v0, v7, v0

    if-lez v0, :cond_90

    .line 227
    sget-object v0, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScanAndMakeRingtone retrieved incorrect file modification time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-nez v9, :cond_83

    .line 230
    new-instance v9, Landroid/content/ContentValues;

    .end local v9           #values:Landroid/content/ContentValues;
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_83
    const-string v0, "date_modified"

    const-wide/16 v3, 0x3e8

    div-long v3, v7, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    :cond_90
    if-eqz v9, :cond_2d

    .line 237
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/swift/service/SwiftService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v9, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->updatedRows:I
    :try_end_a2
    .catchall {:try_start_43 .. :try_end_a2} :catchall_a3

    goto :goto_2d

    .line 250
    .end local v7           #modified_time:J
    .end local v9           #values:Landroid/content/ContentValues;
    :catchall_a3
    move-exception v0

    :try_start_a4
    sget-object v1, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v3, "onScanCompleted: DISCONNECT"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->cnx:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 252
    if-eqz v6, :cond_b5

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_b5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 250
    throw v0

    .line 258
    :catchall_b9
    move-exception v0

    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_a4 .. :try_end_bb} :catchall_b9

    throw v0

    .line 243
    :cond_bc
    :try_start_bc
    sget-object v0, Lcom/samsung/swift/service/content/MediaScannerRequest;->TRACE_LOG:Ljava/lang/String;

    const-string v1, "onScanCompleted: DISCONNECT - (fail)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->cnx:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_cb
    .catchall {:try_start_bc .. :try_end_cb} :catchall_a3

    goto/16 :goto_2d
.end method

.method public declared-synchronized setContentId(Ljava/lang/String;)V
    .registers 3
    .parameter "contentId"

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->contentId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 197
    monitor-exit p0

    return-void

    .line 196
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContentValues(Landroid/content/ContentValues;)V
    .registers 3
    .parameter "contentValues"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->contentValues:Landroid/content/ContentValues;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPath(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->path:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUpdatedRows(I)V
    .registers 3
    .parameter "updatedRows"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/samsung/swift/service/content/MediaScannerRequest;->updatedRows:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
