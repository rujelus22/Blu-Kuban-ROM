.class public Lcom/google/android/gm/provider/CompressedMessageCursor;
.super Landroid/database/CursorWrapper;
.source "CompressedMessageCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;
    }
.end annotation


# instance fields
.field private final bodyIndex:I

.field private final mCursor:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 30
    check-cast p1, Landroid/database/CrossProcessCursor;

    .end local p1
    iput-object p1, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->mCursor:Landroid/database/CrossProcessCursor;

    .line 32
    const-string v0, "body"

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->bodyIndex:I

    .line 33
    return-void
.end method

.method private getMessageBody()Ljava/lang/String;
    .registers 11

    .prologue
    .line 45
    new-instance v6, Landroid/util/TimingLogger;

    const-string v7, "Gmail"

    const-string v8, "getMessageBody"

    invoke-direct {v6, v7, v8}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .local v6, timer:Landroid/util/TimingLogger;
    :try_start_9
    iget v7, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->bodyIndex:I

    invoke-super {p0, v7}, Landroid/database/CursorWrapper;->getBlob(I)[B
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_54

    move-result-object v0

    .line 48
    .local v0, data:[B
    if-nez v0, :cond_16

    .line 51
    const/4 v7, 0x0

    .line 80
    invoke-virtual {v6}, Landroid/util/TimingLogger;->dumpToLog()V

    :goto_15
    return-object v7

    .line 53
    :cond_16
    const/4 v7, 0x0

    :try_start_17
    aget-byte v7, v0, v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_30

    .line 54
    array-length v7, v0

    add-int/lit8 v2, v7, -0x1

    .line 57
    .local v2, length:I
    aget-byte v7, v0, v2

    if-nez v7, :cond_26

    .line 58
    add-int/lit8 v2, v2, -0x1

    .line 60
    :cond_26
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_54

    .line 80
    invoke-virtual {v6}, Landroid/util/TimingLogger;->dumpToLog()V

    goto :goto_15

    .line 64
    .end local v2           #length:I
    :cond_30
    :try_start_30
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x1

    array-length v9, v0

    add-int/lit8 v9, v9, -0x1

    invoke-static {v0, v8, v9}, Lcom/google/android/gm/provider/ZipUtils;->inflate([BII)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_54
    .catch Ljava/util/zip/DataFormatException; {:try_start_30 .. :try_end_3f} :catch_43
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_3f} :catch_5e

    .line 80
    invoke-virtual {v6}, Landroid/util/TimingLogger;->dumpToLog()V

    goto :goto_15

    .line 65
    :catch_43
    move-exception v1

    .line 68
    .local v1, e:Ljava/util/zip/DataFormatException;
    :try_start_44
    const-string v7, "messageId"

    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/CompressedMessageCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 69
    .local v5, messageIdIndex:I
    if-gez v5, :cond_59

    .line 70
    const-wide/16 v3, -0x1

    .line 74
    .local v3, messageId:J
    :goto_4e
    new-instance v7, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;

    invoke-direct {v7, p0, v3, v4, v1}, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;-><init>(Lcom/google/android/gm/provider/CompressedMessageCursor;JLjava/lang/Throwable;)V

    throw v7
    :try_end_54
    .catchall {:try_start_44 .. :try_end_54} :catchall_54

    .line 80
    .end local v0           #data:[B
    .end local v1           #e:Ljava/util/zip/DataFormatException;
    .end local v3           #messageId:J
    .end local v5           #messageIdIndex:I
    :catchall_54
    move-exception v7

    invoke-virtual {v6}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v7

    .line 72
    .restart local v0       #data:[B
    .restart local v1       #e:Ljava/util/zip/DataFormatException;
    .restart local v5       #messageIdIndex:I
    :cond_59
    :try_start_59
    invoke-virtual {p0, v5}, Lcom/google/android/gm/provider/CompressedMessageCursor;->getLong(I)J

    move-result-wide v3

    .restart local v3       #messageId:J
    goto :goto_4e

    .line 75
    .end local v1           #e:Ljava/util/zip/DataFormatException;
    .end local v3           #messageId:J
    .end local v5           #messageIdIndex:I
    :catch_5e
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "UTF-8 not supported"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_54
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 7
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v1, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 89
    if-ltz p1, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gm/provider/CompressedMessageCursor;->getCount()I

    move-result v1

    if-gt p1, v1, :cond_12

    iget v1, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->bodyIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 105
    :cond_12
    :goto_12
    return-void

    .line 92
    :cond_13
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 94
    :try_start_16
    invoke-virtual {p0}, Lcom/google/android/gm/provider/CompressedMessageCursor;->getPosition()I

    move-result v0

    .line 95
    .local v0, oldPos:I
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/CompressedMessageCursor;->moveToPosition(I)Z

    .line 96
    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/gm/provider/CompressedMessageCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 99
    invoke-direct {p0}, Lcom/google/android/gm/provider/CompressedMessageCursor;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/provider/CompressedMessageCursor;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->bodyIndex:I

    invoke-virtual {p2, v1, v2, v3}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z
    :try_end_32
    .catchall {:try_start_16 .. :try_end_32} :catchall_33

    goto :goto_1f

    .line 103
    .end local v0           #oldPos:I
    :catchall_33
    move-exception v1

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v1

    .line 101
    .restart local v0       #oldPos:I
    :cond_38
    :try_start_38
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/CompressedMessageCursor;->moveToPosition(I)Z
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_33

    .line 103
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_12
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->bodyIndex:I

    if-eq p1, v0, :cond_9

    .line 38
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0}, Lcom/google/android/gm/provider/CompressedMessageCursor;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMove(II)Z
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gm/provider/CompressedMessageCursor;->mCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0
.end method
