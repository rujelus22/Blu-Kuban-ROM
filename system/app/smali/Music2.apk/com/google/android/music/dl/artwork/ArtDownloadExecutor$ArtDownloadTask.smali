.class Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;
.super Ljava/lang/Object;
.source "ArtDownloadExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtDownloadTask"
.end annotation


# instance fields
.field protected final LOGV:Z

.field private final mAlbumId:Ljava/lang/Long;

.field private mArtworkExists:Z

.field private mDownloadSuccessful:Z

.field private mLocalLocation:Ljava/io/File;

.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;Ljava/lang/Long;)V
    .registers 4
    .parameter
    .parameter "albumId"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v0, "ArtDownloadTask"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->LOGV:Z

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    .line 162
    iput-object p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    return-object v0
.end method

.method private streamFromCloud(Ljava/lang/String;)V
    .registers 11
    .parameter "remoteLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 190
    .local v0, albumArtClient:Landroid/net/http/AndroidHttpClient;
    iget-boolean v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->LOGV:Z

    if-eqz v7, :cond_1e

    .line 191
    const-string v7, "ArtDownloadTask-Curl"

    const/4 v8, 0x2

    invoke-virtual {v0, v7, v8}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 194
    :cond_1e
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 198
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 199
    .local v3, out:Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 201
    .local v2, is:Ljava/io/InputStream;
    :try_start_2b
    invoke-virtual {v0, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 202
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 204
    const/16 v7, 0x2000

    new-array v1, v7, [B

    .line 205
    .local v1, buff:[B
    const/4 v5, 0x0

    .line 206
    .local v5, read:I
    :goto_3c
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_55

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v3, v1, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_47
    .catchall {:try_start_2b .. :try_end_47} :catchall_48

    goto :goto_3c

    .line 211
    .end local v1           #buff:[B
    .end local v5           #read:I
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catchall_48
    move-exception v7

    .line 212
    if-eqz v2, :cond_4e

    .line 213
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_68

    .line 219
    :cond_4e
    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_6a

    .line 223
    :goto_51
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v7

    .line 209
    .restart local v1       #buff:[B
    .restart local v5       #read:I
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    :cond_55
    const/4 v7, 0x1

    :try_start_56
    iput-boolean v7, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_48

    .line 212
    if-eqz v2, :cond_5d

    .line 213
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_64

    .line 219
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_66

    .line 223
    :goto_60
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 225
    return-void

    .line 215
    :catch_64
    move-exception v7

    goto :goto_5d

    .line 220
    :catch_66
    move-exception v7

    goto :goto_60

    .line 215
    .end local v1           #buff:[B
    .end local v5           #read:I
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    :catch_68
    move-exception v8

    goto :goto_4e

    .line 220
    :catch_6a
    move-exception v8

    goto :goto_51
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 166
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/store/Store;->getRemoteArtLocationForAlbum(J)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, remoteLocation:Ljava/lang/String;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    .line 169
    :cond_1c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    .line 172
    const-string v2, "ArtDownloadTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown albumId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_39
    return-void

    .line 176
    :cond_3a
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;
    invoke-static {v3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocation:Ljava/io/File;

    .line 180
    :try_start_5c
    invoke-direct {p0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->streamFromCloud(Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_39

    .line 181
    :catch_60
    move-exception v0

    .line 182
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ArtDownloadTask"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39
.end method

.method public wasDownloadSuccessful()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    return v0
.end method
