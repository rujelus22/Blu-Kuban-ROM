.class Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;
.super Ljava/lang/Thread;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->removeGears()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;


# direct methods
.method constructor <init>(Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->this$0:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .registers 5
    .parameter "currentDir"

    .prologue
    .line 380
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 381
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_1d

    .line 382
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 383
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->deleteDirectory(Ljava/io/File;)V

    .line 385
    :cond_15
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 387
    :cond_1d
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 388
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 348
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 349
    iget-object v7, p0, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->this$0:Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    #getter for: Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;->access$100(Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 350
    .local v2, browserDataDirString:Ljava/lang/String;
    const-string v1, "app_plugins"

    .line 351
    .local v1, appPluginsDirString:Ljava/lang/String;
    const-string v5, "gears"

    .line 352
    .local v5, gearsPrefix:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "app_plugins"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .local v0, appPluginsDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3a

    .line 377
    :cond_39
    :goto_39
    return-void

    .line 358
    :cond_3a
    new-instance v7, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1$1;

    invoke-direct {v7, p0}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1$1;-><init>(Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;)V

    invoke-virtual {v0, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 363
    .local v4, gearsFiles:[Ljava/io/File;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_44
    array-length v7, v4

    if-ge v6, v7, :cond_5d

    .line 364
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_57

    .line 365
    aget-object v7, v4, v6

    invoke-direct {p0, v7}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->deleteDirectory(Ljava/io/File;)V

    .line 363
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 367
    :cond_57
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_54

    .line 371
    :cond_5d
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "gears"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 373
    .local v3, gearsDataDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 376
    invoke-direct {p0, v3}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper$1;->deleteDirectory(Ljava/io/File;)V

    goto :goto_39
.end method
