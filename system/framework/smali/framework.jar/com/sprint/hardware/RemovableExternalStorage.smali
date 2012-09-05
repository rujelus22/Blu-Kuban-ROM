.class public Lcom/sprint/hardware/RemovableExternalStorage;
.super Ljava/lang/Object;
.source "RemovableExternalStorage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemovableExtStorage"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sprint/hardware/RemovableExternalStorage;->mContext:Landroid/content/Context;

    .line 18
    const-string v0, "RemovableExtStorage"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/sprint/hardware/RemovableExternalStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/sprint/hardware/RemovableExternalStorage;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 22
    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .registers 3

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/sprint/hardware/RemovableExternalStorage;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, externalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 28
    const/4 v1, 0x0

    .line 30
    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getExternalSdCardPath()Ljava/lang/String;
    .registers 8

    .prologue
    .line 51
    iget-object v4, p0, Lcom/sprint/hardware/RemovableExternalStorage;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 52
    .local v2, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v2

    .line 54
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_63

    .line 55
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, subsystem:Ljava/lang/String;
    const-string v4, "RemovableExtStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subsystem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v3, :cond_60

    .line 59
    const-string/jumbo v4, "sd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 60
    const-string v4, "RemovableExtStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 65
    .end local v3           #subsystem:Ljava/lang/String;
    :goto_5f
    return-object v4

    .line 54
    .restart local v3       #subsystem:Ljava/lang/String;
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 65
    .end local v3           #subsystem:Ljava/lang/String;
    :cond_63
    const/4 v4, 0x0

    goto :goto_5f
.end method

.method public getPublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "type"

    .prologue
    .line 34
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/sprint/hardware/RemovableExternalStorage;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 5

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sprint/hardware/RemovableExternalStorage;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, externalSdCardPath:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 41
    const/4 v1, 0x0

    .line 46
    :goto_7
    return-object v1

    .line 44
    :cond_8
    const-string v1, "RemovableExtStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/hardware/RemovableExternalStorage;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/sprint/hardware/RemovableExternalStorage;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method
