.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# instance fields
.field private final mPhotoStore:Lcom/android/providers/contacts/PhotoStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .registers 6
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "photoStore"

    .prologue
    .line 49
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 50
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 51
    return-void
.end method

.method private hasNonNullPhoto(Landroid/content/ContentValues;)Z
    .registers 4
    .parameter "values"

    .prologue
    .line 122
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 123
    .local v0, photoBytes:[B
    if-eqz v0, :cond_d

    array-length v1, v0

    if-lez v1, :cond_d

    const/4 v1, 0x1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private preProcessPhoto(Landroid/content/ContentValues;)Z
    .registers 4
    .parameter "values"

    .prologue
    .line 104
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 105
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->hasNonNullPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    .line 106
    .local v0, photoExists:Z
    if-eqz v0, :cond_16

    .line 107
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->processPhoto(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 109
    const/4 v1, 0x0

    .line 118
    .end local v0           #photoExists:Z
    :goto_15
    return v1

    .line 114
    .restart local v0       #photoExists:Z
    :cond_16
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 115
    const-string v1, "data14"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 118
    .end local v0           #photoExists:Z
    :cond_20
    const/4 v1, 0x1

    goto :goto_15
.end method

.method private processPhoto(Landroid/content/ContentValues;)Z
    .registers 11
    .parameter "values"

    .prologue
    .line 142
    const-string v7, "data15"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 143
    .local v3, originalPhoto:[B
    if-eqz v3, :cond_54

    .line 144
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 146
    .local v1, maxDisplayPhotoDim:I
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f030001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 149
    .local v2, maxThumbnailPhotoDim:I
    :try_start_21
    new-instance v6, Lcom/android/providers/contacts/PhotoProcessor;

    invoke-direct {v6, v3, v1, v2}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BII)V

    .line 151
    .local v6, processor:Lcom/android/providers/contacts/PhotoProcessor;
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v7, v6}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v4

    .line 152
    .local v4, photoFileId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-eqz v7, :cond_46

    .line 153
    const-string v7, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    :goto_3b
    const-string v7, "data15"

    invoke-virtual {v6}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 158
    const/4 v7, 0x1

    .line 163
    .end local v1           #maxDisplayPhotoDim:I
    .end local v2           #maxThumbnailPhotoDim:I
    .end local v4           #photoFileId:J
    .end local v6           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :goto_45
    return v7

    .line 155
    .restart local v1       #maxDisplayPhotoDim:I
    .restart local v2       #maxThumbnailPhotoDim:I
    .restart local v4       #photoFileId:J
    .restart local v6       #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :cond_46
    const-string v7, "data14"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_4b} :catch_4c

    goto :goto_3b

    .line 159
    .end local v4           #photoFileId:J
    .end local v6           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :catch_4c
    move-exception v0

    .line 160
    .local v0, ioe:Ljava/io/IOException;
    const-string v7, "DataRowHandlerForPhoto"

    const-string v8, "Could not process photo for insert or update"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0           #ioe:Ljava/io/IOException;
    .end local v1           #maxDisplayPhotoDim:I
    .end local v2           #maxThumbnailPhotoDim:I
    :cond_54
    const/4 v7, 0x0

    goto :goto_45
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .registers 8
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 128
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 129
    .local v1, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 130
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 131
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .registers 9
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 57
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 58
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 66
    :cond_d
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 67
    .local v0, dataId:J
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 68
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 70
    .end local v0           #dataId:J
    :cond_1c
    :goto_1c
    return-wide v0

    .line 61
    :cond_1d
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 62
    const-wide/16 v0, 0x0

    goto :goto_1c
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .registers 11
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-interface {p4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 78
    .local v0, rawContactId:J
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 79
    const-string v4, "skip_processing"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 88
    :cond_13
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v4

    if-nez v4, :cond_21

    .line 93
    :goto_19
    return v2

    .line 82
    :cond_1a
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_19

    .line 92
    :cond_21
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v2, v3

    .line 93
    goto :goto_19
.end method
