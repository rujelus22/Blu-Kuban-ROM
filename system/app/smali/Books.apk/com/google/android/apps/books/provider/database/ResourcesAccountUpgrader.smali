.class public Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;
.super Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;
.source "ResourcesAccountUpgrader.java"


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)V
    .registers 3
    .parameter "db"
    .parameter "basePath"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/database/ContentAccountUpgrader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)V

    .line 19
    return-void
.end method

.method public static newInstance(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;
    .registers 3
    .parameter "db"
    .parameter "basePath"

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/io/File;)V

    .line 23
    .local v0, upgrader:Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;
    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;->init()V

    .line 24
    return-object v0
.end method


# virtual methods
.method public copy(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "accountName"
    .parameter "volumeId"
    .parameter "ownsContent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/books/provider/database/BooksDatabase$UpgradeException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p2, p3}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;->shouldMoveContent(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    .local v0, moveContent:Z
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;->statusSql(Z)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, statusSql:Ljava/lang/String;
    const-string v2, "resource_id, related_section_id, resource_order, remote_url, session_key_id"

    .line 58
    .local v2, sharedColumns:Ljava/lang/String;
    const-string v1, "account_name, volume_id, resource_id, related_section_id, resource_order, remote_url, session_key_id, content_status"

    .line 59
    .local v1, newColumns:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', volume_id, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "resource_id, related_section_id, resource_order, remote_url, session_key_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, srcColumns:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO resources (account_name, volume_id, resource_id, related_section_id, resource_order, remote_url, session_key_id, content_status) SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FROM old_resources "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "WHERE volume_id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, sql:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    if-eqz v0, :cond_6a

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/provider/database/ResourcesAccountUpgrader;->moveContentDirectory(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_6a
    return-void
.end method

.method protected getNewFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    const-string v0, "res"

    return-object v0
.end method

.method protected getOldFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const-string v0, "res"

    return-object v0
.end method

.method protected getOldTableName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string v0, "resources"

    return-object v0
.end method
