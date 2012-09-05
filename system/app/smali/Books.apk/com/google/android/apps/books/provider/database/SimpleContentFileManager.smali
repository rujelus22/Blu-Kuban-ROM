.class public Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;
.super Ljava/lang/Object;
.source "SimpleContentFileManager.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/database/ContentFileManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public deleteAllFiles()V
    .registers 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/books/util/StorageUtils;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    .line 35
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/books/util/StorageUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, externalStorageDirectory:Ljava/io/File;
    if-eqz v0, :cond_14

    .line 38
    invoke-static {v0}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_15

    .line 43
    .end local v0           #externalStorageDirectory:Ljava/io/File;
    :cond_14
    :goto_14
    return-void

    .line 40
    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method public migrateResourceFiles()V
    .registers 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/books/util/StorageUtils;->getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/provider/ResourceFileSha1RenameMigrator;->execute(Ljava/io/File;)V

    .line 49
    :try_start_9
    iget-object v1, p0, Lcom/google/android/apps/books/provider/database/SimpleContentFileManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/books/util/StorageUtils;->getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 51
    .local v0, externalStorageDirectory:Ljava/io/File;
    if-eqz v0, :cond_14

    .line 52
    invoke-static {v0}, Lcom/google/android/apps/books/provider/ResourceFileSha1RenameMigrator;->execute(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_15

    .line 57
    .end local v0           #externalStorageDirectory:Ljava/io/File;
    :cond_14
    :goto_14
    return-void

    .line 54
    :catch_15
    move-exception v1

    goto :goto_14
.end method
