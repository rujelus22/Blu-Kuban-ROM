.class Lcom/google/android/apps/books/provider/VolumeContentProvidelet;
.super Ljava/lang/Object;
.source "VolumeContentProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# static fields
.field private static sEnsureLock:Ljava/lang/Object;


# instance fields
.field private final mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->sEnsureLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/ConfigurationProvidelet;)V
    .registers 3
    .parameter "context"
    .parameter "cp"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    .line 50
    return-void
.end method

.method private clearAllContent(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearSections(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 117
    .local v0, result:Z
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearPages(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearResources(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 123
    return v0
.end method

.method private clearPages(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 143
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Pages;->buildPageDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 144
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "content_status"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content_status=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildPageContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, dir:Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    move-result v3

    return v3
.end method

.method private clearResources(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 157
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Resources;->buildResourceDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "content_status"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content_status=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildResContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    .local v0, dir:Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    move-result v3

    return v3
.end method

.method private clearSections(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "accountName"
    .parameter "volumeId"

    .prologue
    .line 129
    invoke-static {p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Segments;->buildSectionDirUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 131
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "content_status"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content_status=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildSectionContentDir(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 137
    .local v0, dir:Ljava/io/File;
    invoke-static {v0}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    move-result v3

    return v3
.end method

.method private decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;
    .registers 4
    .parameter "cause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->usingExternalStorage()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 210
    iget-object v1, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksProvider;->externalStorageIsAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 211
    new-instance v0, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, toThrow:Ljava/io/FileNotFoundException;
    :goto_19
    invoke-virtual {v0, p1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 219
    :goto_1c
    throw v0

    .line 213
    .end local v0           #toThrow:Ljava/io/FileNotFoundException;
    :cond_1d
    new-instance v0, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;-><init>(Ljava/lang/String;)V

    .restart local v0       #toThrow:Ljava/io/FileNotFoundException;
    goto :goto_19

    .line 217
    .end local v0           #toThrow:Ljava/io/FileNotFoundException;
    :cond_27
    move-object v0, p1

    .restart local v0       #toThrow:Ljava/io/FileNotFoundException;
    goto :goto_1c
.end method

.method private ensureDir(Ljava/io/File;)V
    .registers 6
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    :goto_6
    return-void

    .line 274
    :cond_7
    sget-object v1, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->sEnsureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_36

    .line 278
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;

    move-result-object v0

    throw v0

    .line 281
    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_33

    throw v0

    :cond_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    goto :goto_6
.end method

.method private declared-synchronized getBaseDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mConfigurationProvidelet:Lcom/google/android/apps/books/provider/ConfigurationProvidelet;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/ConfigurationProvidelet;->getBaseDir()Ljava/io/File;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getFile(ILandroid/net/Uri;)Ljava/io/File;
    .registers 9
    .parameter "match"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 62
    sparse-switch p1, :sswitch_data_5e

    .line 91
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 64
    :sswitch_9
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildCoverFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 65
    .local v0, coverFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->ensureDir(Ljava/io/File;)V

    .line 88
    .end local v0           #coverFile:Ljava/io/File;
    :goto_18
    return-object v0

    .line 69
    :sswitch_19
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildCoverThumbnailFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 71
    .local v1, coverThumbnailFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->ensureDir(Ljava/io/File;)V

    move-object v0, v1

    .line 72
    goto :goto_18

    .line 75
    .end local v1           #coverThumbnailFile:Ljava/io/File;
    :sswitch_2a
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildSectionContentFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v4

    .line 77
    .local v4, sectionContentFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->ensureDir(Ljava/io/File;)V

    move-object v0, v4

    .line 78
    goto :goto_18

    .line 81
    .end local v4           #sectionContentFile:Ljava/io/File;
    :sswitch_3b
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildResContentFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 82
    .local v3, resContentFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->ensureDir(Ljava/io/File;)V

    move-object v0, v3

    .line 83
    goto :goto_18

    .line 86
    .end local v3           #resContentFile:Ljava/io/File;
    :sswitch_4c
    invoke-direct {p0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getBaseDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/google/android/apps/books/provider/BooksContract$Files;->buildPageContentFile(Ljava/io/File;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 87
    .local v2, pageContentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->ensureDir(Ljava/io/File;)V

    move-object v0, v2

    .line 88
    goto :goto_18

    .line 62
    nop

    :sswitch_data_5e
    .sparse-switch
        0x96 -> :sswitch_9
        0x97 -> :sswitch_19
        0xca -> :sswitch_2a
        0x12e -> :sswitch_3b
        0x192 -> :sswitch_4c
    .end sparse-switch
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 170
    const/4 v3, 0x0

    .line 173
    .local v3, result:I
    :try_start_1
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, volumeId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_3a

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getFile(ILandroid/net/Uri;)Ljava/io/File;

    move-result-object v2

    .line 192
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    .line 194
    .end local v2           #file:Ljava/io/File;
    .local v4, success:Z
    :goto_14
    if-eqz v4, :cond_2c

    const/4 v3, 0x1

    .line 198
    .end local v0           #accountName:Ljava/lang/String;
    .end local v4           #success:Z
    .end local v5           #volumeId:Ljava/lang/String;
    :goto_17
    return v3

    .line 177
    .restart local v0       #accountName:Ljava/lang/String;
    .restart local v5       #volumeId:Ljava/lang/String;
    :pswitch_18
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearAllContent(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 178
    .restart local v4       #success:Z
    goto :goto_14

    .line 180
    .end local v4           #success:Z
    :pswitch_1d
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearSections(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 181
    .restart local v4       #success:Z
    goto :goto_14

    .line 183
    .end local v4           #success:Z
    :pswitch_22
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearPages(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 184
    .restart local v4       #success:Z
    goto :goto_14

    .line 186
    .end local v4           #success:Z
    :pswitch_27
    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->clearResources(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_2e

    move-result v4

    .line 187
    .restart local v4       #success:Z
    goto :goto_14

    .line 194
    :cond_2c
    const/4 v3, 0x0

    goto :goto_17

    .line 195
    .end local v0           #accountName:Ljava/lang/String;
    .end local v4           #success:Z
    .end local v5           #volumeId:Ljava/lang/String;
    :catch_2e
    move-exception v1

    .line 196
    .local v1, e:Ljava/io/IOException;
    const-string v6, "VolumeContentProvidelet"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 175
    nop

    :pswitch_data_3a
    .packed-switch 0x19a
        :pswitch_18
        :pswitch_1d
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public openFile(ILandroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 7
    .parameter "match"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getFile(ILandroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 260
    .local v1, file:Ljava/io/File;
    move-object v0, p2

    .line 261
    .local v0, cookie:Landroid/net/Uri;
    invoke-virtual {p0, v1, p3, v0}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->openFileOrThrow(Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2
.end method

.method public openFileOrThrow(Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    .registers 12
    .parameter "file"
    .parameter "mode"
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p2, p3}, Lcom/google/android/apps/books/util/ProviderUtils;->providerModeToPfdMode(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    .line 229
    .local v3, rawMode:I
    const/high16 v5, 0x800

    and-int/2addr v5, v3

    if-eqz v5, :cond_39

    const/4 v1, 0x1

    .line 230
    .local v1, isCreate:Z
    :goto_a
    if-nez v1, :cond_3b

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 231
    new-instance v5, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " doesn\'t exist for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;

    move-result-object v5

    throw v5

    .line 229
    .end local v1           #isCreate:Z
    :cond_39
    const/4 v1, 0x0

    goto :goto_a

    .line 235
    .restart local v1       #isCreate:Z
    :cond_3b
    :try_start_3b
    invoke-static {p1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3e} :catch_40

    move-result-object v2

    .line 239
    .local v2, pfd:Landroid/os/ParcelFileDescriptor;
    return-object v2

    .line 240
    .end local v2           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_40
    move-exception v0

    .line 243
    .local v0, e:Ljava/io/FileNotFoundException;
    move-object v4, v0

    .line 244
    .local v4, toThrow:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 245
    new-instance v4, Ljava/io/FileNotFoundException;

    .end local v4           #toThrow:Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and cookie "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 247
    .restart local v4       #toThrow:Ljava/io/FileNotFoundException;
    invoke-virtual {v4, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 252
    :goto_75
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->decorateFileNotFoundException(Ljava/io/FileNotFoundException;)Ljava/io/FileNotFoundException;

    move-result-object v5

    throw v5

    .line 249
    :cond_7a
    const-string v5, "VolumeContentProvidelet"

    const-string v6, "Looks like Parcel.openFileDescriptor() provides a message now.  Time to remove work-around in ProviderUtils.openFileOrThrow()?"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 99
    const/4 v2, 0x0

    .line 101
    .local v2, result:Landroid/database/Cursor;
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/provider/VolumeContentProvidelet;->getFile(ILandroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    .line 102
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryOpenableColumns(Ljava/io/File;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v2

    .line 106
    .end local v1           #file:Ljava/io/File;
    :goto_9
    return-object v2

    .line 103
    :catch_a
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    const-string v3, "VolumeContentProvidelet"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method
