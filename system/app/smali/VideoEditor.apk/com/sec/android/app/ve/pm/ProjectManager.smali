.class public Lcom/sec/android/app/ve/pm/ProjectManager;
.super Ljava/lang/Object;
.source "ProjectManager.java"


# static fields
.field private static final CREATE_TIME_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/samsung/app/video/editor/external/TranscodeElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECT_EXT:Ljava/lang/String; = ".vep"

.field private static _instance:Lcom/sec/android/app/ve/pm/ProjectManager;

.field private static cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;


# instance fields
.field private count:I

.field private isFileCreated:Z

.field private mBaseDir:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mProjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/TranscodeElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 54
    new-instance v0, Lcom/sec/android/app/ve/pm/ProjectManager$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/pm/ProjectManager$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->CREATE_TIME_ORDER:Ljava/util/Comparator;

    .line 42
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    .line 69
    iput-object p1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mBaseDir:Ljava/io/File;

    .line 71
    return-void
.end method

.method private getHighestCount()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_29

    .line 337
    iput v4, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    .line 353
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PLA::highest count::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 354
    :goto_28
    return-void

    .line 341
    :cond_29
    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 342
    .local v1, size:I
    if-ne v1, v4, :cond_4a

    .line 343
    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    goto :goto_28

    .line 346
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    .line 347
    const/4 v0, 0x1

    .local v0, i:I
    :goto_59
    if-lt v0, v1, :cond_62

    .line 351
    iget v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    goto :goto_14

    .line 348
    :cond_62
    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getIndex()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    if-le v2, v3, :cond_80

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getIndex()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    .line 347
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_59
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;
    .registers 3
    .parameter "context"

    .prologue
    .line 79
    const-class v1, Lcom/sec/android/app/ve/pm/ProjectManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->_instance:Lcom/sec/android/app/ve/pm/ProjectManager;

    if-nez v0, :cond_e

    .line 80
    new-instance v0, Lcom/sec/android/app/ve/pm/ProjectManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/pm/ProjectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->_instance:Lcom/sec/android/app/ve/pm/ProjectManager;

    .line 82
    :cond_e
    sget-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->_instance:Lcom/sec/android/app/ve/pm/ProjectManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 79
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 6
    .parameter "transcodeElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v3, 0x7f080076

    .line 298
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjCreationTime(J)V

    .line 300
    invoke-direct {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getHighestCount()V

    .line 302
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".vep"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, new_proj:Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    .line 307
    iget v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    invoke-virtual {p1, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setIndex(I)V

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    sget-object v2, Lcom/sec/android/app/ve/pm/ProjectManager;->CREATE_TIME_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 313
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->reset()V

    .line 314
    return-object p1
.end method

.method public addProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 7
    .parameter "transcodeElement"
    .parameter "path"
    .parameter "name"
    .parameter "increment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setProjCreationTime(J)V

    .line 320
    if-eqz p4, :cond_f

    .line 321
    invoke-direct {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getHighestCount()V

    .line 323
    :cond_f
    iput-object p3, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectName:Ljava/lang/String;

    .line 325
    iget v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->count:I

    invoke-virtual {p1, v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->setIndex(I)V

    .line 326
    iput-object p2, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    sget-object v1, Lcom/sec/android/app/ve/pm/ProjectManager;->CREATE_TIME_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 331
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->reset()V

    .line 332
    return-object p1
.end method

.method public deleteProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    .registers 6
    .parameter "transcodeElement"

    .prologue
    .line 358
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, fileName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "In PM:deleteProject::Filename:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 360
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 363
    const-string v2, "File Stilll Exists::PM"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 366
    :goto_29
    iget-object v2, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 367
    const/4 v2, 0x1

    return v2

    .line 365
    :cond_30
    const-string v2, "File Deleted::PM"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_29
.end method

.method public getCloneTE()Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 2

    .prologue
    .line 250
    sget-object v0, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    return-object v0
.end method

.method public getIfFileCreatedNow()Z
    .registers 2

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->isFileCreated:Z

    return v0
.end method

.method public getProjectFileList()[Ljava/io/File;
    .registers 5

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mBaseDir:Ljava/io/File;

    .line 91
    .local v0, base_dir:Ljava/io/File;
    :try_start_2
    new-instance v3, Lcom/sec/android/app/ve/pm/ProjectManager$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/ve/pm/ProjectManager$2;-><init>(Lcom/sec/android/app/ve/pm/ProjectManager;)V

    .line 100
    .local v3, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_c

    move-result-object v2

    .line 107
    .end local v3           #filter:Ljava/io/FilenameFilter;
    :goto_b
    return-object v2

    .line 103
    :catch_c
    move-exception v1

    .line 104
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public getProjectList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/TranscodeElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    return-object v0
.end method

.method public getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;
    .registers 6
    .parameter "fileName"

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    if-nez v3, :cond_7

    move-object v1, v2

    .line 288
    :goto_6
    return-object v1

    .line 275
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 276
    .local v0, itr:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    move-object v1, v2

    .line 288
    goto :goto_6

    .line 278
    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 279
    .local v1, temp:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-eqz v1, :cond_2b

    .line 280
    const-string v3, "temp not null"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 281
    iget-object v3, v1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_6

    .line 285
    :cond_2b
    const-string v3, "PM:::::temp  null"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public init()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 116
    const/4 v2, 0x0

    check-cast v2, [Ljava/io/File;

    .line 119
    .local v2, files:[Ljava/io/File;
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/ve/pm/ProjectManager;->getProjectFileList()[Ljava/io/File;

    move-result-object v2

    .line 120
    if-nez v2, :cond_18

    .line 121
    const-string v4, "PM:::Files null"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 122
    new-instance v4, Lcom/samsung/app/video/editor/external/VEVector;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/samsung/app/video/editor/external/VEVector;-><init>(I)V

    iput-object v4, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    .line 144
    :goto_17
    return-void

    .line 127
    :cond_18
    new-instance v5, Lcom/samsung/app/video/editor/external/VEVector;

    array-length v6, v2

    invoke-direct {v5, v6}, Lcom/samsung/app/video/editor/external/VEVector;-><init>(I)V

    iput-object v5, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    .line 131
    const-string v5, "List of project files"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 132
    array-length v6, v2

    move v5, v4

    :goto_27
    if-lt v5, v6, :cond_49

    .line 138
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VE::"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_44

    goto :goto_17

    .line 141
    :catch_44
    move-exception v0

    .line 142
    .local v0, exception:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 132
    .end local v0           #exception:Ljava/lang/Exception;
    :cond_49
    :try_start_49
    aget-object v1, v2, v5

    .line 134
    .local v1, fil:Ljava/io/File;
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 135
    .local v3, obj_in_stream:Ljava/io/ObjectInputStream;
    iget-object v7, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_68} :catch_44

    .line 132
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_27
.end method

.method public saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z
    .registers 3
    .parameter "transcodeElement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)Z

    move-result v0

    return v0
.end method

.method public saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)Z
    .registers 16
    .parameter "transcodeElement"
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v12, 0x7f08003a

    const/4 v6, 0x1

    const/4 v11, -0x1

    const/4 v5, 0x0

    .line 159
    const-string v7, "PM save project"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, needToSave:Z
    sget-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-nez v7, :cond_11

    .line 163
    const/4 v1, 0x1

    .line 164
    :cond_11
    sget-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-eqz v7, :cond_1e

    .line 165
    sget-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-static {p1, v7}, Lcom/sec/android/app/ve/util/Utils;->isTranscodeSame(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    move-result v7

    if-eqz v7, :cond_7d

    move v1, v5

    .line 167
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_a1

    .line 171
    :try_start_20
    invoke-virtual {p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getProjectFileName()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, project_file:Ljava/lang/String;
    if-eqz v4, :cond_b3

    .line 174
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, new_proj:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_34

    .line 177
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 179
    :cond_34
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Saving proejct :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 180
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v3, obj_out_strm:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 183
    sget-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-eqz v7, :cond_64

    .line 184
    sget-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->deleteAllClipArts()V

    .line 186
    :cond_64
    new-instance v7, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-direct {v7, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    sput-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 190
    if-eqz p2, :cond_7c

    .line 191
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-eqz v7, :cond_7f

    .line 192
    const v7, 0x7f080037

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 245
    .end local v2           #new_proj:Ljava/io/File;
    .end local v3           #obj_out_strm:Ljava/io/ObjectOutputStream;
    .end local v4           #project_file:Ljava/lang/String;
    :cond_7c
    :goto_7c
    return v6

    :cond_7d
    move v1, v6

    .line 165
    goto :goto_1e

    .line 193
    .restart local v2       #new_proj:Ljava/io/File;
    .restart local v3       #obj_out_strm:Ljava/io/ObjectOutputStream;
    .restart local v4       #project_file:Ljava/lang/String;
    :cond_7f
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v7

    if-eqz v7, :cond_a3

    .line 194
    const v7, 0x7f080037

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showToast(IIII)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_8e} :catch_8f

    goto :goto_7c

    .line 232
    .end local v2           #new_proj:Ljava/io/File;
    .end local v3           #obj_out_strm:Ljava/io/ObjectOutputStream;
    .end local v4           #project_file:Ljava/lang/String;
    :catch_8f
    move-exception v0

    .line 233
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "saving exception"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v6

    if-eqz v6, :cond_155

    .line 237
    invoke-static {v12, v11, v5, v5}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_a1
    :goto_a1
    move v6, v5

    .line 245
    goto :goto_7c

    .line 195
    .restart local v2       #new_proj:Ljava/io/File;
    .restart local v3       #obj_out_strm:Ljava/io/ObjectOutputStream;
    .restart local v4       #project_file:Ljava/lang/String;
    :cond_a3
    :try_start_a3
    invoke-static {}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getInstance()Lcom/sec/android/app/ve/activity/ThemeGallery;

    move-result-object v7

    if-eqz v7, :cond_7c

    .line 196
    const v7, 0x7f080037

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/ve/activity/ThemeGallery;->showToast(IIII)V

    goto :goto_7c

    .line 203
    .end local v2           #new_proj:Ljava/io/File;
    .end local v3           #obj_out_strm:Ljava/io/ObjectOutputStream;
    :cond_b3
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/VEFile."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 204
    const-string v8, ".vep"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .restart local v2       #new_proj:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_e4

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 208
    :cond_e4
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/samsung/app/video/editor/external/TranscodeElement;->projectFileName:Ljava/lang/String;

    .line 209
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 210
    .restart local v3       #obj_out_strm:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 213
    iget-object v7, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v7, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    sget-object v8, Lcom/sec/android/app/ve/pm/ProjectManager;->CREATE_TIME_ORDER:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 215
    const-string v7, "This is else part  : saving as new file"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 216
    sget-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    if-eqz v7, :cond_119

    .line 217
    sget-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->deleteAllClipArts()V

    .line 219
    :cond_119
    new-instance v7, Lcom/samsung/app/video/editor/external/TranscodeElement;

    invoke-direct {v7, p1}, Lcom/samsung/app/video/editor/external/TranscodeElement;-><init>(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    sput-object v7, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 222
    if-eqz p2, :cond_7c

    .line 223
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-eqz v7, :cond_133

    .line 224
    const v7, 0x7f080037

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    goto/16 :goto_7c

    .line 225
    :cond_133
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v7

    if-eqz v7, :cond_144

    .line 226
    const v7, 0x7f080037

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showToast(IIII)V

    goto/16 :goto_7c

    .line 227
    :cond_144
    invoke-static {}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getInstance()Lcom/sec/android/app/ve/activity/ThemeGallery;

    move-result-object v7

    if-eqz v7, :cond_7c

    .line 228
    const v7, 0x7f080037

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/sec/android/app/ve/activity/ThemeGallery;->showToast(IIII)V
    :try_end_153
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_153} :catch_8f

    goto/16 :goto_7c

    .line 238
    .end local v2           #new_proj:Ljava/io/File;
    .end local v3           #obj_out_strm:Ljava/io/ObjectOutputStream;
    .end local v4           #project_file:Ljava/lang/String;
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_155
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectListActivity;

    move-result-object v6

    if-eqz v6, :cond_160

    .line 239
    invoke-static {v12, v11, v5, v5}, Lcom/sec/android/app/ve/activity/ProjectListActivity;->showToast(IIII)V

    goto/16 :goto_a1

    .line 240
    :cond_160
    invoke-static {}, Lcom/sec/android/app/ve/activity/ThemeGallery;->getInstance()Lcom/sec/android/app/ve/activity/ThemeGallery;

    move-result-object v6

    if-eqz v6, :cond_a1

    .line 241
    invoke-static {v12, v11, v5, v5}, Lcom/sec/android/app/ve/activity/ThemeGallery;->showToast(IIII)V

    goto/16 :goto_a1
.end method

.method public setCloneTE(Ljava/lang/Object;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 254
    check-cast p1, Lcom/samsung/app/video/editor/external/TranscodeElement;

    .end local p1
    sput-object p1, Lcom/sec/android/app/ve/pm/ProjectManager;->cloneTE:Lcom/samsung/app/video/editor/external/TranscodeElement;

    .line 255
    return-void
.end method

.method public sortList()V
    .registers 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sec/android/app/ve/pm/ProjectManager;->mProjectList:Ljava/util/List;

    sget-object v1, Lcom/sec/android/app/ve/pm/ProjectManager;->CREATE_TIME_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 377
    return-void
.end method
