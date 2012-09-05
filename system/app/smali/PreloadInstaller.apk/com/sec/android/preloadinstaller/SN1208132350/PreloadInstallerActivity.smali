.class public Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;
.super Landroid/app/Activity;
.source "PreloadInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;
    }
.end annotation


# instance fields
.field imgView:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private installedApkCnt:I

.field private listedApkCnt:I

.field logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

.field private mApk_path:Ljava/lang/String;

.field private mCarriers:Ljava/lang/String;

.field outputContents:Ljava/lang/String;

.field progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->listedApkCnt:I

    .line 46
    iput v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->installedApkCnt:I

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->outputContents:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private CopyFolder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "strInFolder"
    .parameter "strOutFolder"

    .prologue
    .line 249
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v1, f:Ljava/io/File;
    const/4 v2, 0x0

    .line 254
    .local v2, f2:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, fList:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_b
    array-length v7, v3

    if-ge v5, v7, :cond_af

    .line 260
    new-instance v2, Ljava/io/File;

    .end local v2           #f2:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v2       #f2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->makeDirectory(Ljava/lang/String;)Z

    .line 263
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->CopyFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_79
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 265
    :cond_7c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, fromFileName:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, toFileName:Ljava/lang/String;
    :try_start_a6
    invoke-direct {p0, v4, v6}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->fileCopy(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_79

    .line 269
    :catch_aa
    move-exception v0

    .line 270
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_79

    .line 274
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #fromFileName:Ljava/lang/String;
    .end local v6           #toFileName:Ljava/lang/String;
    :cond_af
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->installedApkCnt:I

    return v0
.end method

.method static synthetic access$008(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->installedApkCnt:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->installedApkCnt:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;Ljava/io/File;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->CopyFolder(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->listedApkCnt:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->setDisabled()V

    return-void
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .registers 11
    .parameter "path"

    .prologue
    .line 277
    const/4 v5, 0x0

    .line 279
    .local v5, isDeletedFile:Z
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_9

    .line 282
    const/4 v7, 0x0

    .line 303
    :goto_8
    return v7

    .line 285
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 286
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_10
    if-ge v4, v6, :cond_48

    aget-object v2, v0, v4

    .line 287
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_20

    .line 288
    invoke-direct {p0, v2}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->deleteDirectory(Ljava/io/File;)Z

    .line 286
    :cond_1d
    :goto_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 290
    :cond_20
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, deleteFileName:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    .line 293
    const/4 v7, 0x1

    if-ne v5, v7, :cond_1d

    goto :goto_1d

    .line 303
    .end local v1           #deleteFileName:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    :cond_48
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v7

    goto :goto_8
.end method

.method private fileCopy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "fromFileName"
    .parameter "toFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v7, 0x0

    .line 188
    .local v7, fis:Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 189
    .local v9, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 190
    .local v0, fcIn:Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 194
    .local v5, fcOut:Ljava/nio/channels/FileChannel;
    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_38

    .line 195
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    if-nez v8, :cond_b

    .line 199
    :cond_b
    :try_start_b
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_50
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_57

    .line 200
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    if-nez v10, :cond_12

    .line 205
    :cond_12
    :try_start_12
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 206
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 208
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_53
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_23} :catch_5a

    .line 220
    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 221
    :cond_28
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 222
    :cond_2d
    if-eqz v10, :cond_32

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 223
    :cond_32
    if-eqz v8, :cond_37

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 226
    :cond_37
    return-void

    .line 213
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catch_38
    move-exception v6

    .line 216
    .local v6, e:Ljava/io/IOException;
    :goto_39
    :try_start_39
    throw v6
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 220
    .end local v6           #e:Ljava/io/IOException;
    :catchall_3a
    move-exception v1

    :goto_3b
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 221
    :cond_40
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 222
    :cond_45
    if-eqz v9, :cond_4a

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 223
    :cond_4a
    if-eqz v7, :cond_4f

    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    :cond_4f
    throw v1

    .line 220
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catchall_50
    move-exception v1

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_3b

    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catchall_53
    move-exception v1

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_3b

    .line 213
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_57
    move-exception v6

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_39

    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    :catch_5a
    move-exception v6

    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_39
.end method

.method private makeDirectory(Ljava/lang/String;)Z
    .registers 5
    .parameter "path"

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, success:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    .line 238
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 243
    :cond_10
    return v1
.end method

.method private setDisabled()V
    .registers 5

    .prologue
    .line 119
    const-string v0, "ATT"

    iget-object v1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mCarriers:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 120
    const-string v0, "persist.sys.storage_preload"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "persist.sys.storage_preload"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_18
    iget-object v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    const-string v1, "Set package state to disabled"

    invoke-virtual {v0, v1}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    invoke-virtual {v0}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->write()V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->finish()V

    .line 132
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 133
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v9, 0x7f030001

    invoke-virtual {p0, v9}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->setContentView(I)V

    .line 61
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mCarriers:Ljava/lang/String;

    .line 62
    const-string v9, "PreloadInstallerActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCarriers: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mCarriers:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v9, "ATT"

    iget-object v10, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mCarriers:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10f

    .line 64
    const-string v9, "/system/etc/vpl"

    iput-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mApk_path:Ljava/lang/String;

    .line 69
    :goto_39
    const-string v9, "PreloadInstallerActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mApk_path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mApk_path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v9, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    invoke-direct {v9}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;-><init>()V

    iput-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    .line 72
    iget-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    const-string v10, "PreloadInstaller Start"

    invoke-virtual {v9, v10}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 74
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v6, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    invoke-direct {v6, p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;-><init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)V

    .line 75
    .local v6, observer:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;
    const v9, 0x7f060004

    invoke-virtual {p0, v9}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 77
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    iput-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->imgView:Ljava/util/LinkedList;

    .line 78
    iget-object v10, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->imgView:Ljava/util/LinkedList;

    const v9, 0x7f060001

    invoke-virtual {p0, v9}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v10, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->imgView:Ljava/util/LinkedList;

    const v9, 0x7f060002

    invoke-virtual {p0, v9}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, Ljava/io/File;

    iget-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mApk_path:Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_13b

    .line 84
    iget-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mApk_path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " directory exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V

    .line 87
    new-instance v3, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$1;-><init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)V

    .line 94
    .local v3, filter:Ljava/io/FilenameFilter;
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    array-length v9, v9

    iput v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->listedApkCnt:I

    .line 95
    iget v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->listedApkCnt:I

    if-lez v9, :cond_117

    .line 96
    iget-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->progressBar:Landroid/widget/ProgressBar;

    iget v10, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->listedApkCnt:I

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 97
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_dc
    if-ge v4, v5, :cond_13a

    aget-object v2, v0, v4

    .line 100
    .local v2, file:Ljava/io/File;
    :try_start_e0
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v6, v10, v11}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 102
    .local v8, updatePkg:Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " install..."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_e0 .. :try_end_10c} :catchall_115

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_dc

    .line 67
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #dir:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filter:Ljava/io/FilenameFilter;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #observer:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #updatePkg:Landroid/content/pm/PackageInfo;
    :cond_10f
    const-string v9, "/preload"

    iput-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mApk_path:Ljava/lang/String;

    goto/16 :goto_39

    .line 103
    .restart local v0       #arr$:[Ljava/io/File;
    .restart local v1       #dir:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filter:Ljava/io/FilenameFilter;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #observer:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    :catchall_115
    move-exception v9

    throw v9

    .line 106
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_117
    iget-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There are no files in"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mApk_path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " directory"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->setDisabled()V

    .line 113
    .end local v3           #filter:Ljava/io/FilenameFilter;
    :cond_13a
    :goto_13a
    return-void

    .line 110
    :cond_13b
    iget-object v9, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->mApk_path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " directory not exist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->setDisabled()V

    goto :goto_13a
.end method
