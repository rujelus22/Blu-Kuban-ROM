.class public Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;
.super Landroid/os/Handler;
.source "SimpleFileDownloader.java"


# static fields
.field private static mWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private bCanceled:Z

.field private mCurrentConn:Ljava/net/HttpURLConnection;

.field private mCurrentTransferItem:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

.field private mFileEventHandler:Landroid/os/Handler;

.field private mFileEventHandlerMutex:Ljava/lang/Object;

.field private mUploadPath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mWorkerThread:Landroid/os/HandlerThread;

    .line 40
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "File Downloader Manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mWorkerThread:Landroid/os/HandlerThread;

    .line 41
    sget-object v0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandlerMutex:Ljava/lang/Object;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mUploadPath:Ljava/io/File;

    .line 48
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    .line 49
    iput-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentTransferItem:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mUploadPath:Ljava/io/File;

    .line 55
    return-void
.end method


# virtual methods
.method public cancelTransfer(Ljava/lang/String;)V
    .registers 5
    .parameter "mSessionID"

    .prologue
    .line 100
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelTransfer"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz p1, :cond_4a

    .line 102
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentTransferItem:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    if-eqz v0, :cond_4a

    .line 103
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentTransferItem:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 104
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentTransferItem:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 105
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentTransferItem:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 107
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4a

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    .line 109
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 112
    :cond_4a
    return-void
.end method

.method downloadFile(Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;)V
    .registers 16
    .parameter

    .prologue
    .line 127
    if-nez p1, :cond_3

    .line 227
    :goto_2
    return-void

    .line 130
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentTransferItem:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_e

    .line 133
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 136
    :cond_e
    :try_start_e
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 138
    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 139
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    const-string v1, "USER-AGENT"

    invoke-static {}, Lcom/samsung/http/HTTP;->getUserAgentValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_34} :catch_dd

    .line 148
    const/4 v3, 0x0

    .line 149
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    .line 153
    :try_start_3f
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->getArbitaryPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_211
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_46} :catch_28f

    move-result-object v2

    .line 155
    if-nez v2, :cond_f4

    .line 156
    :try_start_49
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Error to create a new file"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_285
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_67} :catch_67

    .line 196
    :catch_67
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 198
    :goto_6a
    :try_start_6a
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 199
    if-eqz v1, :cond_72

    .line 200
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 201
    :cond_72
    const-string v3, "[FT]-Stack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error while retrieving file from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v3, "[FT]-Stack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception string"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_6a .. :try_end_a2} :catchall_28d

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    if-eqz v0, :cond_b5

    .line 205
    if-eqz v1, :cond_b5

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    .line 208
    const-string v0, "[FT]-Stack"

    const-string v3, "File is canceled.. deleted downloaded file"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_b5
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    .line 216
    :cond_c1
    if-eqz v1, :cond_1f4

    :try_start_c3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 217
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V

    .line 220
    :goto_d0
    if-eqz v2, :cond_d5

    .line 221
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_d5} :catch_1fa

    .line 225
    :cond_d5
    :goto_d5
    const v0, 0x182bc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->notifyFileEvent(ILcom/samsung/android/application/fileshare/api/TransferItem;)V

    goto/16 :goto_2

    .line 142
    :catch_dd
    move-exception v0

    .line 143
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error to create a new URL"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 160
    :cond_f4
    :try_start_f4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f9
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_285
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f9} :catch_67

    .line 161
    :try_start_f9
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_fe
    .catchall {:try_start_f9 .. :try_end_fe} :catchall_289
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fe} :catch_1ef

    move-result v0

    .line 162
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_159

    .line 204
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    if-eqz v0, :cond_116

    .line 205
    if-eqz v2, :cond_116

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    .line 208
    const-string v0, "[FT]-Stack"

    const-string v1, "File is canceled.. deleted downloaded file"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_116
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_122

    .line 212
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    .line 216
    :cond_122
    if-eqz v2, :cond_13e

    :try_start_124
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 217
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V

    .line 220
    :goto_131
    if-eqz v4, :cond_136

    .line 221
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_124 .. :try_end_136} :catch_143

    .line 225
    :cond_136
    :goto_136
    const v0, 0x182bc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->notifyFileEvent(ILcom/samsung/android/application/fileshare/api/TransferItem;)V

    goto/16 :goto_2

    .line 219
    :cond_13e
    const/4 v0, 0x0

    :try_start_13f
    invoke-virtual {p1, v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_142} :catch_143

    goto :goto_131

    .line 222
    :catch_143
    move-exception v0

    .line 223
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadFile exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 166
    :cond_159
    const/4 v1, 0x0

    .line 169
    :try_start_15a
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 170
    const v0, 0x182ba

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->notifyFileEvent(ILcom/samsung/android/application/fileshare/api/TransferItem;)V

    .line 172
    const/high16 v0, 0x8

    new-array v0, v0, [B

    .line 174
    const-wide/16 v7, 0x0

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getFileSize()J

    move-result-wide v5

    .line 176
    const-wide/16 v10, 0x64

    div-long v10, v5, v10

    .line 177
    const-wide/16 v5, 0x0

    .line 179
    :cond_176
    :goto_176
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gez v3, :cond_1d0

    .line 190
    const-string v0, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Total Read Bytes: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catchall {:try_start_15a .. :try_end_190} :catchall_1e8

    .line 192
    if-eqz v1, :cond_195

    .line 193
    :try_start_192
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_195
    .catchall {:try_start_192 .. :try_end_195} :catchall_289
    .catch Ljava/lang/Exception; {:try_start_192 .. :try_end_195} :catch_1ef

    .line 204
    :cond_195
    iget-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    if-eqz v0, :cond_1a8

    .line 205
    if-eqz v2, :cond_1a8

    .line 206
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    .line 208
    const-string v0, "[FT]-Stack"

    const-string v1, "File is canceled.. deleted downloaded file"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1a8
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1b4

    .line 212
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    .line 216
    :cond_1b4
    if-eqz v2, :cond_268

    :try_start_1b6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_268

    .line 217
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V

    .line 220
    :goto_1c3
    if-eqz v4, :cond_1c8

    .line 221
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1c8} :catch_26e

    .line 225
    :cond_1c8
    :goto_1c8
    const v0, 0x182bc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->notifyFileEvent(ILcom/samsung/android/application/fileshare/api/TransferItem;)V

    goto/16 :goto_2

    .line 180
    :cond_1d0
    int-to-long v12, v3

    add-long/2addr v7, v12

    .line 181
    int-to-long v12, v3

    add-long/2addr v5, v12

    .line 182
    :try_start_1d4
    invoke-virtual {p1, v7, v8}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadSize(J)V

    .line 183
    const/4 v12, 0x0

    invoke-virtual {v4, v0, v12, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 185
    cmp-long v3, v5, v10

    if-lez v3, :cond_176

    .line 186
    const v3, 0x182bd

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->notifyFileEvent(ILcom/samsung/android/application/fileshare/api/TransferItem;)V
    :try_end_1e5
    .catchall {:try_start_1d4 .. :try_end_1e5} :catchall_1e8

    .line 187
    const-wide/16 v5, 0x0

    goto :goto_176

    .line 191
    :catchall_1e8
    move-exception v0

    .line 192
    if-eqz v1, :cond_1ee

    .line 193
    :try_start_1eb
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 195
    :cond_1ee
    throw v0
    :try_end_1ef
    .catchall {:try_start_1eb .. :try_end_1ef} :catchall_289
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_1ef} :catch_1ef

    .line 196
    :catch_1ef
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto/16 :goto_6a

    .line 219
    :cond_1f4
    const/4 v0, 0x0

    :try_start_1f5
    invoke-virtual {p1, v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_1f8} :catch_1fa

    goto/16 :goto_d0

    .line 222
    :catch_1fa
    move-exception v0

    .line 223
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadFile exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d5

    .line 203
    :catchall_211
    move-exception v0

    move-object v2, v3

    .line 204
    :goto_213
    iget-boolean v3, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    if-eqz v3, :cond_226

    .line 205
    if-eqz v1, :cond_226

    .line 206
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 207
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    .line 208
    const-string v3, "[FT]-Stack"

    const-string v4, "File is canceled.. deleted downloaded file"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_226
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_232

    .line 212
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mCurrentConn:Ljava/net/HttpURLConnection;

    .line 216
    :cond_232
    if-eqz v1, :cond_24d

    :try_start_234
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_24d

    .line 217
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V

    .line 220
    :goto_241
    if-eqz v2, :cond_246

    .line 221
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_246} :catch_252

    .line 225
    :cond_246
    :goto_246
    const v1, 0x182bc

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->notifyFileEvent(ILcom/samsung/android/application/fileshare/api/TransferItem;)V

    .line 226
    throw v0

    .line 219
    :cond_24d
    const/4 v1, 0x0

    :try_start_24e
    invoke-virtual {p1, v1}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V
    :try_end_251
    .catch Ljava/lang/Exception; {:try_start_24e .. :try_end_251} :catch_252

    goto :goto_241

    .line 222
    :catch_252
    move-exception v1

    .line 223
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadFile exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_246

    .line 219
    :cond_268
    const/4 v0, 0x0

    :try_start_269
    invoke-virtual {p1, v0}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->setDownloadedUri(Landroid/net/Uri;)V
    :try_end_26c
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_26c} :catch_26e

    goto/16 :goto_1c3

    .line 222
    :catch_26e
    move-exception v0

    .line 223
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "downloadFile exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c8

    .line 203
    :catchall_285
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_213

    :catchall_289
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    goto :goto_213

    :catchall_28d
    move-exception v0

    goto :goto_213

    .line 196
    :catch_28f
    move-exception v0

    move-object v2, v3

    goto/16 :goto_6a
.end method

.method getArbitaryPath(Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .parameter

    .prologue
    .line 231
    const-string v0, ""

    .line 232
    const-string v0, ""

    .line 234
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 235
    const/4 v1, -0x1

    if-ne v2, v1, :cond_42

    .line 242
    :goto_d
    const/4 v2, 0x1

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    :cond_1f
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mUploadPath:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4d

    .line 247
    const-string v0, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "downloadFile Name"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 253
    :goto_41
    return-object v0

    .line 238
    :cond_42
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    goto :goto_d

    .line 250
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    add-int/lit8 v2, v2, 0x1

    .line 252
    const/16 v3, 0x1f4

    if-le v2, v3, :cond_1f

    .line 253
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 80
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 90
    :cond_5
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 91
    return-void

    .line 82
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/samsung/android/application/fileshare/api/TransferItem;

    if-eqz v0, :cond_5

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->bCanceled:Z

    .line 86
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->downloadFile(Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;)V

    goto :goto_5

    .line 80
    :pswitch_data_1a
    .packed-switch 0x182b9
        :pswitch_9
    .end packed-switch
.end method

.method notifyFileEvent(ILcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 6
    .parameter "event"
    .parameter "fileKey"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandlerMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 116
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandler:Landroid/os/Handler;

    if-eqz v1, :cond_19

    .line 118
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .end local v0           #msg:Landroid/os/Message;
    :cond_19
    monitor-exit v2

    .line 124
    return-void

    .line 115
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setFileEventHandler(Landroid/os/Handler;)V
    .registers 4
    .parameter "handler"

    .prologue
    .line 94
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandlerMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mFileEventHandler:Landroid/os/Handler;

    .line 94
    monitor-exit v1

    .line 97
    return-void

    .line 94
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setUploadPath(Ljava/io/File;)Z
    .registers 4
    .parameter "file"

    .prologue
    const/4 v0, 0x1

    .line 58
    if-eqz p1, :cond_27

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v1

    if-nez v1, :cond_27

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 62
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mUploadPath:Ljava/io/File;

    .line 71
    :goto_17
    return v0

    .line 66
    :cond_18
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 67
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->mUploadPath:Ljava/io/File;

    goto :goto_17

    .line 71
    :cond_27
    const/4 v0, 0x0

    goto :goto_17
.end method
