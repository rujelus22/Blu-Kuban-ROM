.class public Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;
.super Ljava/lang/Object;
.source "FirmwareFileMgr.java"


# static fields
.field static final CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

.field static final CAM_FLAG_FIRMWARE_DUMP:[B

.field static final CAM_FLAG_FIRMWARE_UPDATE:[B


# instance fields
.field final FW_INFO_TOKENS_NUM:I

.field private mCAMFWCalAF:Ljava/lang/String;

.field private mCAMFWCalSEN:Ljava/lang/String;

.field private mCamFWVer:Ljava/lang/String;

.field private mFWManageMode:[B

.field private mFWUpdateCount:Ljava/lang/String;

.field private mISPVer1:Ljava/lang/String;

.field private mISPVer2:Ljava/lang/String;

.field private mPhoneFWVer:Ljava/lang/String;

.field private mValidResult:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

    .line 29
    new-array v0, v2, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    .line 33
    new-array v0, v2, [B

    fill-array-data v0, :array_34

    sput-object v0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_DUMP:[B

    return-void

    .line 29
    nop

    :array_2e
    .array-data 0x1
        0x31t
        0x0t
    .end array-data

    .line 33
    nop

    :array_34
    .array-data 0x1
        0x32t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->FW_INFO_TOKENS_NUM:I

    .line 37
    sget-object v0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mValidResult:Z

    return-void
.end method

.method private getFWInfo()V
    .registers 10

    .prologue
    .line 114
    iget-boolean v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mValidResult:Z

    if-nez v6, :cond_13d

    .line 115
    const-string v6, "FirmwareFileMgr"

    const-string v7, "getFWInfo() - the fw infor will be updated"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v5, 0x0

    .line 119
    .local v5, sysFsPath:Ljava/lang/String;
    :try_start_c
    const-string v5, "/sys/class/camera/rear/rear_camfw"

    .line 124
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, fr:Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 127
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, mFWInfo:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 129
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 131
    if-nez v3, :cond_2c

    .line 132
    const-string v6, "FirmwareFileMgr"

    const-string v7, "getFWInfo() - can not get the FW info"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #mFWInfo:Ljava/lang/String;
    .end local v5           #sysFsPath:Ljava/lang/String;
    :goto_2b
    return-void

    .line 136
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #mFWInfo:Ljava/lang/String;
    .restart local v5       #sysFsPath:Ljava/lang/String;
    :cond_2c
    const-string v6, "FirmwareFileMgr"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getFWInfo() - FW info["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v6, " "

    const/4 v7, 0x0

    invoke-direct {v4, v3, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 139
    .local v4, st:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    const/16 v7, 0xd

    if-ge v6, v7, :cond_6e

    .line 140
    const-string v6, "FirmwareFileMgr"

    const-string v7, "invalid FW Info!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_61} :catch_62

    goto :goto_2b

    .line 154
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #mFWInfo:Ljava/lang/String;
    .end local v4           #st:Ljava/util/StringTokenizer;
    :catch_62
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string v6, "FirmwareFileMgr"

    const-string v7, "file reading error"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 144
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v3       #mFWInfo:Ljava/lang/String;
    .restart local v4       #st:Ljava/util/StringTokenizer;
    :cond_6e
    :try_start_6e
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    .line 146
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mISPVer2:Ljava/lang/String;

    .line 148
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mFWUpdateCount:Ljava/lang/String;

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AF ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalAF:Ljava/lang/String;

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SEN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalSEN:Ljava/lang/String;

    .line 153
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mValidResult:Z
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_13b} :catch_62

    goto/16 :goto_2b

    .line 159
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v3           #mFWInfo:Ljava/lang/String;
    .end local v4           #st:Ljava/util/StringTokenizer;
    .end local v5           #sysFsPath:Ljava/lang/String;
    :cond_13d
    const-string v6, "FirmwareFileMgr"

    const-string v7, "getFWInfo() - do not need the firmware info"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b
.end method


# virtual methods
.method public getCAMFWCalAF()Ljava/lang/String;
    .registers 4

    .prologue
    .line 194
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCAMFWCalAF() - mCAMFWCalAF["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalAF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 196
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalAF:Ljava/lang/String;

    return-object v0
.end method

.method public getCAMFWCalSEN()Ljava/lang/String;
    .registers 4

    .prologue
    .line 200
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCAMFWCalSEN() - mCAMFWCalSEN["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalSEN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 202
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalSEN:Ljava/lang/String;

    return-object v0
.end method

.method public getCamFWVer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 164
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCamFWVer() - mCamFWVer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 166
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    return-object v0
.end method

.method public getISPVer1()Ljava/lang/String;
    .registers 4

    .prologue
    .line 170
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getISPVer1() - mISPVer1["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 172
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    return-object v0
.end method

.method public getManageMode()[B
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    return-object v0
.end method

.method public getPhoneFWVer()Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    const-string v0, "FirmwareFileMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneFWVer() - mPhoneFWVer["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getFWInfo()V

    .line 178
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    return-object v0
.end method

.method public resetFWInfo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v0, "FirmwareFileMgr"

    const-string v1, "resetFWInfo() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mValidResult:Z

    .line 96
    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCamFWVer:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mPhoneFWVer:Ljava/lang/String;

    .line 98
    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mISPVer1:Ljava/lang/String;

    .line 99
    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mISPVer2:Ljava/lang/String;

    .line 100
    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mFWUpdateCount:Ljava/lang/String;

    .line 101
    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalAF:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mCAMFWCalSEN:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setManageMode([B)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->mFWManageMode:[B

    .line 107
    return-void
.end method
