.class public Lcom/sec/android/app/FileTransferClient/Data/CPManager;
.super Ljava/lang/Object;
.source "CPManager.java"


# static fields
.field static bDeviceListRunning:Z

.field static bFTCServiceRunning:Z

.field private static mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    .line 14
    sput-boolean v1, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bDeviceListRunning:Z

    .line 15
    sput-boolean v1, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bFTCServiceRunning:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "[FT]-Client"

    const-string v1, "CPManager : created!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public static getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    if-nez v0, :cond_b

    .line 42
    const-string v0, "[FT]-Client"

    const-string v1, "CPManager : getCP : is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_b
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    return-object v0
.end method

.method public static init(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)V
    .registers 5
    .parameter "controller"

    .prologue
    .line 25
    :try_start_0
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    if-nez v1, :cond_e

    .line 27
    sput-object p0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    .line 28
    const-string v1, "[FT]-Client"

    const-string v2, "CPManager : init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_d
    return-void

    .line 30
    :cond_e
    const-string v1, "[FT]-Client"

    const-string v2, "CPManager : init : is not null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_d

    .line 33
    :catch_16
    move-exception v0

    .line 35
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPManager : set CPManager Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public static removeDataFolder(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    .line 83
    sget-boolean v6, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bDeviceListRunning:Z

    if-nez v6, :cond_8

    sget-boolean v6, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bFTCServiceRunning:Z

    if-eqz v6, :cond_9

    .line 103
    :cond_8
    :goto_8
    return-void

    .line 86
    :cond_9
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 88
    .local v2, childFileList:[Ljava/io/File;
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1d
    if-ge v4, v5, :cond_35

    aget-object v1, v0, v4

    .line 90
    .local v1, childFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_31

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 88
    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 96
    :cond_31
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2e

    .line 100
    .end local v1           #childFile:Ljava/io/File;
    :cond_35
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 102
    const-string v6, "[FT]-Client"

    const-string v7, "CPManager : removeDataFolder"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static removeEventHandler(Landroid/os/Handler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    if-nez v0, :cond_5

    .line 79
    :goto_4
    return-void

    .line 78
    :cond_5
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->removeEventHandler(Landroid/os/Handler;)V

    goto :goto_4
.end method

.method public static runningDeviceList(Z)V
    .registers 4
    .parameter "checker"

    .prologue
    .line 49
    sput-boolean p0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bDeviceListRunning:Z

    .line 50
    const-string v0, "[FT]-Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPManager : runningDeviceList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bDeviceListRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public static runningService(Z)V
    .registers 4
    .parameter "checker"

    .prologue
    .line 54
    sput-boolean p0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bFTCServiceRunning:Z

    .line 55
    const-string v0, "[FT]-Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPManager : runningService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bFTCServiceRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static stop()V
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    if-nez v0, :cond_c

    .line 61
    const-string v0, "[FT]-Client"

    const-string v1, "CPManager : stop : CP is null "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_b
    :goto_b
    return-void

    .line 65
    :cond_c
    const-string v0, "[FT]-Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CPManager : stop > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bDeviceListRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bFTCServiceRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-boolean v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bDeviceListRunning:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->bFTCServiceRunning:Z

    if-nez v0, :cond_b

    .line 68
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->stop()V

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->mFileShareControllerManager:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    goto :goto_b
.end method
