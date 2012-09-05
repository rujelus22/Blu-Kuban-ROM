.class public Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;
.super Landroid/os/Handler;
.source "UnzipProgressHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;
    }
.end annotation


# static fields
.field public static final CHANNEL_BUFFER_SIZE:I = 0x10000

.field public static final CMD_END:I = 0x2

.field public static final CMD_ERROR:I = 0x3

.field public static final CMD_REMAIN:I = 0x1

.field public static final CMD_RESPONSE_OVERWRITE:I = 0x5

.field public static final CMD_RESPONSE_PASSWORD:I = 0x4

.field public static final CMD_START:I = 0x0

.field public static final HUGE_FILE_SIZE:I = 0x500000


# instance fields
.field private absPath:Ljava/lang/String;

.field private charSet:Ljava/lang/String;

.field private curIndex:I

.field private errorMsg:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/Executor;

.field private fileCount:I

.field private fileItem:Lcom/infraware/filemanager/file/FileListItem;

.field private fileNameToUnzip:Ljava/lang/String;

.field private isCancel:Z

.field private managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

.field private moveToFolder:Z

.field private password:Ljava/lang/String;

.field private progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

.field private targetDir:Ljava/io/File;

.field private targetFile:Ljava/io/File;

.field private zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

.field private zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;Lcom/infraware/filemanager/file/FileListItem;ZLjava/lang/String;)V
    .registers 13
    .parameter "managerActivity"
    .parameter "fileItem"
    .parameter "moveToFolder"
    .parameter "charSet"

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-boolean v6, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->isCancel:Z

    .line 57
    const/4 v1, -0x1

    iput v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->curIndex:I

    .line 58
    iput-boolean v6, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->moveToFolder:Z

    .line 59
    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Normal:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    iput-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 68
    iput-boolean p3, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->moveToFolder:Z

    .line 69
    iput-object p2, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileItem:Lcom/infraware/filemanager/file/FileListItem;

    .line 70
    const-string v1, "{0}/{1}.{2}"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p2, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->absPath:Ljava/lang/String;

    .line 73
    :try_start_31
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;

    if-nez v1, :cond_3d

    invoke-static {p4}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 74
    iput-object p4, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_31 .. :try_end_3d} :catch_b4

    .line 79
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;

    if-nez v1, :cond_45

    .line 80
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;

    .line 82
    :cond_45
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->absPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->getZipType(Ljava/lang/String;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    .line 83
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->executor:Ljava/util/concurrent/Executor;

    .line 86
    :try_start_53
    new-instance v1, Ljava/io/File;

    const-string v2, "{0}/{1}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p2, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p2, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->curIndex:I
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_70} :catch_7e

    .line 94
    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 96
    const/16 v1, 0x65

    invoke-virtual {p1, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->showDialog(I)V

    .line 110
    :goto_7d
    return-void

    .line 89
    :catch_7e
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0, v7}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto :goto_7d

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    :cond_83
    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Encryption:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    if-ne v1, v2, :cond_8f

    .line 101
    const/16 v1, 0x64

    invoke-virtual {p1, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->showDialog(I)V

    goto :goto_7d

    .line 104
    :cond_8f
    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->NotSupported:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    if-eq v1, v2, :cond_a1

    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->EOCDNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    if-eq v1, v2, :cond_a1

    sget-object v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->DirectoryNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    iget-object v2, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    if-ne v1, v2, :cond_b0

    .line 105
    :cond_a1
    invoke-virtual {p1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onToastMessage(Ljava/lang/String;)V

    goto :goto_7d

    .line 109
    :cond_b0
    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto :goto_7d

    .line 76
    :catch_b4
    move-exception v1

    goto :goto_3d
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->isCancel:Z

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/filemanager/file/FileBaseActivity;
    .registers 2
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileNameToUnzip:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileNameToUnzip:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$14(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/io/File;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;

    return-void
.end method

.method static synthetic access$15(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/io/File;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$16(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->isCancel:Z

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->absPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zis:Lorg/apache/commons/compress/archivers/zip/ZipArchiveInputStream;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)I
    .registers 2
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->curIndex:I

    return v0
.end method

.method static synthetic access$9(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->curIndex:I

    return-void
.end method

.method private getZipType(Ljava/lang/String;)Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;
    .registers 12
    .parameter "path"

    .prologue
    .line 301
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    const-string v6, "{0}/{1}.{2}"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v9, v9, Lcom/infraware/filemanager/file/FileListItem;->path:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v9, v9, Lcom/infraware/filemanager/file/FileListItem;->name:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileItem:Lcom/infraware/filemanager/file/FileListItem;

    iget-object v9, v9, Lcom/infraware/filemanager/file/FileListItem;->ext:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 302
    .local v4, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->size()I

    move-result v6

    iput v6, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileCount:I

    .line 304
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v3, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;

    const-string v6, ""

    invoke-direct {v3, v1, v6}, Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 306
    .local v3, zdis:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 307
    .local v5, zis:Ljava/util/zip/ZipInputStream;
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 308
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_43

    .line 326
    sget-object v6, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->NotSupported:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #zdis:Lcom/infraware/polarisoffice/zip/ZipDecryptInputStream;
    .end local v4           #zipFile:Ljava/util/zip/ZipFile;
    .end local v5           #zis:Ljava/util/zip/ZipInputStream;
    :goto_42
    return-object v6

    .line 310
    :catch_43
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, msg:Ljava/lang/String;
    if-nez v2, :cond_4d

    .line 313
    sget-object v6, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->NotSupported:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    goto :goto_42

    .line 315
    :cond_4d
    const-string v6, "NOT_ENC"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    .line 316
    sget-object v6, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Normal:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    goto :goto_42

    .line 318
    :cond_58
    const-string v6, "EOCD not found; not a Zip archive?"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 319
    sget-object v6, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->EOCDNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    goto :goto_42

    .line 321
    :cond_63
    const-string v6, "Central Directory Entry not found"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    .line 322
    sget-object v6, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->DirectoryNotFound:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    goto :goto_42

    .line 324
    :cond_6e
    sget-object v6, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Encryption:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    goto :goto_42
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_106

    .line 297
    :cond_7
    :goto_7
    return-void

    .line 115
    :pswitch_8
    new-instance v0, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-direct {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    .line 116
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, v4}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setProgressStyle(I)V

    .line 118
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$1;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$1;-><init>(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)V

    invoke-virtual {v0, v1, v2}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$2;-><init>(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 139
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    new-instance v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$3;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$3;-><init>(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 147
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    iget v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->fileCount:I

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setMax(I)V

    .line 148
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0, v3}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->show()V

    .line 151
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;

    if-nez v0, :cond_6d

    .line 152
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 156
    :cond_6d
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 157
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 159
    :cond_7a
    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto :goto_7

    .line 162
    :pswitch_7e
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$4;-><init>(Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 266
    :pswitch_8a
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onToastMessage(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 268
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->dismiss()V

    .line 270
    :cond_a9
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->moveToFolder:Z

    if-eqz v0, :cond_7

    .line 271
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->targetDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->moveFolder(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 275
    :pswitch_ba
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;

    if-nez v0, :cond_df

    .line 276
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    invoke-virtual {v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onToastMessage(Ljava/lang/String;)V

    .line 281
    :goto_d0
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->progressDialog:Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/dialog/FileManagerProgressDialog;->dismiss()V

    goto/16 :goto_7

    .line 279
    :cond_df
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->onToastMessage(Ljava/lang/String;)V

    goto :goto_d0

    .line 286
    :pswitch_e7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->password:Ljava/lang/String;

    .line 287
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 290
    :pswitch_f2
    sget-object v0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;->Encryption:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    iget-object v1, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->zipType:Lcom/infraware/polarisoffice/zip/UnzipProgressHandler$ZipType;

    if-ne v0, v1, :cond_101

    .line 291
    iget-object v0, p0, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->managerActivity:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/file/FileBaseActivity;->showDialog(I)V

    goto/16 :goto_7

    .line 294
    :cond_101
    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/zip/UnzipProgressHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 113
    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7e
        :pswitch_8a
        :pswitch_ba
        :pswitch_e7
        :pswitch_f2
    .end packed-switch
.end method
