.class public Lcom/samsung/swift/service/Installer;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFER_SIZE:I = 0x19000

.field public static DOWNLOADTIMEOUT:I = 0x0

.field private static final EXECUTABLES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALLER_EXTRA_FILE:Ljava/lang/String; = "file"

.field public static final INSTALLER_EXTRA_PROGRESS:Ljava/lang/String; = "progress"

.field public static final INSTALLER_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final PRODUCTION_MASK:I = 0x1b0

.field public static final STATE_COMPLETE:I = 0x6

.field public static final STATE_CONFIGURE:I = 0x3

.field public static final STATE_COPY:I = 0x2

.field public static final STATE_ERROR:I = 0x5

.field public static final STATE_EVENT:Ljava/lang/String; = null

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_INIT_DOWNLOAD:I = 0x1

.field public static final STATE_ROLLBACK:I = 0x4

.field private static final WORLD_MASK:I = 0x1b6

.field private static final ZIP_DOWNLOAD_URL:Ljava/lang/String; = "http://81.143.161.177/webphone/swift.package.zip"

.field private static final ZIP_IN_SYSTEM:Ljava/io/File;

.field private static final ZIP_LOCAL:Ljava/io/File;

.field private static final ZIP_PRELOAD:Ljava/io/File;


# instance fields
.field private installProgress:S

.field private installedFile:Ljava/lang/String;

.field private state:I

.field private world:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 121
    const-class v0, Lcom/samsung/swift/service/Installer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/swift.package.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    .line 123
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/swift.preload.package.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/swift/service/Installer;->ZIP_PRELOAD:Ljava/io/File;

    .line 124
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/KiesAir/swift.package.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/swift/service/Installer;->ZIP_IN_SYSTEM:Ljava/io/File;

    .line 127
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fastcgicontainer"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lighttpd"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "plugintester"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ffmpeg"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/Installer;->EXECUTABLES:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/swift/service/Installer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/STATECHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/swift/service/Installer;->STATE_EVENT:Ljava/lang/String;

    .line 151
    const/16 v0, 0x2710

    sput v0, Lcom/samsung/swift/service/Installer;->DOWNLOADTIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean v0, p0, Lcom/samsung/swift/service/Installer;->world:Z

    .line 161
    invoke-static {}, Lcom/samsung/swift/service/Installer;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x6

    :cond_d
    iput v0, p0, Lcom/samsung/swift/service/Installer;->state:I

    .line 162
    return-void
.end method

.method private static deleteFilesDirContents()V
    .registers 7

    .prologue
    .line 226
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 228
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 229
    .local v1, contents:[Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_19

    aget-object v3, v0, v4

    .line 231
    .local v3, f:Ljava/io/File;
    invoke-static {v3}, Lcom/samsung/swift/service/Installer;->deleteRecursively(Ljava/io/File;)V

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 233
    .end local v3           #f:Ljava/io/File;
    :cond_19
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 7
    .parameter "file"

    .prologue
    .line 237
    if-nez p0, :cond_3

    .line 252
    :goto_2
    return-void

    .line 240
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_d

    .line 242
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 246
    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 247
    .local v1, contents:[Ljava/io/File;
    move-object v0, v1

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_14
    if-ge v3, v4, :cond_1e

    aget-object v2, v0, v3

    .line 249
    .local v2, f:Ljava/io/File;
    invoke-static {v2}, Lcom/samsung/swift/service/Installer;->deleteRecursively(Ljava/io/File;)V

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 251
    .end local v2           #f:Ljava/io/File;
    :cond_1e
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method private static getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .registers 2
    .parameter "file"

    .prologue
    .line 334
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getFilesDir()Ljava/io/File;
    .registers 2

    .prologue
    .line 329
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getInstallFileVersionNumber()I
    .registers 10

    .prologue
    .line 274
    const/4 v6, 0x0

    .line 275
    .local v6, installFileVersion:I
    const/4 v5, 0x0

    .line 276
    .local v5, installFileStream:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 277
    .local v3, inputReader:Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 280
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    :try_start_4
    invoke-static {}, Lcom/samsung/swift/service/Installer;->installFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/swift/service/Installer;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    .line 281
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_15} :catch_53

    .line 282
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .local v4, inputReader:Ljava/io/InputStreamReader;
    :try_start_15
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_55

    .line 284
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .local v1, bufferedReader:Ljava/io/BufferedReader;
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 285
    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_24

    .line 286
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_36
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_23} :catch_3f

    move-result v6

    .end local v7           #line:Ljava/lang/String;
    :cond_24
    :goto_24
    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 300
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    :goto_26
    if-eqz v5, :cond_2b

    .line 301
    :try_start_28
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 303
    :cond_2b
    if-eqz v3, :cond_30

    .line 304
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 306
    :cond_30
    if-eqz v0, :cond_35

    .line 307
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_4a

    .line 314
    :cond_35
    :goto_35
    return v6

    .line 288
    .end local v0           #bufferedReader:Ljava/io/BufferedReader;
    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v1       #bufferedReader:Ljava/io/BufferedReader;
    .restart local v4       #inputReader:Ljava/io/InputStreamReader;
    :catch_36
    move-exception v2

    .line 290
    .local v2, e:Ljava/io/IOException;
    :try_start_37
    sget-object v8, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v9, "IOException reading install file."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_3e} :catch_3f

    goto :goto_24

    .line 293
    .end local v2           #e:Ljava/io/IOException;
    :catch_3f
    move-exception v2

    move-object v0, v1

    .end local v1           #bufferedReader:Ljava/io/BufferedReader;
    .restart local v0       #bufferedReader:Ljava/io/BufferedReader;
    move-object v3, v4

    .line 295
    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .local v2, e:Ljava/io/FileNotFoundException;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    :goto_42
    sget-object v8, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v9, "FileNotFoundException reading install file."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 309
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_4a
    move-exception v2

    .line 311
    .local v2, e:Ljava/io/IOException;
    sget-object v8, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v9, "IOException closing file."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 293
    .end local v2           #e:Ljava/io/IOException;
    :catch_53
    move-exception v2

    goto :goto_42

    .end local v3           #inputReader:Ljava/io/InputStreamReader;
    .restart local v4       #inputReader:Ljava/io/InputStreamReader;
    :catch_55
    move-exception v2

    move-object v3, v4

    .end local v4           #inputReader:Ljava/io/InputStreamReader;
    .restart local v3       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_42
.end method

.method private static getPackageVersionNumber()I
    .registers 8

    .prologue
    .line 257
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 258
    .local v0, c:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, packageName:Ljava/lang/String;
    :try_start_8
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 261
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 262
    .local v4, versionCode:I
    sget-object v5, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageVersionNumber: Android versionCode == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_2c} :catch_2d

    .line 268
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v4           #versionCode:I
    :goto_2c
    return v4

    .line 265
    :catch_2d
    move-exception v1

    .line 267
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v5, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageVersionNumber: NameNotFoundException retrieving package info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v4, 0x0

    goto :goto_2c
.end method

.method private getPermissionsExecutableMask()I
    .registers 3

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/samsung/swift/service/Installer;->getPermissionsMask()I

    move-result v0

    add-int/lit8 v1, v0, 0x48

    iget-boolean v0, p0, Lcom/samsung/swift/service/Installer;->world:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_b
    add-int/2addr v0, v1

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private getPermissionsMask()I
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/samsung/swift/service/Installer;->world:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x1b6

    :goto_6
    return v0

    :cond_7
    const/16 v0, 0x1b0

    goto :goto_6
.end method

.method private static installFile()Ljava/io/File;
    .registers 1

    .prologue
    .line 201
    const-string v0, "installed"

    invoke-static {v0}, Lcom/samsung/swift/service/Installer;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isInstalled()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-static {}, Lcom/samsung/swift/service/Installer;->installFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c

    .line 220
    .local v0, installFileVersion:I
    .local v1, packageVersion:I
    :goto_b
    return v2

    .line 209
    .end local v0           #installFileVersion:I
    .end local v1           #packageVersion:I
    :cond_c
    invoke-static {}, Lcom/samsung/swift/service/Installer;->getPackageVersionNumber()I

    move-result v1

    .line 210
    .restart local v1       #packageVersion:I
    invoke-static {}, Lcom/samsung/swift/service/Installer;->getInstallFileVersionNumber()I

    move-result v0

    .line 212
    .restart local v0       #installFileVersion:I
    sget-object v3, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isInstalled: packageVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " installFileVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eq v1, v0, :cond_3c

    .line 216
    invoke-static {}, Lcom/samsung/swift/service/Installer;->deleteFilesDirContents()V

    goto :goto_b

    .line 220
    :cond_3c
    const/4 v2, 0x1

    goto :goto_b
.end method

.method private static openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    .registers 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method

.method private openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .registers 4
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized setProgress(S)V
    .registers 3
    .parameter "installProgress"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    iput-short p1, p0, Lcom/samsung/swift/service/Installer;->installProgress:S
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setState(I)V
    .registers 3
    .parameter "state"

    .prologue
    .line 323
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/samsung/swift/service/Installer;->state:I

    .line 324
    invoke-virtual {p0}, Lcom/samsung/swift/service/Installer;->fireBroadcast()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 325
    monitor-exit p0

    return-void

    .line 323
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized fireBroadcast()V
    .registers 4

    .prologue
    .line 349
    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/swift/service/Installer;->STATE_EVENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    iget v2, p0, Lcom/samsung/swift/service/Installer;->state:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 351
    const-string v1, "file"

    iget-object v2, p0, Lcom/samsung/swift/service/Installer;->installedFile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    const-string v1, "progress"

    iget-short v2, p0, Lcom/samsung/swift/service/Installer;->installProgress:S

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    .line 353
    invoke-static {}, Lcom/samsung/swift/service/SwiftService;->instance()Lcom/samsung/swift/service/SwiftService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/swift/service/SwiftService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 354
    monitor-exit p0

    return-void

    .line 349
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getInstalledFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/samsung/swift/service/Installer;->installedFile:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2

    .prologue
    .line 181
    monitor-enter p0

    :try_start_1
    iget-short v0, p0, Lcom/samsung/swift/service/Installer;->installProgress:S
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 318
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/samsung/swift/service/Installer;->state:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isWorld()Z
    .registers 2

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/swift/service/Installer;->world:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 43

    .prologue
    .line 360
    sget v38, Lcom/samsung/swift/R$string;->manufacturer:I

    invoke-static/range {v38 .. v38}, Lcom/samsung/swift/Swift;->getString(I)Ljava/lang/CharSequence;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    .line 361
    .local v21, manufacturer:Ljava/lang/String;
    const/16 v20, 0x0

    .line 364
    .local v20, isSamsung:Z
    sget-object v38, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_2e

    sget-object v38, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_10d

    :cond_2e
    const/16 v20, 0x1

    .line 367
    :goto_30
    sget-boolean v38, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v38, :cond_36

    if-eqz v20, :cond_10c

    .line 371
    :cond_36
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    const-string v39, "power"

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/PowerManager;

    const/16 v39, 0x1

    const-string v40, "swift CPU"

    invoke-virtual/range {v38 .. v40}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v33

    .line 372
    .local v33, wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 373
    const-wide/16 v30, -0x1

    .line 377
    .local v30, totalSize:J
    const/16 v34, 0x0

    .line 378
    .local v34, zin:Ljava/util/zip/ZipInputStream;
    const/16 v37, 0x1

    .line 379
    .local v37, zipInAPK:Z
    const/16 v38, 0x1

    :try_start_55
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V

    .line 380
    const/16 v32, 0x0

    .line 382
    .local v32, url:Ljava/net/URL;
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Checking if internal zipfile exists..."

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_127

    .line 384
    :try_start_65
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 385
    .local v24, resources:Landroid/content/res/Resources;
    const-string v38, "swiftzip"

    const-string v39, "raw"

    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 386
    .local v4, ZIP_INTERNAL:I
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Resource id: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    .line 388
    .local v5, afd:Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v30

    .line 389
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 390
    new-instance v35, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_bb
    .catchall {:try_start_65 .. :try_end_bb} :catchall_127
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_65 .. :try_end_bb} :catch_111
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_bb} :catch_11e

    .line 391
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .local v35, zin:Ljava/util/zip/ZipInputStream;
    :try_start_bb
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Installing from internal zipfile"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_bb .. :try_end_c2} :catchall_13c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_bb .. :try_end_c2} :catch_619
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c2} :catch_614

    .line 404
    .end local v4           #ZIP_INTERNAL:I
    .end local v5           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v24           #resources:Landroid/content/res/Resources;
    :goto_c2
    :try_start_c2
    sget-boolean v38, Lcom/samsung/swift/applet/AppletActivity;->useDeveloperMode:Z

    if-nez v38, :cond_1af

    .line 406
    if-nez v37, :cond_f5

    .line 408
    sget-object v38, Lcom/samsung/swift/service/Installer;->ZIP_PRELOAD:Ljava/io/File;

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_140

    .line 411
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Using preload overide zipfile on SD card"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catchall {:try_start_c2 .. :try_end_d7} :catchall_13c

    .line 413
    :try_start_d7
    new-instance v32, Ljava/net/URL;

    .end local v32           #url:Ljava/net/URL;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "file://"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Lcom/samsung/swift/service/Installer;->ZIP_PRELOAD:Ljava/io/File;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_d7 .. :try_end_f5} :catchall_13c
    .catch Ljava/net/MalformedURLException; {:try_start_d7 .. :try_end_f5} :catch_133

    .line 452
    .restart local v32       #url:Ljava/net/URL;
    :cond_f5
    :goto_f5
    if-nez v35, :cond_1e7

    if-nez v32, :cond_1e7

    .line 455
    const/16 v38, 0x5

    :try_start_fb
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V
    :try_end_102
    .catchall {:try_start_fb .. :try_end_102} :catchall_13c

    .line 623
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Release wake lock"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 627
    .end local v30           #totalSize:J
    .end local v32           #url:Ljava/net/URL;
    .end local v33           #wakeLock:Landroid/os/PowerManager$WakeLock;
    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .end local v37           #zipInAPK:Z
    :cond_10c
    :goto_10c
    return-void

    .line 364
    :cond_10d
    const/16 v20, 0x0

    goto/16 :goto_30

    .line 393
    .restart local v30       #totalSize:J
    .restart local v32       #url:Ljava/net/URL;
    .restart local v33       #wakeLock:Landroid/os/PowerManager$WakeLock;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    .restart local v37       #zipInAPK:Z
    :catch_111
    move-exception v13

    .line 396
    .local v13, e:Landroid/content/res/Resources$NotFoundException;
    :goto_112
    :try_start_112
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "No internal zipfile present"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v37, 0x0

    move-object/from16 v35, v34

    .line 402
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_c2

    .line 399
    .end local v13           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    :catch_11e
    move-exception v13

    .line 401
    .local v13, e:Ljava/io/IOException;
    :goto_11f
    new-instance v38, Ljava/lang/AssertionError;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v38
    :try_end_127
    .catchall {:try_start_112 .. :try_end_127} :catchall_127

    .line 623
    .end local v13           #e:Ljava/io/IOException;
    .end local v32           #url:Ljava/net/URL;
    :catchall_127
    move-exception v38

    :goto_128
    sget-object v39, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v40, "Release wake lock"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 623
    throw v38

    .line 414
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    :catch_133
    move-exception v13

    .line 415
    .local v13, e:Ljava/net/MalformedURLException;
    :try_start_134
    new-instance v38, Ljava/lang/AssertionError;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v38

    .line 623
    .end local v13           #e:Ljava/net/MalformedURLException;
    :catchall_13c
    move-exception v38

    move-object/from16 v34, v35

    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    goto :goto_128

    .line 418
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v32       #url:Ljava/net/URL;
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    :cond_140
    sget-object v38, Lcom/samsung/swift/service/Installer;->ZIP_IN_SYSTEM:Ljava/io/File;

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_177

    .line 420
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Local zipfile exists , installing from zipfile in System folder"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catchall {:try_start_134 .. :try_end_14f} :catchall_13c

    .line 422
    :try_start_14f
    new-instance v32, Ljava/net/URL;

    .end local v32           #url:Ljava/net/URL;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "file://"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Lcom/samsung/swift/service/Installer;->ZIP_IN_SYSTEM:Ljava/io/File;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_16d
    .catchall {:try_start_14f .. :try_end_16d} :catchall_13c
    .catch Ljava/net/MalformedURLException; {:try_start_14f .. :try_end_16d} :catch_16e

    .restart local v32       #url:Ljava/net/URL;
    goto :goto_f5

    .line 423
    .end local v32           #url:Ljava/net/URL;
    :catch_16e
    move-exception v13

    .line 424
    .restart local v13       #e:Ljava/net/MalformedURLException;
    :try_start_16f
    new-instance v38, Ljava/lang/AssertionError;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v38

    .line 427
    .end local v13           #e:Ljava/net/MalformedURLException;
    .restart local v32       #url:Ljava/net/URL;
    :cond_177
    sget-object v38, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_f5

    .line 429
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Local zipfile exists, installing from zipfile on SD card"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catchall {:try_start_16f .. :try_end_186} :catchall_13c

    .line 431
    :try_start_186
    new-instance v32, Ljava/net/URL;

    .end local v32           #url:Ljava/net/URL;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "file://"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1a4
    .catchall {:try_start_186 .. :try_end_1a4} :catchall_13c
    .catch Ljava/net/MalformedURLException; {:try_start_186 .. :try_end_1a4} :catch_1a6

    .restart local v32       #url:Ljava/net/URL;
    goto/16 :goto_f5

    .line 432
    .end local v32           #url:Ljava/net/URL;
    :catch_1a6
    move-exception v13

    .line 433
    .restart local v13       #e:Ljava/net/MalformedURLException;
    :try_start_1a7
    new-instance v38, Ljava/lang/AssertionError;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v38

    .line 440
    .end local v13           #e:Ljava/net/MalformedURLException;
    .restart local v32       #url:Ljava/net/URL;
    :cond_1af
    sget-object v38, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_f5

    .line 442
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Local zipfile exists, installing from the zipfile on THE SD card"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1be
    .catchall {:try_start_1a7 .. :try_end_1be} :catchall_13c

    .line 444
    :try_start_1be
    new-instance v32, Ljava/net/URL;

    .end local v32           #url:Ljava/net/URL;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "file://"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1be .. :try_end_1dc} :catchall_13c
    .catch Ljava/net/MalformedURLException; {:try_start_1be .. :try_end_1dc} :catch_1de

    .restart local v32       #url:Ljava/net/URL;
    goto/16 :goto_f5

    .line 445
    .end local v32           #url:Ljava/net/URL;
    :catch_1de
    move-exception v13

    .line 446
    .restart local v13       #e:Ljava/net/MalformedURLException;
    :try_start_1df
    new-instance v38, Ljava/lang/AssertionError;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v38

    .line 459
    .end local v13           #e:Ljava/net/MalformedURLException;
    .restart local v32       #url:Ljava/net/URL;
    :cond_1e7
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V
    :try_end_1ec
    .catchall {:try_start_1df .. :try_end_1ec} :catchall_13c

    .line 460
    .local v16, files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v10, 0x0

    .line 464
    .local v10, bytesReadTotal:J
    if-eqz v32, :cond_61e

    .line 466
    :try_start_1f0
    invoke-virtual/range {v32 .. v32}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    .line 467
    .local v17, huc:Ljava/net/URLConnection;
    sget v38, Lcom/samsung/swift/service/Installer;->DOWNLOADTIMEOUT:I

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 468
    sget v38, Lcom/samsung/swift/service/Installer;->DOWNLOADTIMEOUT:I

    move-object/from16 v0, v17

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 469
    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getContentLength()I

    move-result v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v30, v0

    .line 470
    const-wide/16 v38, -0x1

    cmp-long v38, v30, v38

    if-nez v38, :cond_272

    .line 473
    const/16 v38, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V
    :try_end_21e
    .catchall {:try_start_1f0 .. :try_end_21e} :catchall_60a
    .catch Ljava/lang/Throwable; {:try_start_1f0 .. :try_end_21e} :catch_60f

    .line 600
    const/16 v38, 0x0

    :try_start_220
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/swift/service/Installer;->installedFile:Ljava/lang/String;

    .line 601
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_602

    .line 603
    const/16 v38, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V

    .line 604
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 605
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_23c
    :goto_23c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_602

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    .line 607
    .local v14, file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_23c

    .line 612
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v38

    sub-long v10, v10, v38

    .line 613
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 614
    const-wide/16 v38, 0x64

    mul-long v38, v38, v10

    div-long v38, v38, v30

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-short v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setProgress(S)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->fireBroadcast()V
    :try_end_271
    .catchall {:try_start_220 .. :try_end_271} :catchall_13c

    goto :goto_23c

    .line 477
    .end local v14           #file:Ljava/io/File;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_272
    :try_start_272
    new-instance v34, Ljava/util/zip/ZipInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v38

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27f
    .catchall {:try_start_272 .. :try_end_27f} :catchall_60a
    .catch Ljava/lang/Throwable; {:try_start_272 .. :try_end_27f} :catch_60f

    .line 479
    .end local v17           #huc:Ljava/net/URLConnection;
    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    :goto_27f
    const/16 v36, 0x0

    .line 480
    .local v36, zipEntry:Ljava/util/zip/ZipEntry;
    :try_start_281
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v39, Ljava/util/Date;

    invoke-direct/range {v39 .. v39}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v39 .. v39}, Ljava/util/Date;->getTime()J

    move-result-wide v39

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "_"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 482
    .local v27, tempNamePrefix:Ljava/lang/String;
    const/16 v38, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V

    .line 485
    new-instance v28, Ljava/io/File;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getFilesDir()Ljava/io/File;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/tmp"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v28, tmp:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->mkdir()Z

    .line 487
    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getPermissionsExecutableMask()I

    move-result v38

    move-object/from16 v0, v28

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/samsung/swift/util/LinuxIO;->chmod(Ljava/io/File;I)I

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getFilesDir()Ljava/io/File;

    move-result-object v38

    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getPermissionsExecutableMask()I

    move-result v39

    invoke-static/range {v38 .. v39}, Lcom/samsung/swift/util/LinuxIO;->chmod(Ljava/io/File;I)I

    .line 493
    const/16 v22, 0x0

    .local v22, n:I
    :goto_2ec
    invoke-virtual/range {v34 .. v34}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v36

    if-eqz v36, :cond_4de

    .line 496
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    move-result-wide v38

    sub-long v30, v30, v38

    .line 497
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v38

    add-long v30, v30, v38

    .line 498
    new-instance v12, Ljava/io/File;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getFilesDir()Ljava/io/File;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-object v39, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .local v12, dest:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/samsung/swift/service/Installer;->setInstalledFile(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->fireBroadcast()V

    .line 503
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v38

    if-eqz v38, :cond_34f

    .line 505
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 506
    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getPermissionsExecutableMask()I

    move-result v38

    move/from16 v0, v38

    invoke-static {v12, v0}, Lcom/samsung/swift/util/LinuxIO;->chmod(Ljava/io/File;I)I

    .line 507
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    :goto_349
    invoke-virtual/range {v34 .. v34}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 493
    add-int/lit8 v22, v22, 0x1

    goto :goto_2ec

    .line 513
    :cond_34f
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 514
    .local v15, fileInZip:Ljava/io/File;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 516
    .local v26, tempName:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Lcom/samsung/swift/service/Installer;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    .line 517
    .local v25, src:Ljava/io/File;
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/samsung/swift/service/Installer;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_382
    .catchall {:try_start_281 .. :try_end_382} :catchall_47d
    .catch Ljava/lang/Throwable; {:try_start_281 .. :try_end_382} :catch_3ed

    move-result-object v23

    .line 521
    .local v23, os:Ljava/io/FileOutputStream;
    const v38, 0x19000

    :try_start_386
    move/from16 v0, v38

    new-array v7, v0, [B

    .line 522
    .local v7, buf:[B
    const/4 v9, 0x0

    .line 523
    .local v9, bytesReadFile:I
    :goto_38b
    int-to-long v0, v9

    move-wide/from16 v38, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v40

    cmp-long v38, v38, v40

    if-gez v38, :cond_44e

    .line 524
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v38

    int-to-long v0, v9

    move-wide/from16 v40, v0

    sub-long v38, v38, v40

    array-length v0, v7

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v29, v0

    .line 525
    .local v29, toRead:I
    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v38

    move/from16 v2, v29

    invoke-virtual {v0, v7, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v8

    .line 526
    .local v8, bytesRead:I
    const/16 v38, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v38

    invoke-virtual {v0, v7, v1, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 527
    int-to-long v0, v8

    move-wide/from16 v38, v0

    add-long v10, v10, v38

    .line 528
    add-int/2addr v9, v8

    .line 529
    const-wide/16 v38, 0x64

    mul-long v38, v38, v10

    div-long v38, v38, v30

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-short v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setProgress(S)V
    :try_end_3e2
    .catchall {:try_start_386 .. :try_end_3e2} :catchall_3e8
    .catch Ljava/io/IOException; {:try_start_386 .. :try_end_3e2} :catch_3e3

    goto :goto_38b

    .line 548
    .end local v7           #buf:[B
    .end local v8           #bytesRead:I
    .end local v9           #bytesReadFile:I
    .end local v29           #toRead:I
    :catch_3e3
    move-exception v13

    .line 551
    .local v13, e:Ljava/io/IOException;
    :try_start_3e4
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    .line 552
    throw v13
    :try_end_3e8
    .catchall {:try_start_3e4 .. :try_end_3e8} :catchall_3e8

    .line 556
    .end local v13           #e:Ljava/io/IOException;
    :catchall_3e8
    move-exception v38

    :try_start_3e9
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V

    throw v38
    :try_end_3ed
    .catchall {:try_start_3e9 .. :try_end_3ed} :catchall_47d
    .catch Ljava/lang/Throwable; {:try_start_3e9 .. :try_end_3ed} :catch_3ed

    .line 593
    .end local v12           #dest:Ljava/io/File;
    .end local v15           #fileInZip:Ljava/io/File;
    .end local v22           #n:I
    .end local v23           #os:Ljava/io/FileOutputStream;
    .end local v25           #src:Ljava/io/File;
    .end local v26           #tempName:Ljava/lang/String;
    .end local v27           #tempNamePrefix:Ljava/lang/String;
    .end local v28           #tmp:Ljava/io/File;
    :catch_3ed
    move-exception v13

    .line 595
    .end local v36           #zipEntry:Ljava/util/zip/ZipEntry;
    .local v13, e:Ljava/lang/Throwable;
    :goto_3ee
    :try_start_3ee
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 596
    const/16 v38, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V
    :try_end_3fa
    .catchall {:try_start_3ee .. :try_end_3fa} :catchall_47d

    .line 600
    const/16 v38, 0x0

    :try_start_3fc
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/swift/service/Installer;->installedFile:Ljava/lang/String;

    .line 601
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_5f6

    .line 603
    const/16 v38, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V

    .line 604
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 605
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_418
    :goto_418
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_5f6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    .line 607
    .restart local v14       #file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_418

    .line 612
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v38

    sub-long v10, v10, v38

    .line 613
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 614
    const-wide/16 v38, 0x64

    mul-long v38, v38, v10

    div-long v38, v38, v30

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-short v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setProgress(S)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->fireBroadcast()V
    :try_end_44d
    .catchall {:try_start_3fc .. :try_end_44d} :catchall_127

    goto :goto_418

    .line 531
    .end local v13           #e:Ljava/lang/Throwable;
    .end local v14           #file:Ljava/io/File;
    .end local v18           #i$:Ljava/util/Iterator;
    .restart local v7       #buf:[B
    .restart local v9       #bytesReadFile:I
    .restart local v12       #dest:Ljava/io/File;
    .restart local v15       #fileInZip:Ljava/io/File;
    .restart local v22       #n:I
    .restart local v23       #os:Ljava/io/FileOutputStream;
    .restart local v25       #src:Ljava/io/File;
    .restart local v26       #tempName:Ljava/lang/String;
    .restart local v27       #tempNamePrefix:Ljava/lang/String;
    .restart local v28       #tmp:Ljava/io/File;
    .restart local v36       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_44e
    :try_start_44e
    sget-object v38, Lcom/samsung/swift/service/Installer;->EXECUTABLES:Ljava/util/List;

    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v39

    invoke-interface/range {v38 .. v39}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_4d2

    .line 533
    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getPermissionsExecutableMask()I

    move-result v38

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/samsung/swift/util/LinuxIO;->chmod(Ljava/io/File;I)I

    .line 541
    :goto_465
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_46e

    .line 543
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 545
    :cond_46e
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 546
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_478
    .catchall {:try_start_44e .. :try_end_478} :catchall_3e8
    .catch Ljava/io/IOException; {:try_start_44e .. :try_end_478} :catch_3e3

    .line 556
    :try_start_478
    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_47b
    .catchall {:try_start_478 .. :try_end_47b} :catchall_47d
    .catch Ljava/lang/Throwable; {:try_start_478 .. :try_end_47b} :catch_3ed

    goto/16 :goto_349

    .line 600
    .end local v7           #buf:[B
    .end local v9           #bytesReadFile:I
    .end local v12           #dest:Ljava/io/File;
    .end local v15           #fileInZip:Ljava/io/File;
    .end local v22           #n:I
    .end local v23           #os:Ljava/io/FileOutputStream;
    .end local v25           #src:Ljava/io/File;
    .end local v26           #tempName:Ljava/lang/String;
    .end local v27           #tempNamePrefix:Ljava/lang/String;
    .end local v28           #tmp:Ljava/io/File;
    .end local v36           #zipEntry:Ljava/util/zip/ZipEntry;
    :catchall_47d
    move-exception v38

    :goto_47e
    const/16 v39, 0x0

    :try_start_480
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/swift/service/Installer;->installedFile:Ljava/lang/String;

    .line 601
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v39

    if-nez v39, :cond_5f5

    .line 603
    const/16 v39, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V

    .line 604
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 605
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_49c
    :goto_49c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_5f5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    .line 607
    .restart local v14       #file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v39

    if-eqz v39, :cond_49c

    .line 612
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v39

    sub-long v10, v10, v39

    .line 613
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 614
    const-wide/16 v39, 0x64

    mul-long v39, v39, v10

    div-long v39, v39, v30

    move-wide/from16 v0, v39

    long-to-int v0, v0

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-short v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setProgress(S)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->fireBroadcast()V
    :try_end_4d1
    .catchall {:try_start_480 .. :try_end_4d1} :catchall_127

    goto :goto_49c

    .line 537
    .end local v14           #file:Ljava/io/File;
    .end local v18           #i$:Ljava/util/Iterator;
    .restart local v7       #buf:[B
    .restart local v9       #bytesReadFile:I
    .restart local v12       #dest:Ljava/io/File;
    .restart local v15       #fileInZip:Ljava/io/File;
    .restart local v22       #n:I
    .restart local v23       #os:Ljava/io/FileOutputStream;
    .restart local v25       #src:Ljava/io/File;
    .restart local v26       #tempName:Ljava/lang/String;
    .restart local v27       #tempNamePrefix:Ljava/lang/String;
    .restart local v28       #tmp:Ljava/io/File;
    .restart local v36       #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_4d2
    :try_start_4d2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getPermissionsMask()I

    move-result v38

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/samsung/swift/util/LinuxIO;->chmod(Ljava/io/File;I)I
    :try_end_4dd
    .catchall {:try_start_4d2 .. :try_end_4dd} :catchall_3e8
    .catch Ljava/io/IOException; {:try_start_4d2 .. :try_end_4dd} :catch_3e3

    goto :goto_465

    .line 561
    .end local v7           #buf:[B
    .end local v9           #bytesReadFile:I
    .end local v12           #dest:Ljava/io/File;
    .end local v15           #fileInZip:Ljava/io/File;
    .end local v23           #os:Ljava/io/FileOutputStream;
    .end local v25           #src:Ljava/io/File;
    .end local v26           #tempName:Ljava/lang/String;
    :cond_4de
    const/16 v38, 0x3

    :try_start_4e0
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V

    .line 563
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 565
    invoke-static {}, Lcom/samsung/swift/service/Installer;->installFile()Ljava/io/File;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/samsung/swift/service/Installer;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v19

    .line 567
    .local v19, installFileStream:Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/samsung/swift/service/Installer;->getPackageVersionNumber()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->getBytes()[B

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 568
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V

    .line 569
    invoke-static {}, Lcom/samsung/swift/service/Installer;->installFile()Ljava/io/File;

    move-result-object v38

    invoke-direct/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->getPermissionsMask()I

    move-result v39

    invoke-static/range {v38 .. v39}, Lcom/samsung/swift/util/LinuxIO;->chmod(Ljava/io/File;I)I

    .line 572
    sget-object v38, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_534

    sget-object v38, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-eqz v38, :cond_534

    .line 574
    sget-object v38, Lcom/samsung/swift/service/Installer;->ZIP_LOCAL:Ljava/io/File;

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->delete()Z

    .line 578
    :cond_534
    invoke-static {}, Lcom/samsung/swift/Swift;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 579
    .local v6, appContext:Landroid/content/Context;
    invoke-static {}, Lcom/samsung/swift/Swift;->isTelephonySupported()Z

    move-result v38

    if-nez v38, :cond_5db

    .line 581
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Non-telephony device detected, disabling calls, ringtones, messaging"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    const-string v39, "ringtonesPortlet"

    const/16 v40, 0x1

    invoke-interface/range {v38 .. v40}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 583
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    const-string v39, "messagesPortlet"

    const/16 v40, 0x1

    invoke-interface/range {v38 .. v40}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 584
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    const-string v39, "callsPortlet"

    const/16 v40, 0x1

    invoke-interface/range {v38 .. v40}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 591
    :cond_57e
    :goto_57e
    const/16 v38, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V
    :try_end_587
    .catchall {:try_start_4e0 .. :try_end_587} :catchall_47d
    .catch Ljava/lang/Throwable; {:try_start_4e0 .. :try_end_587} :catch_3ed

    .line 600
    const/16 v38, 0x0

    :try_start_589
    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/swift/service/Installer;->installedFile:Ljava/lang/String;

    .line 601
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_5f6

    .line 603
    const/16 v38, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setState(I)V

    .line 604
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 605
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18       #i$:Ljava/util/Iterator;
    :cond_5a5
    :goto_5a5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_5f6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    .line 607
    .restart local v14       #file:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_5a5

    .line 612
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v38

    sub-long v10, v10, v38

    .line 613
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 614
    const-wide/16 v38, 0x64

    mul-long v38, v38, v10

    div-long v38, v38, v30

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-short v0, v0

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/swift/service/Installer;->setProgress(S)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/swift/service/Installer;->fireBroadcast()V
    :try_end_5da
    .catchall {:try_start_589 .. :try_end_5da} :catchall_127

    goto :goto_5a5

    .line 587
    .end local v14           #file:Ljava/io/File;
    .end local v18           #i$:Ljava/util/Iterator;
    :cond_5db
    :try_start_5db
    invoke-static {}, Lcom/samsung/swift/Swift;->isMessagingSupported()Z

    move-result v38

    if-nez v38, :cond_57e

    .line 588
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    const-string v39, "messagesPortlet"

    const/16 v40, 0x1

    invoke-interface/range {v38 .. v40}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5f4
    .catchall {:try_start_5db .. :try_end_5f4} :catchall_47d
    .catch Ljava/lang/Throwable; {:try_start_5db .. :try_end_5f4} :catch_3ed

    goto :goto_57e

    .line 600
    .end local v6           #appContext:Landroid/content/Context;
    .end local v19           #installFileStream:Ljava/io/FileOutputStream;
    .end local v22           #n:I
    .end local v27           #tempNamePrefix:Ljava/lang/String;
    .end local v28           #tmp:Ljava/io/File;
    .end local v36           #zipEntry:Ljava/util/zip/ZipEntry;
    :cond_5f5
    :try_start_5f5
    throw v38
    :try_end_5f6
    .catchall {:try_start_5f5 .. :try_end_5f6} :catchall_127

    .line 623
    :cond_5f6
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Release wake lock"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    :goto_5fd
    invoke-virtual/range {v33 .. v33}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_10c

    .line 623
    .restart local v17       #huc:Ljava/net/URLConnection;
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    :cond_602
    sget-object v38, Lcom/samsung/swift/service/Installer;->LOGTAG:Ljava/lang/String;

    const-string v39, "Release wake lock"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5fd

    .line 600
    .end local v17           #huc:Ljava/net/URLConnection;
    :catchall_60a
    move-exception v38

    move-object/from16 v34, v35

    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_47e

    .line 593
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    :catch_60f
    move-exception v13

    move-object/from16 v34, v35

    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_3ee

    .line 399
    .end local v10           #bytesReadTotal:J
    .end local v16           #files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v4       #ZIP_INTERNAL:I
    .restart local v5       #afd:Landroid/content/res/AssetFileDescriptor;
    .restart local v24       #resources:Landroid/content/res/Resources;
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    :catch_614
    move-exception v13

    move-object/from16 v34, v35

    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_11f

    .line 393
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    :catch_619
    move-exception v13

    move-object/from16 v34, v35

    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_112

    .end local v4           #ZIP_INTERNAL:I
    .end local v5           #afd:Landroid/content/res/AssetFileDescriptor;
    .end local v24           #resources:Landroid/content/res/Resources;
    .end local v34           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v10       #bytesReadTotal:J
    .restart local v16       #files:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .restart local v35       #zin:Ljava/util/zip/ZipInputStream;
    :cond_61e
    move-object/from16 v34, v35

    .end local v35           #zin:Ljava/util/zip/ZipInputStream;
    .restart local v34       #zin:Ljava/util/zip/ZipInputStream;
    goto/16 :goto_27f
.end method

.method public declared-synchronized setInstalledFile(Ljava/lang/String;)V
    .registers 3
    .parameter "installedFile"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/samsung/swift/service/Installer;->installedFile:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 178
    monitor-exit p0

    return-void

    .line 177
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorld(Z)V
    .registers 3
    .parameter "world"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/samsung/swift/service/Installer;->world:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
