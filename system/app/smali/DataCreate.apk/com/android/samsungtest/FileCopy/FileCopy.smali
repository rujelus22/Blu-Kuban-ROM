.class public Lcom/android/samsungtest/FileCopy/FileCopy;
.super Landroid/app/Activity;
.source "FileCopy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;
    }
.end annotation


# static fields
.field private static EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

.field private static final INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

.field private static final SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

.field private static USER_FILE_COPY_FOLDER:Ljava/lang/String;

.field private static mButton:Landroid/widget/Button;

.field private static mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

.field private static mFullButton:Landroid/widget/Button;

.field private static mHandler:Landroid/os/Handler;

.field private static mProgressBar:Landroid/widget/ProgressBar;

.field private static mResetButton:Landroid/widget/Button;


# instance fields
.field private final COPY_PATH_NAME:Ljava/lang/String;

.field private final PATH_KEY:Ljava/lang/String;

.field private final SYSTEM:I

.field private final SYSTEM_SPACE_VALUE:Ljava/lang/String;

.field private final USER:I

.field private final USER_SPACE_VALUE:Ljava/lang/String;

.field private mCloneSize:J

.field private mContext:Landroid/content/Context;

.field private mCopyPathGroup:Landroid/widget/RadioGroup;

.field private mMp3:Landroid/widget/EditText;

.field private mMp3CopyNum:I

.field private mMp3Text:Landroid/widget/TextView;

.field private mMp3Text2:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/EditText;

.field private mPhotoCopyNum:I

.field private mPhotoText:Landroid/widget/TextView;

.field private mPhotoText2:Landroid/widget/TextView;

.field private mVideo:Landroid/widget/EditText;

.field private mVideoCopyNum:I

.field private mVideoText:Landroid/widget/TextView;

.field private mVideoText2:Landroid/widget/TextView;

.field private mVoiceMemo:Landroid/widget/EditText;

.field private mVoiceMemoNum:I

.field private mVoiceText:Landroid/widget/TextView;

.field private mVoiceText2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 150
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FileCopy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FileCopy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 138
    const-string v0, "filecopy.preferences_name"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->COPY_PATH_NAME:Ljava/lang/String;

    .line 140
    const-string v0, "user_space"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_SPACE_VALUE:Ljava/lang/String;

    .line 142
    const-string v0, "system_space"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_SPACE_VALUE:Ljava/lang/String;

    .line 144
    const-string v0, "path"

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->PATH_KEY:Ljava/lang/String;

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM:I

    .line 160
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->USER:I

    .line 826
    return-void
.end method

.method static synthetic access$1000(Lcom/android/samsungtest/FileCopy/FileCopy;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/samsungtest/FileCopy/FileCopy;->setPath(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/samsungtest/FileCopy/FileCopy;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/samsungtest/FileCopy/FileCopy;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/samsungtest/FileCopy/FileCopy;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCloneSize:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/samsungtest/FileCopy/FileCopy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/samsungtest/FileCopy/FileCopy;->setMaxNumber()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/samsungtest/FileCopy/FileCopy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/samsungtest/FileCopy/FileCopy;->defaultSet()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/samsungtest/FileCopy/FileCopy;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/samsungtest/FileCopy/FileCopy;->threadStart()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/samsungtest/FileCopy/FileCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoCopyNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/samsungtest/FileCopy/FileCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoCopyNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/samsungtest/FileCopy/FileCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3CopyNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/samsungtest/FileCopy/FileCopy;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemoNum:I

    return v0
.end method

.method private calculateUsingSpace(Ljava/io/File;JI)V
    .registers 14
    .parameter "file"
    .parameter "usedSize"
    .parameter "depth"

    .prologue
    .line 414
    const/16 v5, 0x14

    if-lt p4, v5, :cond_2b

    .line 416
    const-string v5, "FileCopy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MemoryStatusCalculating : Stop Calculating in folder\'s depth =\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_2a
    :goto_2a
    return-void

    .line 424
    :cond_2b
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 426
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 428
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2a

    .line 430
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3a
    if-ge v3, v4, :cond_2a

    aget-object v1, v0, v3

    .line 432
    .local v1, f:Ljava/io/File;
    add-int/lit8 v5, p4, 0x1

    invoke-direct {p0, v1, p2, p3, v5}, Lcom/android/samsungtest/FileCopy/FileCopy;->calculateUsingSpace(Ljava/io/File;JI)V

    .line 430
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 458
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #files:[Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_46
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mdata_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 460
    iget-wide v5, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCloneSize:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCloneSize:J

    goto :goto_2a
.end method

.method private defaultSet()V
    .registers 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhoto:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideo:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemo:Landroid/widget/EditText;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "key"

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mContext:Landroid/content/Context;

    const-string v2, "filecopy.preferences_name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 820
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "0"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSystemMemorySpace()J
    .registers 12

    .prologue
    .line 498
    sget-object v7, Lcom/android/samsungtest/FileCopy/FileCopy;->INTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 500
    .local v7, storageDirectory:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 502
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 504
    .local v2, blocksize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 506
    .local v0, blockcount:J
    mul-long v4, v0, v2

    .line 508
    .local v4, remaining:J
    const-string v8, "FileCopy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSystemMemorySpace : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " * count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-wide v4
.end method

.method private getUserMemorySpace()J
    .registers 12

    .prologue
    .line 478
    sget-object v7, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 480
    .local v7, storageDirectory:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 482
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 484
    .local v2, blocksize:J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 486
    .local v0, blockcount:J
    mul-long v4, v0, v2

    .line 488
    .local v4, remaining:J
    const-string v8, "FileCopy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getUserMemorySpace : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " * count "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-wide v4
.end method

.method private init()V
    .registers 11

    .prologue
    const v9, 0x7f06002a

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 580
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 582
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 586
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoText:Landroid/widget/TextView;

    .line 588
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoText:Landroid/widget/TextView;

    .line 590
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3Text:Landroid/widget/TextView;

    .line 592
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceText:Landroid/widget/TextView;

    .line 594
    const v0, 0x7f06002f

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoText2:Landroid/widget/TextView;

    .line 596
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoText2:Landroid/widget/TextView;

    .line 598
    const v0, 0x7f060030

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3Text2:Landroid/widget/TextView;

    .line 600
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceText2:Landroid/widget/TextView;

    .line 604
    iput-object p0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mContext:Landroid/content/Context;

    .line 606
    const/high16 v0, 0x101

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mProgressBar:Landroid/widget/ProgressBar;

    .line 608
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 612
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhoto:Landroid/widget/EditText;

    .line 614
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3:Landroid/widget/EditText;

    .line 616
    const v0, 0x7f060036

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideo:Landroid/widget/EditText;

    .line 618
    const v0, 0x7f060037

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemo:Landroid/widget/EditText;

    .line 622
    new-instance v0, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    iget v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoCopyNum:I

    iget v3, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoCopyNum:I

    iget v4, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3CopyNum:I

    iget v5, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemoNum:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;-><init>(Landroid/content/Context;IIII)V

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    .line 626
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mFullButton:Landroid/widget/Button;

    .line 628
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mFullButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/samsungtest/FileCopy/FileCopy$1;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FileCopy/FileCopy$1;-><init>(Lcom/android/samsungtest/FileCopy/FileCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 642
    const v0, 0x7f060038

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mResetButton:Landroid/widget/Button;

    .line 644
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mResetButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/samsungtest/FileCopy/FileCopy$2;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FileCopy/FileCopy$2;-><init>(Lcom/android/samsungtest/FileCopy/FileCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    const v0, 0x7f060039

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mButton:Landroid/widget/Button;

    .line 658
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/samsungtest/FileCopy/FileCopy$3;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FileCopy/FileCopy$3;-><init>(Lcom/android/samsungtest/FileCopy/FileCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    const v0, 0x7f060028

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCopyPathGroup:Landroid/widget/RadioGroup;

    .line 676
    const-string v0, "path"

    invoke-direct {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 678
    .local v6, pathIniString:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v7, :cond_146

    .line 680
    const-string v0, "system_space"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v7, :cond_135

    .line 682
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCopyPathGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f060029

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 684
    invoke-direct {p0, v7}, Lcom/android/samsungtest/FileCopy/FileCopy;->setPath(I)V

    .line 704
    :cond_12a
    :goto_12a
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCopyPathGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/samsungtest/FileCopy/FileCopy$4;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/FileCopy/FileCopy$4;-><init>(Lcom/android/samsungtest/FileCopy/FileCopy;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 748
    return-void

    .line 686
    :cond_135
    const-string v0, "user_space"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v7, :cond_12a

    .line 688
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCopyPathGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 690
    invoke-direct {p0, v8}, Lcom/android/samsungtest/FileCopy/FileCopy;->setPath(I)V

    goto :goto_12a

    .line 696
    :cond_146
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCopyPathGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v9}, Landroid/widget/RadioGroup;->check(I)V

    .line 698
    invoke-direct {p0, v8}, Lcom/android/samsungtest/FileCopy/FileCopy;->setPath(I)V

    goto :goto_12a
.end method

.method public static onFinish()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 220
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 224
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mFullButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 226
    return-void
.end method

.method private setMaxNumber()V
    .registers 30

    .prologue
    .line 246
    const-wide/16 v7, 0x0

    .line 248
    .local v7, photoFullNumber:J
    const-wide/16 v21, 0x0

    .line 250
    .local v21, voiceFullNumber:J
    const-wide/16 v3, 0x0

    .line 252
    .local v3, mp3FullNumber:J
    const-wide/16 v17, 0x0

    .line 260
    .local v17, videoFullNumber:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCopyPathGroup:Landroid/widget/RadioGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v25

    const v26, 0x7f060029

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d4

    .line 262
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/samsungtest/FileCopy/FileCopy;->startFileCalculation(I)V

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/samsungtest/FileCopy/FileCopy;->getSystemMemorySpace()J

    move-result-wide v15

    .line 266
    .local v15, totalSpace:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCloneSize:J

    move-wide/from16 v25, v0

    add-long v15, v15, v25

    .line 282
    :goto_30
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const/16 v26, 0x1

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getSrcFile(I)Ljava/io/File;
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$000(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;I)Ljava/io/File;

    move-result-object v12

    .line 284
    .local v12, srcFilePhoto:Ljava/io/File;
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const/16 v26, 0x2

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getSrcFile(I)Ljava/io/File;
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$000(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;I)Ljava/io/File;

    move-result-object v14

    .line 286
    .local v14, srcFileVoice:Ljava/io/File;
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const/16 v26, 0x3

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getSrcFile(I)Ljava/io/File;
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$000(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;I)Ljava/io/File;

    move-result-object v11

    .line 288
    .local v11, srcFileMp3:Ljava/io/File;
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const/16 v26, 0x4

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->getSrcFile(I)Ljava/io/File;
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$000(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;I)Ljava/io/File;

    move-result-object v13

    .line 292
    .local v13, srcFileVideo:Ljava/io/File;
    if-eqz v12, :cond_1eb

    if-eqz v14, :cond_1eb

    if-eqz v11, :cond_1eb

    if-eqz v13, :cond_1eb

    .line 296
    const-string v25, "FileCopy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "totalSpace : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-wide/16 v25, 0x4

    div-long v9, v15, v25

    .line 302
    .local v9, photoFullSpace:J
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v25

    div-long v7, v9, v25

    .line 304
    const-string v25, "FileCopy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "photo : space "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " * "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v25

    mul-long v25, v25, v7

    sub-long v25, v15, v25

    const-wide/16 v27, 0x3

    div-long v23, v25, v27

    .line 310
    .local v23, voiceFullSpace:J
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v25

    div-long v21, v23, v25

    .line 312
    const-string v25, "FileCopy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "voice : space "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " * "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v25

    mul-long v25, v25, v7

    sub-long v25, v15, v25

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v27

    mul-long v27, v27, v21

    sub-long v25, v25, v27

    const-wide/16 v27, 0x2

    div-long v5, v25, v27

    .line 318
    .local v5, mp3FullSpace:J
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v25

    div-long v3, v5, v25

    .line 320
    const-string v25, "FileCopy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mp3 : space "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " * "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v25

    mul-long v25, v25, v7

    sub-long v25, v15, v25

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v27

    mul-long v27, v27, v21

    sub-long v25, v25, v27

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v27

    mul-long v27, v27, v3

    sub-long v19, v25, v27

    .line 326
    .local v19, videoFullSpace:J
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v25

    div-long v17, v19, v25

    .line 328
    const-string v25, "FileCopy"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "video : space "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v27

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " * "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhoto:Landroid/widget/EditText;

    move-object/from16 v25, v0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideo:Landroid/widget/EditText;

    move-object/from16 v25, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3:Landroid/widget/EditText;

    move-object/from16 v25, v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemo:Landroid/widget/EditText;

    move-object/from16 v25, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .end local v5           #mp3FullSpace:J
    .end local v9           #photoFullSpace:J
    .end local v19           #videoFullSpace:J
    .end local v23           #voiceFullSpace:J
    :cond_1d3
    :goto_1d3
    return-void

    .line 270
    .end local v11           #srcFileMp3:Ljava/io/File;
    .end local v12           #srcFilePhoto:Ljava/io/File;
    .end local v13           #srcFileVideo:Ljava/io/File;
    .end local v14           #srcFileVoice:Ljava/io/File;
    .end local v15           #totalSpace:J
    :cond_1d4
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/samsungtest/FileCopy/FileCopy;->startFileCalculation(I)V

    .line 272
    invoke-direct/range {p0 .. p0}, Lcom/android/samsungtest/FileCopy/FileCopy;->getUserMemorySpace()J

    move-result-wide v15

    .line 274
    .restart local v15       #totalSpace:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mCloneSize:J

    move-wide/from16 v25, v0

    add-long v15, v15, v25

    goto/16 :goto_30

    .line 342
    .restart local v11       #srcFileMp3:Ljava/io/File;
    .restart local v12       #srcFilePhoto:Ljava/io/File;
    .restart local v13       #srcFileVideo:Ljava/io/File;
    .restart local v14       #srcFileVoice:Ljava/io/File;
    :cond_1eb
    if-nez v12, :cond_1f4

    .line 344
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const-string v26, "Photo File is not ready!!"

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$100(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;Ljava/lang/String;)V

    .line 350
    :cond_1f4
    if-nez v11, :cond_1fd

    .line 352
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const-string v26, "Mp3 File is not ready!!"

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$100(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;Ljava/lang/String;)V

    .line 358
    :cond_1fd
    if-nez v13, :cond_206

    .line 360
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const-string v26, "Video File is not ready!!"

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$100(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;Ljava/lang/String;)V

    .line 366
    :cond_206
    if-nez v14, :cond_1d3

    .line 368
    sget-object v25, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    const-string v26, "Voice Memo is not ready!!"

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->showToast(Ljava/lang/String;)V
    invoke-static/range {v25 .. v26}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$100(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;Ljava/lang/String;)V

    goto :goto_1d3
.end method

.method private setPath(I)V
    .registers 5
    .parameter "path"

    .prologue
    .line 756
    const-string v0, "FileCopy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    packed-switch p1, :pswitch_data_1aa

    .line 790
    :goto_1b
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoText2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera/.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoText2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera/.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3Text2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceText2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMemo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    return-void

    .line 762
    :pswitch_9c
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3Text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMemo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->setSystemPath()V
    invoke-static {v0}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$1200(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;)V

    goto/16 :goto_1b

    .line 776
    :pswitch_123
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.mp4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3Text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sound : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    iget-object v0, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMemo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    sget-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->mFileCopyThread:Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;

    #calls: Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->setUserPath()V
    invoke-static {v0}, Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;->access$1300(Lcom/android/samsungtest/FileCopy/FileCopy$FileCopyThread;)V

    goto/16 :goto_1b

    .line 758
    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_123
    .end packed-switch
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 804
    iget-object v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mContext:Landroid/content/Context;

    const-string v3, "filecopy.preferences_name"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 806
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 808
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 810
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 812
    return-void
.end method

.method private startFileCalculation(I)V
    .registers 6
    .parameter "type"

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_22

    .line 400
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, f1:Ljava/io/File;
    :goto_a
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/samsungtest/FileCopy/FileCopy;->calculateUsingSpace(Ljava/io/File;JI)V

    .line 408
    return-void

    .line 388
    .end local v0           #f1:Ljava/io/File;
    :pswitch_11
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->SYSTEM_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .restart local v0       #f1:Ljava/io/File;
    goto :goto_a

    .line 394
    .end local v0           #f1:Ljava/io/File;
    :pswitch_19
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .restart local v0       #f1:Ljava/io/File;
    goto :goto_a

    .line 384
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method

.method private threadStart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 518
    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 520
    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->mResetButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 522
    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->mResetButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 524
    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 526
    sget-object v2, Lcom/android/samsungtest/FileCopy/FileCopy;->mFullButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 532
    :try_start_1b
    iget-object v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhoto:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoCopyNum:I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_2f} :catch_64

    .line 542
    :goto_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3CopyNum:I
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_43} :catch_68

    .line 552
    :goto_43
    :try_start_43
    iget-object v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoCopyNum:I
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_53} :catch_6c

    .line 562
    :goto_53
    :try_start_53
    iget-object v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemoNum:I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_63} :catch_70

    .line 570
    :goto_63
    return-void

    .line 534
    :catch_64
    move-exception v0

    .line 536
    .local v0, ne:Ljava/lang/NumberFormatException;
    iput v4, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mPhotoCopyNum:I

    goto :goto_2f

    .line 544
    .end local v0           #ne:Ljava/lang/NumberFormatException;
    :catch_68
    move-exception v1

    .line 546
    .local v1, nfe:Ljava/lang/NumberFormatException;
    iput v4, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mMp3CopyNum:I

    goto :goto_43

    .line 554
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :catch_6c
    move-exception v1

    .line 556
    .restart local v1       #nfe:Ljava/lang/NumberFormatException;
    iput v4, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVideoCopyNum:I

    goto :goto_53

    .line 564
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :catch_70
    move-exception v1

    .line 566
    .restart local v1       #nfe:Ljava/lang/NumberFormatException;
    iput v4, p0, Lcom/android/samsungtest/FileCopy/FileCopy;->mVoiceMemoNum:I

    goto :goto_63
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "SPH-D710"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 189
    const-string v0, "/mnt/sdcard/external_sd"

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/samsungtest/FileCopy/FileCopy;->EXTERNAL_SDCARD_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FileCopy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/FileCopy/FileCopy;->USER_FILE_COPY_FOLDER:Ljava/lang/String;

    .line 191
    const-string v0, "FileCopy"

    const-string v1, "Model is SPH-D710"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_33
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/FileCopy/FileCopy;->setContentView(I)V

    .line 196
    invoke-direct {p0}, Lcom/android/samsungtest/FileCopy/FileCopy;->init()V

    .line 198
    invoke-direct {p0}, Lcom/android/samsungtest/FileCopy/FileCopy;->defaultSet()V

    .line 200
    return-void
.end method
