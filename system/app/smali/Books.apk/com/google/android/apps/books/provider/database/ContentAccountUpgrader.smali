.class public abstract Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;
.super Ljava/lang/Object;
.source "ContentAccountUpgrader.java"


# instance fields
.field private final mBasePath:Ljava/io/File;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mVolumeIdsWithContent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)V
    .registers 4
    .parameter "db"
    .parameter "basePath"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mVolumeIdsWithContent:Ljava/util/Set;

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mBasePath:Ljava/io/File;

    .line 34
    return-void
.end method


# virtual methods
.method protected getDb()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected abstract getNewFilePath()Ljava/lang/String;
.end method

.method protected abstract getOldFilePath()Ljava/lang/String;
.end method

.method protected abstract getOldTableName()Ljava/lang/String;
.end method

.method protected init()V
    .registers 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->getOldTableName()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, table:Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "volume_id"

    aput-object v0, v2, v3

    .line 63
    .local v2, columns:[Ljava/lang/String;
    const-string v10, "content_status=?"

    .line 64
    .local v10, selection:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 65
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v9, "volume_id"

    .line 66
    .local v9, groupBy:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "content_status=?"

    const-string v5, "volume_id"

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    .local v8, cursor:Landroid/database/Cursor;
    :goto_25
    :try_start_25
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 70
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, volumeId:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mVolumeIdsWithContent:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_36

    goto :goto_25

    .line 74
    .end local v11           #volumeId:Ljava/lang/String;
    :catchall_36
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 76
    return-void
.end method

.method protected moveContentDirectory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "accountName"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mBasePath:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/volumes/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->getOldFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, oldContentDir:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mBasePath:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/accounts/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/volumes/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, newVolumeDir:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->getNewFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, newContentDir:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v6, oldPath:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_95

    .line 118
    new-instance v7, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Old path doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 120
    :cond_95
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v2, newPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 122
    new-instance v7, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New path already exists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 125
    :cond_b9
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v4, newVolumePath:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 127
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_e0

    .line 128
    new-instance v7, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New directory doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 131
    :cond_e0
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 132
    .local v0, moved:Z
    if-eqz v0, :cond_112

    .line 133
    const-string v7, "ContentAccountUpgrader"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_111

    .line 134
    const-string v7, "ContentAccountUpgrader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moved "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_111
    return-void

    .line 137
    :cond_112
    new-instance v7, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to move "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected shouldMoveContent(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "volumeId"
    .parameter "ownsContent"

    .prologue
    .line 82
    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;->mVolumeIdsWithContent:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected statusSql(Z)Ljava/lang/String;
    .registers 3
    .parameter "moveContent"

    .prologue
    .line 91
    if-eqz p1, :cond_5

    .line 93
    const-string v0, "content_status"

    .line 101
    .local v0, statusSql:Ljava/lang/String;
    :goto_4
    return-object v0

    .line 96
    .end local v0           #statusSql:Ljava/lang/String;
    :cond_5
    const-string v0, "CASE (content_status) WHEN 3 THEN 2 ELSE content_status END"

    .restart local v0       #statusSql:Ljava/lang/String;
    goto :goto_4
.end method
