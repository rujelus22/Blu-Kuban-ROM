.class public Lcom/android/calendar/ImportExportVCalendar;
.super Ljava/lang/Object;
.source "ImportExportVCalendar.java"


# static fields
.field public static DEBUG:Z

.field private static mExternalSdCardIsFull:Z

.field private static mExternalSdCardMounted:Z

.field private static mExternalSdCardStoragePath:Ljava/lang/String;

.field private static mStorageListener:Landroid/os/storage/StorageEventListener;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private mExternalBackupDirectory:Ljava/io/File;

.field private mExternalVCalFileList:[Ljava/io/File;

.field private mFilePathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/ImportExportVCalendar;->DEBUG:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 49
    const-string v0, ""

    sput-object v0, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 50
    sput-boolean v1, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    .line 51
    sput-boolean v1, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    .line 77
    new-instance v0, Lcom/android/calendar/ImportExportVCalendar$1;

    invoke-direct {v0}, Lcom/android/calendar/ImportExportVCalendar$1;-><init>()V

    sput-object v0, Lcom/android/calendar/ImportExportVCalendar;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    .line 59
    iput-object v0, p0, Lcom/android/calendar/ImportExportVCalendar;->mTargetDirectory:Ljava/io/File;

    .line 251
    iput-object v0, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    return-void
.end method

.method public static checkStorageState(Landroid/app/Activity;)V
    .registers 15
    .parameter "activity"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 83
    const-string v8, ""

    sput-object v8, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 84
    sput-boolean v12, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    .line 85
    sput-boolean v13, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    .line 91
    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v8, :cond_1f

    .line 92
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    sput-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 93
    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v9, Lcom/android/calendar/ImportExportVCalendar;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v8, v9}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 95
    :cond_1f
    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 96
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v6

    .line 97
    .local v1, length:I
    const-string v4, ""

    .line 98
    .local v4, storagePath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    if-ge v0, v1, :cond_7a

    .line 99
    aget-object v5, v6, v0

    .line 100
    .local v5, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, subsystem:Ljava/lang/String;
    if-eqz v7, :cond_71

    .line 102
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 103
    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v8, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, state:Ljava/lang/String;
    const-string v8, "sd"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_71

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_71

    .line 105
    sput-object v4, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 106
    const-string v8, "mounted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 107
    sput-boolean v13, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    .line 112
    :goto_57
    new-instance v2, Landroid/os/StatFs;

    sget-object v8, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-direct {v2, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_77

    .line 114
    sput-boolean v12, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    .line 98
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #state:Ljava/lang/String;
    :cond_71
    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 109
    .restart local v3       #state:Ljava/lang/String;
    :cond_74
    sput-boolean v12, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    goto :goto_57

    .line 116
    .restart local v2       #stat:Landroid/os/StatFs;
    :cond_77
    sput-boolean v13, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    goto :goto_71

    .line 135
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #state:Ljava/lang/String;
    .end local v5           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v7           #subsystem:Ljava/lang/String;
    :cond_7a
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ImportExportVCalendar] checkStorageState : mExternalSdCardMounted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v8, "Calendar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[ImportExportVCalendar] checkStorageState : mExternalSdCardIsFull = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardIsFull:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method


# virtual methods
.method public getVCalFilePathList(Landroid/app/Activity;)Ljava/util/ArrayList;
    .registers 8
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-static {p1}, Lcom/android/calendar/ImportExportVCalendar;->checkStorageState(Landroid/app/Activity;)V

    .line 258
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    if-eqz v2, :cond_ab

    .line 259
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 260
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 264
    :cond_14
    :goto_14
    sget-boolean v2, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardMounted:Z

    if-eqz v2, :cond_bb

    .line 265
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    if-nez v2, :cond_38

    .line 266
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Backup/vCalendar"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    .line 269
    :cond_38
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 271
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalBackupDirectory:Ljava/io/File;

    new-instance v3, Lcom/android/calendar/ImportExportVCalendar$2;

    invoke-direct {v3, p0}, Lcom/android/calendar/ImportExportVCalendar$2;-><init>(Lcom/android/calendar/ImportExportVCalendar;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    .line 278
    :cond_5d
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    if-eqz v2, :cond_b4

    .line 279
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    array-length v1, v2

    .line 280
    .local v1, listLength:I
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    if-eqz v2, :cond_bb

    if-lez v1, :cond_bb

    .line 281
    const/4 v0, 0x0

    .local v0, cnt:I
    :goto_6b
    if-ge v0, v1, :cond_bb

    .line 283
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_82

    .line 284
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 285
    :cond_82
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/calendar/ImportExportVCalendar;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Backup/vCalendar/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/ImportExportVCalendar;->mExternalVCalFileList:[Ljava/io/File;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    .line 262
    .end local v0           #cnt:I
    .end local v1           #listLength:I
    :cond_ab
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    goto/16 :goto_14

    .line 290
    :cond_b4
    const-string v2, "Calendar"

    const-string v3, "[ImportExportVCalendar] mExternalVCalFileList = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_bb
    iget-object v2, p0, Lcom/android/calendar/ImportExportVCalendar;->mFilePathList:Ljava/util/ArrayList;

    return-object v2
.end method
