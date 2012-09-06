.class public Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;
.super Ljava/lang/Object;
.source "AndroidDatabaseUtils.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/DatabaseUtils;


# instance fields
.field private final context:Landroid/content/Context;

.field private final databaseDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->context:Landroid/content/Context;

    .line 24
    const-string v0, "foo"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->databaseDirectory:Ljava/io/File;

    .line 25
    return-void
.end method


# virtual methods
.method public createTempDatabaseName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "prefix"
    .parameter "suffix"

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->ensureDatabaseDirectoryExists()V

    .line 42
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->databaseDirectory:Ljava/io/File;

    invoke-static {p1, p2, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 43
    .local v1, tempFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    .line 47
    .end local v1           #tempFile:Ljava/io/File;
    :goto_10
    return-object v2

    .line 45
    :catch_11
    move-exception v0

    .line 46
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Failed to create temporary database file"

    invoke-static {v2, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public ensureDatabaseDirectoryExists()V
    .registers 5

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->databaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_26

    .line 29
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_21

    .line 30
    const-string v0, "creating database directory \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->databaseDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 33
    :cond_21
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->databaseDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_26
    return-void
.end method

.method public renameDatabase(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter "oldName"
    .parameter "newName"

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->ensureDatabaseDirectoryExists()V

    .line 54
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->context:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 55
    .local v1, oldFile:Ljava/io/File;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/AndroidDatabaseUtils;->context:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 56
    .local v0, newFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    return v2
.end method
