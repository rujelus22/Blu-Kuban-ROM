.class public Lcom/swype/android/langpack/Installer;
.super Ljava/lang/Object;
.source "Installer.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x5000

.field private static final COMPRESSION_FILE_EXTENSION:Ljava/lang/String; = ".mp3"

.field private static final HTML_HELP_EXTENSION:Ljava/lang/String; = ".htm"

.field static final LANGUAGE_METADATA_FILE_EXT:Ljava/lang/String; = ".mdf"

.field private static final PNG_SEARCH_PATTERN_STRING:Ljava/lang/String; = "\"(.+?\\.png)\""

.field private static final REQUIRES_TAG:Ljava/lang/String; = "[REQ]"

.field private static final STAGING_FOLDER:Ljava/lang/String; = "langugageDownload/"


# instance fields
.field private assetManager:Landroid/content/res/AssetManager;

.field private core:Lcom/swype/android/jni/SwypeCore;

.field private deployedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final extractedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final languageListFiles:[Ljava/lang/String;

.field private languageName:Ljava/lang/String;

.field private languagePackFileName:Ljava/lang/String;

.field metadataFileName:Ljava/lang/String;

.field private stagingFolderName:Ljava/lang/String;

.field private swypeApplication:Lcom/swype/android/inputmethod/SwypeApplication;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "helplanguages.lst"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "languages.lst"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->languageListFiles:[Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/swype/android/langpack/Installer;->languageName:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->extractedFileList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->deployedFileList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "langugageDownload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/swype/android/langpack/Installer;->CanonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->stagingFolderName:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mdf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->CanonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->metadataFileName:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->assetManager:Landroid/content/res/AssetManager;

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->swypeApplication:Lcom/swype/android/inputmethod/SwypeApplication;

    .line 86
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->swypeApplication:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/langpack/Installer;->core:Lcom/swype/android/jni/SwypeCore;

    .line 88
    return-void
.end method

.method private CanonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "name"

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addLanguageToConfigFile()Z
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->core:Lcom/swype/android/jni/SwypeCore;

    iget-object v1, p0, Lcom/swype/android/langpack/Installer;->languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->addLanguageToConfigFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private assetExists(Ljava/lang/String;)Z
    .registers 5
    .parameter "assetName"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->swypeApplication:Lcom/swype/android/inputmethod/SwypeApplication;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "files/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isInAssets(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private copyAssetTo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 589
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x5000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 591
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 592
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 594
    invoke-virtual {p0, v1, v2}, Lcom/swype/android/langpack/Installer;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    .line 596
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 597
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 598
    return v0
.end method

.method private copyHelpFileResources()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->deployedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    const-string v2, ".htm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 250
    invoke-virtual {p0, v0}, Lcom/swype/android/langpack/Installer;->getHelpResourcesFromFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p0, v3}, Lcom/swype/android/langpack/Installer;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->assetExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "files/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-direct {p0, v0, v3}, Lcom/swype/android/langpack/Installer;->copyAssetTo(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_28

    .line 264
    :cond_70
    return-void
.end method

.method private deleteAllFiles(Ljava/lang/String;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 374
    .line 375
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_24

    array-length v2, v1

    if-lez v2, :cond_24

    .line 380
    array-length v2, v1

    move v4, v3

    :goto_11
    if-ge v3, v2, :cond_26

    aget-object v5, v1, v3

    .line 381
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v4, v5

    .line 383
    if-eqz v4, :cond_26

    .line 384
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 388
    :cond_24
    const/4 v0, 0x1

    .line 391
    :goto_25
    return v0

    :cond_26
    move v0, v4

    goto :goto_25
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method private deleteStagingFolder()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->stagingFolderName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->deleteAllFiles(Ljava/lang/String;)Z

    .line 319
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/swype/android/langpack/Installer;->stagingFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 321
    return-void
.end method

.method private filterConflictingFiles(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/swype/android/langpack/Installer;->getAllZkbs()Ljava/util/List;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 149
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 151
    :cond_18
    return-void
.end method

.method private makeStagingFolder()Z
    .registers 3

    .prologue
    .line 329
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/swype/android/langpack/Installer;->stagingFolderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 332
    return v0
.end method

.method private moveExtractedFiles()Z
    .registers 7

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/swype/android/langpack/Installer;->extractedFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 344
    const-string v3, "[REQ]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 345
    const-string v3, "[REQ]"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->CanonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v3, p0, Lcom/swype/android/langpack/Installer;->deployedFileList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[REQ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 351
    :cond_43
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->CanonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 356
    if-eqz v2, :cond_62

    .line 357
    iget-object v3, p0, Lcom/swype/android/langpack/Installer;->deployedFileList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_62
    move v0, v2

    .line 361
    return v0
.end method

.method private removeLanguageFromConfigFile()Z
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->core:Lcom/swype/android/jni/SwypeCore;

    iget-object v1, p0, Lcom/swype/android/langpack/Installer;->languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->removeLanguageFromConfigFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    const/16 v0, 0x5000

    new-array v0, v0, [B

    .line 578
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    .line 579
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 581
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method protected copyLanguageConfigFiles()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->languageListFiles:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_49

    aget-object v3, v0, v2

    .line 98
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "files/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {p0, v4}, Lcom/swype/android/langpack/Installer;->fileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_46

    .line 104
    invoke-direct {p0, v3, v4}, Lcom/swype/android/langpack/Installer;->copyAssetTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 107
    :cond_49
    return-void
.end method

.method protected createMetadataFile()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    const-string v0, "Swype"

    const-string v1, "Creating metadata file"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    .line 407
    :try_start_8
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/swype/android/langpack/Installer;->metadataFileName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_53

    .line 409
    :try_start_14
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->deployedFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 410
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Metadata file name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_46
    .catchall {:try_start_14 .. :try_end_46} :catchall_47

    goto :goto_1a

    .line 417
    :catchall_47
    move-exception v0

    :goto_48
    if-eqz v1, :cond_4d

    .line 418
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    :cond_4d
    throw v0

    .line 414
    :cond_4e
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 422
    const/4 v0, 0x1

    return v0

    .line 417
    :catchall_53
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_48
.end method

.method protected deleteDownloadedFile()Z
    .registers 3

    .prologue
    .line 540
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/swype/android/langpack/Installer;->languagePackFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method protected extractFiles()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 438
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/swype/android/langpack/Installer;->languagePackFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 439
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    const/16 v4, 0x5000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_11f

    .line 444
    const/16 v0, 0x5000

    :try_start_16
    new-array v0, v0, [B

    .line 447
    :goto_18
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_11a

    .line 448
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/swype/android/langpack/Installer;->getStagingFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-direct {p0, v1}, Lcom/swype/android/langpack/Installer;->CanonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 454
    invoke-direct {p0, v1}, Lcom/swype/android/langpack/Installer;->assetExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {p0, v4}, Lcom/swype/android/langpack/Installer;->fileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 456
    :cond_47
    iget-object v3, p0, Lcom/swype/android/langpack/Installer;->extractedFileList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[REQ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_16 .. :try_end_5f} :catchall_60

    goto :goto_18

    .line 516
    :catchall_60
    move-exception v0

    move-object v1, v2

    :goto_62
    if-eqz v1, :cond_67

    .line 517
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_67
    throw v0

    .line 461
    :cond_68
    :try_start_68
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 463
    new-instance v4, Ljava/io/BufferedOutputStream;

    const/16 v5, 0x5000

    invoke-direct {v4, v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 466
    :goto_74
    invoke-virtual {v2, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_80

    .line 469
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_74

    .line 471
    :cond_80
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 474
    const-string v1, ".mp3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, ".mp3"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 479
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 480
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 481
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 484
    if-eqz v4, :cond_f1

    .line 485
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v6, 0x5000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 488
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 489
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x5000

    invoke-direct {v6, v5, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 491
    invoke-virtual {p0, v4, v6}, Lcom/swype/android/langpack/Installer;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v5

    .line 493
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 494
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 498
    const-string v4, "Swype"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uncompressed file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " Success: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :goto_ea
    iget-object v3, p0, Lcom/swype/android/langpack/Installer;->extractedFileList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    .line 501
    :cond_f1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 502
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 505
    const-string v4, "Swype"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Renaming file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catchall {:try_start_68 .. :try_end_119} :catchall_60

    goto :goto_ea

    .line 513
    :cond_11a
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    .line 520
    const/4 v0, 0x1

    return v0

    .line 516
    :catchall_11f
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_62

    :cond_125
    move-object v1, v3

    goto :goto_ea
.end method

.method protected fileExists(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 555
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_9} :catch_b

    move-result v0

    .line 562
    :goto_a
    return v0

    .line 557
    :catch_b
    move-exception v1

    .line 558
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Security exception in file.exists(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method protected getAllZkbs()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/swype/android/inputmethod/SwypeApplication;->NATIVE_DATA_FILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/swype/android/langpack/Installer$1;

    invoke-direct {v1, p0}, Lcom/swype/android/langpack/Installer$1;-><init>(Lcom/swype/android/langpack/Installer;)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 164
    array-length v3, v1

    const/4 v0, 0x0

    move v4, v0

    :goto_18
    if-ge v4, v3, :cond_66

    aget-object v0, v1, v4

    .line 165
    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->CanonicalizeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v5, p0, Lcom/swype/android/langpack/Installer;->metadataFileName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 167
    invoke-virtual {p0, v0}, Lcom/swype/android/langpack/Installer;->readMetadataFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_30
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".zkb.le"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 170
    const-string v6, "[REQ]"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 171
    const-string v6, "[REQ]"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 174
    :cond_5e
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 164
    :cond_62
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_18

    .line 181
    :cond_66
    return-object v2
.end method

.method public getHelpResourcesFromFile(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 269
    :try_start_5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 273
    const-string v2, "\"(.+?\\.png)\""

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 275
    :cond_15
    :goto_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 276
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 277
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 278
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 279
    if-eqz v3, :cond_15

    .line 280
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 281
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_5 .. :try_end_35} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_15

    .line 292
    :catch_36
    move-exception v1

    .line 298
    :cond_37
    return-object v0

    .line 297
    :catchall_38
    move-exception v0

    throw v0
.end method

.method public getStagingFolder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->stagingFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public install(Ljava/lang/String;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    iput-object p1, p0, Lcom/swype/android/langpack/Installer;->languagePackFileName:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->stagingFolderName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/swype/android/langpack/Installer;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 223
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->stagingFolderName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->deleteAllFiles(Ljava/lang/String;)Z

    move-result v0

    .line 228
    :goto_10
    invoke-virtual {p0}, Lcom/swype/android/langpack/Installer;->copyLanguageConfigFiles()V

    .line 230
    if-eqz v0, :cond_30

    .line 232
    invoke-virtual {p0}, Lcom/swype/android/langpack/Installer;->extractFiles()Z

    move-result v0

    .line 233
    if-eqz v0, :cond_2d

    .line 234
    invoke-direct {p0}, Lcom/swype/android/langpack/Installer;->moveExtractedFiles()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 235
    invoke-direct {p0}, Lcom/swype/android/langpack/Installer;->copyHelpFileResources()V

    .line 236
    invoke-virtual {p0}, Lcom/swype/android/langpack/Installer;->createMetadataFile()Z

    .line 237
    invoke-direct {p0}, Lcom/swype/android/langpack/Installer;->addLanguageToConfigFile()Z

    .line 238
    invoke-virtual {p0}, Lcom/swype/android/langpack/Installer;->deleteDownloadedFile()Z

    .line 242
    :cond_2d
    invoke-direct {p0}, Lcom/swype/android/langpack/Installer;->deleteStagingFolder()V

    .line 245
    :cond_30
    return-void

    .line 225
    :cond_31
    invoke-direct {p0}, Lcom/swype/android/langpack/Installer;->makeStagingFolder()Z

    move-result v0

    goto :goto_10
.end method

.method protected readMetadataFile()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->metadataFileName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/swype/android/langpack/Installer;->readMetadataFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readMetadataFile(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 185
    const/4 v1, 0x0

    .line 188
    :try_start_6
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_28

    .line 190
    :goto_12
    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1c

    goto :goto_12

    .line 196
    :catchall_1c
    move-exception v0

    move-object v1, v2

    :goto_1e
    if-eqz v1, :cond_23

    .line 197
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_23
    throw v0

    .line 196
    :cond_24
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 200
    return-object v0

    .line 196
    :catchall_28
    move-exception v0

    goto :goto_1e
.end method

.method public declared-synchronized uninstall()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    .line 115
    :try_start_6
    invoke-virtual {p0}, Lcom/swype/android/langpack/Installer;->readMetadataFile()Ljava/util/List;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_2e

    move-result-object v0

    .line 119
    :goto_a
    :try_start_a
    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->filterConflictingFiles(Ljava/util/List;)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->deleteFile(Ljava/lang/String;)Z
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_21

    goto :goto_11

    .line 113
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/swype/android/langpack/Installer;->metadataFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/swype/android/langpack/Installer;->deleteFile(Ljava/lang/String;)Z

    .line 124
    invoke-direct {p0}, Lcom/swype/android/langpack/Installer;->removeLanguageFromConfigFile()Z
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_21

    .line 125
    monitor-exit p0

    return-void

    :catch_2e
    move-exception v1

    goto :goto_a
.end method
