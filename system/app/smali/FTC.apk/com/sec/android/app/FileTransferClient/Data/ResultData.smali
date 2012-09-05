.class public Lcom/sec/android/app/FileTransferClient/Data/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/app/FileTransferClient/Data/ResultData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public errorType:I

.field public failCount:I

.field public notSendFileNames:Ljava/lang/String;

.field public sendingFileNames:Ljava/lang/String;

.field public sessionID:Ljava/lang/String;

.field public successCheck:I

.field public successCount:I

.field public targetDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 123
    new-instance v0, Lcom/sec/android/app/FileTransferClient/Data/ResultData$1;

    invoke-direct {v0}, Lcom/sec/android/app/FileTransferClient/Data/ResultData$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/FileTransferClient/Data/SessionState;)V
    .registers 13
    .parameter "co"
    .parameter "ss"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v8, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCheck:I

    .line 18
    const/16 v7, 0x9c4

    iput v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->errorType:I

    .line 19
    iput v8, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCount:I

    .line 20
    iput v8, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->failCount:I

    .line 21
    const-string v7, ""

    iput-object v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sessionID:Ljava/lang/String;

    .line 22
    const-string v7, ""

    iput-object v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    .line 23
    const-string v7, ""

    iput-object v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    .line 24
    const-string v7, ""

    iput-object v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->notSendFileNames:Ljava/lang/String;

    .line 30
    move-object v5, p1

    .line 31
    .local v5, mContext:Landroid/content/Context;
    :try_start_20
    iget-boolean v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->bSuccess:Z

    if-eqz v7, :cond_27

    .line 33
    const/4 v7, 0x1

    iput v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCheck:I

    .line 35
    :cond_27
    iget v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->errorType:I

    iput v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->errorType:I

    .line 36
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCount:I

    .line 37
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iput v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->failCount:I

    .line 38
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sessionID:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sessionID:Ljava/lang/String;

    .line 39
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->targetDevice:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    .line 41
    const-string v3, ""

    .line 42
    .local v3, fileNames:Ljava/lang/String;
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b0

    .line 45
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v6, sb:Ljava/lang/StringBuffer;
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->sendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_99

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 48
    .local v1, f:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_7e} :catch_7f

    goto :goto_58

    .line 78
    .end local v1           #f:Ljava/io/File;
    .end local v3           #fileNames:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :catch_7f
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "[FT]-Client"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResultData :set ResultData Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0           #e:Ljava/lang/Exception;
    :cond_98
    :goto_98
    return-void

    .line 51
    .restart local v3       #fileNames:Ljava/lang/String;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    :cond_99
    :try_start_99
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_ae

    .line 55
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 57
    :cond_ae
    iput-object v3, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    .line 60
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #sb:Ljava/lang/StringBuffer;
    :cond_b0
    const-string v2, ""

    .line 61
    .local v2, failedFileNames:Ljava/lang/String;
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_98

    .line 64
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .restart local v6       #sb:Ljava/lang/StringBuffer;
    iget-object v7, p2, Lcom/sec/android/app/FileTransferClient/Data/SessionState;->notSendFiles:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ec

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 67
    .restart local v1       #f:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c5

    .line 70
    .end local v1           #f:Ljava/io/File;
    :cond_ec
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v9, :cond_101

    .line 73
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_101
    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->notSendFileNames:Ljava/lang/String;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_103} :catch_7f

    goto :goto_98
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCheck:I

    .line 18
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->errorType:I

    .line 19
    iput v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCount:I

    .line 20
    iput v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->failCount:I

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sessionID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->notSendFileNames:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCheck:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->errorType:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCount:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->failCount:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sessionID:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->notSendFileNames:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 108
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCheck:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->errorType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->successCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->failCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sessionID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->targetDevice:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->sendingFileNames:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/Data/ResultData;->notSendFileNames:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 121
    :goto_28
    return-void

    .line 117
    :catch_29
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResultData :writeToParcel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method
