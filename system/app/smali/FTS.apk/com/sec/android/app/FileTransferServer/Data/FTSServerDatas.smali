.class public Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;
.super Ljava/lang/Object;
.source "FTSServerDatas.java"


# static fields
.field public static mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/SessionData;",
            ">;"
        }
    .end annotation
.end field

.field public static mFailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/FileTransferServer/Data/SessionData;",
            ">;"
        }
    .end annotation
.end field

.field public static mTotalFailedFileCount:I

.field public static mTotalSuccessFileCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalSuccessFileCount:I

    .line 17
    sput v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalFailedFileCount:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mResultList:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "[FT]-Server"

    const-string v1, "FTSServerDatas :Create FTSServerDatas"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public static downloadDone(ILandroid/content/Context;)Z
    .registers 10
    .parameter "index"
    .parameter "mContext"

    .prologue
    .line 31
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    .line 32
    .local v7, sd:Lcom/sec/android/app/FileTransferServer/Data/SessionData;
    const/4 v1, -0x1

    if-le p0, v1, :cond_94

    .line 36
    :try_start_b
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 38
    sget v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalSuccessFileCount:I

    iget v2, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalSuccessFileCount:I

    .line 39
    sget v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalFailedFileCount:I

    iget v2, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    iget v3, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalFailedFileCount:I

    .line 41
    iget v1, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    const/16 v2, 0x5e0

    if-eq v1, v2, :cond_32

    iget v1, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    iget v2, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    if-ne v1, v2, :cond_3b

    .line 43
    :cond_32
    const-string v1, "[FT]-Server"

    const-string v2, "FTSServerDatas :download result check: all file success case"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :goto_39
    const/4 v1, 0x1

    .line 64
    :goto_3a
    return v1

    .line 45
    :cond_3b
    iget v1, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    const/16 v2, 0x5dc

    if-ne v1, v2, :cond_63

    .line 47
    const-string v1, "[FT]-Server"

    const-string v2, "FTSServerDatas :download result check: RESULT_DEFAULE - unknown Case "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_49

    goto :goto_39

    .line 57
    :catch_49
    move-exception v6

    .line 59
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSServerDatas :exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 51
    .end local v6           #e:Ljava/lang/Exception;
    :cond_63
    :try_start_63
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSServerDatas :find failed file(s)-Type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;

    iget v1, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mResultType:I

    iget v2, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mTotalFileCnt:I

    iget v3, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSavedFileCnt:I

    sub-int/2addr v2, v3

    iget-object v3, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionTitle:Ljava/lang/String;

    iget-object v4, v7, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSender:Ljava/lang/String;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/FileTransferServer/Data/FileInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 53
    .local v0, failedFileInfo:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_93} :catch_49

    goto :goto_39

    .line 64
    .end local v0           #failedFileInfo:Lcom/sec/android/app/FileTransferServer/Data/FileInfo;
    :cond_94
    const/4 v1, 0x0

    goto :goto_3a
.end method

.method public static removeAll()V
    .registers 2

    .prologue
    .line 71
    :try_start_0
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 72
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mFailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 73
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalSuccessFileCount:I

    .line 74
    const/4 v1, 0x0

    sput v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mTotalFailedFileCount:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 81
    .local v0, e:Ljava/lang/Exception;
    :goto_10
    return-void

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    :catch_11
    move-exception v0

    .line 79
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
