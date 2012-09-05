.class public Lcom/android/providers/contacts/PhotoStore;
.super Ljava/lang/Object;
.source "PhotoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/PhotoStore$Entry;
    }
.end annotation


# instance fields
.field private final DIRECTORY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/PhotoStore$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorePath:Ljava/io/File;

.field private mTotalSize:J


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/android/providers/contacts/ContactsDatabaseHelper;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-class v0, Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    .line 46
    const-string v0, "photos"

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->DIRECTORY:Ljava/lang/String;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 69
    new-instance v0, Ljava/io/File;

    const-string v1, "photos"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    .line 70
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 71
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create photo storage directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_4b
    iput-object p2, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    .line 78
    invoke-virtual {p0}, Lcom/android/providers/contacts/PhotoStore;->initialize()V

    .line 79
    return-void
.end method

.method private cleanupFile(Ljava/io/File;)V
    .registers 5
    .parameter "file"

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 229
    .local v0, deleted:Z
    if-nez v0, :cond_f

    .line 230
    const-string v1, "Could not clean up file %s"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_f
    return-void
.end method

.method private getFileForPhotoFileId(J)Ljava/io/File;
    .registers 6
    .parameter "id"

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    .registers 11
    .parameter "id"
    .parameter "entry"

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 256
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v3, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 261
    :goto_13
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void

    .line 258
    :cond_1d
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 259
    .local v0, oldEntry:Lcom/android/providers/contacts/PhotoStore$Entry;
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v3, p3, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    iget-wide v5, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    goto :goto_13
.end method

.method private removeEntry(J)V
    .registers 10
    .parameter "id"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    .line 270
    .local v0, entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    if-eqz v0, :cond_1e

    .line 271
    iget-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    iget-wide v3, v0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 272
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_1e
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "photo_files"

    const-string v3, "photo_files._id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 276
    return-void
.end method


# virtual methods
.method public cleanup(Ljava/util/Set;)Ljava/util/Set;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, keysInUse:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v3, keysToRemove:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-interface {v3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 149
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    .line 150
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cleanup removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 152
    .local v1, key:J
    invoke-virtual {p0, v1, v2}, Lcom/android/providers/contacts/PhotoStore;->remove(J)V

    goto :goto_3d

    .line 156
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:J
    :cond_51
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 157
    .local v4, missingKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v4, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 158
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 159
    return-object v4
.end method

.method public clear()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 85
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 86
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_16

    .line 87
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v4, :cond_16

    aget-object v1, v0, v3

    .line 88
    .local v1, file:Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 91
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_16
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_22

    .line 92
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 94
    :cond_22
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "photo_files"

    invoke-virtual {v5, v6, v7, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 96
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    .line 97
    return-void
.end method

.method public get(J)Lcom/android/providers/contacts/PhotoStore$Entry;
    .registers 5
    .parameter "key"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoStore;->mEntries:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/PhotoStore$Entry;

    return-object v0
.end method

.method public getTotalSize()J
    .registers 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/android/providers/contacts/PhotoStore;->mTotalSize:J

    return-wide v0
.end method

.method public final initialize()V
    .registers 10

    .prologue
    .line 116
    iget-object v7, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 117
    .local v3, files:[Ljava/io/File;
    if-nez v3, :cond_9

    .line 132
    :goto_8
    return-void

    .line 120
    :cond_9
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_c
    if-ge v4, v5, :cond_22

    aget-object v2, v0, v4

    .line 122
    .local v2, file:Ljava/io/File;
    :try_start_10
    new-instance v1, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v1, v2}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 123
    .local v1, entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    iget-wide v7, v1, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v7, v8, v1}, Lcom/android/providers/contacts/PhotoStore;->putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_1a} :catch_1d

    .line 120
    .end local v1           #entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 124
    :catch_1d
    move-exception v6

    .line 126
    .local v6, nfe:Ljava/lang/NumberFormatException;
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    goto :goto_1a

    .line 131
    .end local v2           #file:Ljava/io/File;
    .end local v6           #nfe:Ljava/lang/NumberFormatException;
    :cond_22
    iget-object v7, p0, Lcom/android/providers/contacts/PhotoStore;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_8
.end method

.method public insert(Lcom/android/providers/contacts/PhotoProcessor;)J
    .registers 4
    .parameter "photoProcessor"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Lcom/android/providers/contacts/PhotoProcessor;Z)J
    .registers 18
    .parameter "photoProcessor"
    .parameter "allowSmallImageStorage"

    .prologue
    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhoto()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 185
    .local v0, displayPhoto:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 186
    .local v11, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 187
    .local v4, height:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getMaxThumbnailPhotoDim()I

    move-result v9

    .line 188
    .local v9, thumbnailDim:I
    if-nez p2, :cond_16

    if-gt v11, v9, :cond_16

    if-le v4, v9, :cond_7e

    .line 191
    :cond_16
    const/4 v2, 0x0

    .line 194
    .local v2, file:Ljava/io/File;
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhotoBytes()[B

    move-result-object v7

    .line 195
    .local v7, photoBytes:[B
    const-string v12, "img"

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/providers/contacts/PhotoStore;->mStorePath:Ljava/io/File;

    invoke-static {v12, v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 196
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 197
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/PhotoProcessor;->getDisplayPhotoBytes()[B

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 198
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 201
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 202
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "height"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v12, "width"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v12, "filesize"

    array-length v13, v7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    iget-object v12, p0, Lcom/android/providers/contacts/PhotoStore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "photo_files"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 206
    .local v5, id:J
    const-wide/16 v12, 0x0

    cmp-long v12, v5, v12

    if-eqz v12, :cond_79

    .line 208
    invoke-direct {p0, v5, v6}, Lcom/android/providers/contacts/PhotoStore;->getFileForPhotoFileId(J)Ljava/io/File;

    move-result-object v8

    .line 209
    .local v8, target:Ljava/io/File;
    invoke-virtual {v2, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_79

    .line 210
    new-instance v1, Lcom/android/providers/contacts/PhotoStore$Entry;

    invoke-direct {v1, v8}, Lcom/android/providers/contacts/PhotoStore$Entry;-><init>(Ljava/io/File;)V

    .line 211
    .local v1, entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    iget-wide v12, v1, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    invoke-direct {p0, v12, v13, v1}, Lcom/android/providers/contacts/PhotoStore;->putEntry(JLcom/android/providers/contacts/PhotoStore$Entry;)V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_77} :catch_78

    .line 224
    .end local v1           #entry:Lcom/android/providers/contacts/PhotoStore$Entry;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #id:J
    .end local v7           #photoBytes:[B
    .end local v8           #target:Ljava/io/File;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_77
    return-wide v5

    .line 215
    .restart local v2       #file:Ljava/io/File;
    :catch_78
    move-exception v12

    .line 220
    :cond_79
    if-eqz v2, :cond_7e

    .line 221
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 224
    .end local v2           #file:Ljava/io/File;
    :cond_7e
    const-wide/16 v5, 0x0

    goto :goto_77
.end method

.method public remove(J)V
    .registers 4
    .parameter "id"

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->getFileForPhotoFileId(J)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/PhotoStore;->cleanupFile(Ljava/io/File;)V

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/PhotoStore;->removeEntry(J)V

    .line 240
    return-void
.end method
