.class public Lcom/sec/android/app/myfiles/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INVALID_CHAR:[Ljava/lang/String;

.field private static mIsMediaScannerScannig:Z

.field private static final mRootPath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageListener:Landroid/os/storage/StorageEventListener;

.field public static mStorageManager:Landroid/os/storage/StorageManager;

.field private static mToast:Landroid/widget/Toast;

.field public static mUsbMounted:Z

.field public static mUsbStoragePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 105
    sput-boolean v3, Lcom/sec/android/app/myfiles/Utils;->mIsMediaScannerScannig:Z

    .line 109
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/myfiles/Utils;->INVALID_CHAR:[Ljava/lang/String;

    .line 115
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/myfiles/Utils;->mRootPath:Ljava/lang/String;

    .line 420
    new-instance v0, Lcom/sec/android/app/myfiles/Utils$2;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/Utils$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/Utils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 425
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/myfiles/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 426
    const-string v0, "/mnt/sdcard/usbStorage"

    sput-object v0, Lcom/sec/android/app/myfiles/Utils;->mUsbStoragePath:Ljava/lang/String;

    .line 427
    sput-boolean v3, Lcom/sec/android/app/myfiles/Utils;->mUsbMounted:Z

    .line 428
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    .line 429
    sput-boolean v3, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->INVALID_CHAR:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    sput-object p0, Lcom/sec/android/app/myfiles/Utils;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method private static checkFsWritable()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 317
    :cond_1a
    :goto_1a
    return v4

    .line 306
    :cond_1b
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v3, f:Ljava/io/File;
    :try_start_22
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 310
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 312
    :cond_2b
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 314
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_34} :catch_36

    .line 315
    const/4 v4, 0x1

    goto :goto_1a

    .line 316
    :catch_36
    move-exception v2

    .line 317
    .local v2, ex:Ljava/io/IOException;
    goto :goto_1a
.end method

.method public static final checkMediaScannerScanning(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 359
    const/4 v7, 0x0

    .line 360
    .local v7, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 362
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_30

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_2d

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    const-string v1, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 370
    :cond_2d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 372
    :cond_30
    return v7
.end method

.method public static checkSameStorage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "filea"
    .parameter "fileb"

    .prologue
    .line 217
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Utils;->getStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/myfiles/Utils;->getStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 218
    const-string v0, "[MyFiles]"

    const-string v1, "Same storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x1

    .line 223
    :goto_16
    return v0

    .line 222
    :cond_17
    const-string v0, "[MyFiles]"

    const-string v1, "Different storage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static enableSdIconOnTitlePath(Ljava/lang/String;)Z
    .registers 2
    .parameter "folder"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/sec/android/app/myfiles/Utils;->isInExternalSdStorage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/sec/android/app/myfiles/Utils;->isInUsbHostStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8
    .parameter "context"
    .parameter "date"

    .prologue
    .line 393
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    .line 394
    .local v1, shortDateFormat:Ljava/text/DateFormat;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 397
    .local v0, dateString:Ljava/lang/StringBuffer;
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getEditTextFilter(Landroid/content/Context;)[Landroid/text/InputFilter;
    .registers 5
    .parameter "ctx"

    .prologue
    .line 229
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 231
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 232
    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/myfiles/Utils$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/myfiles/Utils$1;-><init>(Landroid/content/Context;)V

    aput-object v2, v0, v1

    .line 255
    return-object v0
.end method

.method public static getFolderParent(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "folder"

    .prologue
    .line 185
    if-nez p0, :cond_4

    .line 186
    const/4 p0, 0x0

    .line 191
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 187
    .restart local p0
    :cond_4
    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mRootPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 189
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 191
    .local v0, index:I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static getRootFolder()Ljava/lang/String;
    .registers 1

    .prologue
    .line 181
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public static getShowingPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "path"

    .prologue
    .line 404
    const-string v0, "/mnt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 405
    const/4 v0, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 417
    :cond_11
    return-object p0
.end method

.method public static getStorage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "folder"

    .prologue
    const/4 v0, 0x0

    .line 195
    if-nez p0, :cond_4

    .line 208
    :cond_3
    :goto_3
    return-object v0

    .line 198
    :cond_4
    sget-boolean v1, Lcom/sec/android/app/myfiles/Utils;->mUsbMounted:Z

    if-eqz v1, :cond_13

    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mUsbStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 199
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mUsbStoragePath:Ljava/lang/String;

    goto :goto_3

    .line 200
    :cond_13
    sget-boolean v1, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    if-eqz v1, :cond_25

    .line 201
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 202
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    goto :goto_3

    .line 204
    :cond_22
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mRootPath:Ljava/lang/String;

    goto :goto_3

    .line 205
    :cond_25
    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mRootPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mRootPath:Ljava/lang/String;

    goto :goto_3
.end method

.method public static hasReadableStorage()Z
    .registers 1

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/Utils;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage()Z
    .registers 2

    .prologue
    .line 121
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static hasStorage(Z)Z
    .registers 4
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 280
    if-eqz p0, :cond_13

    .line 281
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->checkFsWritable()Z

    move-result v1

    .line 294
    :cond_13
    :goto_13
    return v1

    .line 287
    :cond_14
    if-nez p0, :cond_1e

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 294
    :cond_1e
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public static isExternalRootFolder(Ljava/lang/String;)Z
    .registers 2
    .parameter "folder"

    .prologue
    .line 158
    sget-boolean v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 159
    const/4 v0, 0x1

    .line 161
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isHiddenItem(Ljava/lang/String;)Z
    .registers 4
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_15

    .line 261
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->getShowHiddenStatus()Z

    move-result v1

    if-nez v1, :cond_15

    .line 262
    const/4 v0, 0x1

    .line 265
    :cond_15
    return v0
.end method

.method public static isInExternalSdStorage(Ljava/lang/String;)Z
    .registers 3
    .parameter "folder"

    .prologue
    const/4 v0, 0x0

    .line 128
    if-nez p0, :cond_4

    .line 136
    :cond_3
    :goto_3
    return v0

    .line 131
    :cond_4
    sget-boolean v1, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    if-eqz v1, :cond_3

    .line 132
    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isInUsbHostStorage(Ljava/lang/String;)Z
    .registers 3
    .parameter "folder"

    .prologue
    const/4 v0, 0x0

    .line 140
    if-nez p0, :cond_4

    .line 148
    :cond_3
    :goto_3
    return v0

    .line 143
    :cond_4
    sget-boolean v1, Lcom/sec/android/app/myfiles/Utils;->mUsbMounted:Z

    if-eqz v1, :cond_3

    .line 144
    sget-object v1, Lcom/sec/android/app/myfiles/Utils;->mUsbStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static isMediaScannerScannig()Z
    .registers 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/sec/android/app/myfiles/Utils;->mIsMediaScannerScannig:Z

    return v0
.end method

.method public static isMountedStateCheck(Landroid/content/Context;)V
    .registers 13
    .parameter "context"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 435
    const-string v7, "trigger_restart_min_framework"

    const-string v8, "vold.decrypt"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 471
    :cond_12
    return-void

    .line 439
    :cond_13
    sget-object v7, Lcom/sec/android/app/myfiles/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_28

    .line 440
    const-string v7, "storage"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    sput-object v7, Lcom/sec/android/app/myfiles/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 441
    sget-object v7, Lcom/sec/android/app/myfiles/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/sec/android/app/myfiles/Utils;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 444
    :cond_28
    sget-object v7, Lcom/sec/android/app/myfiles/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 445
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .line 446
    .local v1, length:I
    const-string v2, ""

    .line 447
    .local v2, mStoragePath:Ljava/lang/String;
    sput-boolean v10, Lcom/sec/android/app/myfiles/Utils;->mUsbMounted:Z

    .line 448
    const/4 v0, 0x0

    .local v0, i:I
    :goto_34
    if-ge v0, v1, :cond_12

    .line 449
    aget-object v4, v5, v0

    .line 450
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 451
    .local v6, subsystem:Ljava/lang/String;
    if-eqz v6, :cond_5c

    .line 452
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 453
    sget-object v7, Lcom/sec/android/app/myfiles/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, state:Ljava/lang/String;
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 456
    sput-object v2, Lcom/sec/android/app/myfiles/Utils;->mSdCardStoragePath:Ljava/lang/String;

    .line 457
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 459
    sput-boolean v11, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    .line 448
    .end local v3           #state:Ljava/lang/String;
    :cond_5c
    :goto_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 461
    .restart local v3       #state:Ljava/lang/String;
    :cond_5f
    sput-boolean v10, Lcom/sec/android/app/myfiles/Utils;->mSdCardMounted:Z

    goto :goto_5c

    .line 463
    :cond_62
    const-string v7, "usb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 464
    const-string v7, "mounted"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 466
    sput-boolean v11, Lcom/sec/android/app/myfiles/Utils;->mUsbMounted:Z

    goto :goto_5c
.end method

.method public static isRootFolder(Ljava/lang/String;)Z
    .registers 2
    .parameter "folder"

    .prologue
    .line 174
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mRootPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isUsbHostRootFolder(Ljava/lang/String;)Z
    .registers 2
    .parameter "folder"

    .prologue
    .line 165
    sget-boolean v0, Lcom/sec/android/app/myfiles/Utils;->mUsbMounted:Z

    if-eqz v0, :cond_e

    .line 166
    sget-object v0, Lcom/sec/android/app/myfiles/Utils;->mUsbStoragePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 167
    const/4 v0, 0x1

    .line 170
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static setMediaScannerScannig(Z)V
    .registers 1
    .parameter "scanning"

    .prologue
    .line 385
    sput-boolean p0, Lcom/sec/android/app/myfiles/Utils;->mIsMediaScannerScannig:Z

    .line 389
    return-void
.end method
