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

.field private mLocalLocationFullPath:Ljava/io/File;

.field private mLocalLocationRelativePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;


# direct methods
.method public constructor <init>(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;Ljava/lang/Long;)V
    .registers 4
    .parameter
    .parameter "albumId"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string v0, "ArtDownloadTask"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->LOGV:Z

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    .line 196
    iput-object p2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationFullPath:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationRelativePath:Ljava/lang/String;

    return-object v0
.end method

.method private streamFromCloud(Ljava/lang/String;)V
    .registers 13
    .parameter "remoteLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 223
    iget-object v8, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 225
    .local v0, albumArtClient:Landroid/net/http/AndroidHttpClient;
    iget-boolean v8, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->LOGV:Z

    if-eqz v8, :cond_1f

    .line 226
    const-string v8, "ArtDownloadTask-Curl"

    const/4 v9, 0x2

    invoke-virtual {v0, v8, v9}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 229
    :cond_1f
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 233
    .local v5, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationFullPath:Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 234
    .local v4, out:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 236
    .local v3, is:Ljava/io/InputStream;
    :try_start_2c
    invoke-virtual {v0, v5}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 237
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 239
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 240
    .local v1, buff:[B
    const/4 v6, 0x0

    .line 241
    .local v6, read:I
    :goto_3d
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_60

    .line 242
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_48
    .catchall {:try_start_2c .. :try_end_48} :catchall_49

    goto :goto_3d

    .line 246
    .end local v1           #buff:[B
    .end local v6           #read:I
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catchall_49
    move-exception v8

    .line 247
    if-eqz v3, :cond_4f

    .line 248
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_83

    .line 254
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 255
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V

    .line 256
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_5c} :catch_7d

    .line 261
    :goto_5c
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v8

    .line 244
    .restart local v1       #buff:[B
    .restart local v6       #read:I
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :cond_60
    const/4 v8, 0x1

    :try_start_61
    iput-boolean v8, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_49

    .line 247
    if-eqz v3, :cond_68

    .line 248
    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_81

    .line 254
    :cond_68
    :goto_68
    :try_start_68
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 255
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/FileDescriptor;->sync()V

    .line 256
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_75} :catch_79

    .line 261
    :goto_75
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 263
    return-void

    .line 257
    :catch_79
    move-exception v2

    .line 258
    .local v2, e:Ljava/io/IOException;
    iput-boolean v10, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    goto :goto_75

    .line 257
    .end local v1           #buff:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #read:I
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catch_7d
    move-exception v2

    .line 258
    .restart local v2       #e:Ljava/io/IOException;
    iput-boolean v10, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    goto :goto_5c

    .line 250
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buff:[B
    .restart local v6       #read:I
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :catch_81
    move-exception v8

    goto :goto_68

    .end local v1           #buff:[B
    .end local v6           #read:I
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catch_83
    move-exception v9

    goto :goto_4f
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 200
    iget-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$400(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/store/Store;->getRemoteArtLocationForAlbum(J)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, remoteLocation:Ljava/lang/String;
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    .line 203
    :cond_1c
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mArtworkExists:Z

    .line 206
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

    .line 219
    :goto_39
    return-void

    .line 210
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mAlbumId:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationRelativePath:Ljava/lang/String;

    .line 212
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->this$0:Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;

    #getter for: Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->mCacheDir:Ljava/io/File;
    invoke-static {v3}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;->access$500(Lcom/google/android/music/dl/artwork/ArtDownloadExecutor;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationRelativePath:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mLocalLocationFullPath:Ljava/io/File;

    .line 215
    :try_start_64
    invoke-direct {p0, v1}, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->streamFromCloud(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_39

    .line 216
    :catch_68
    move-exception v0

    .line 217
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
    .line 266
    iget-boolean v0, p0, Lcom/google/android/music/dl/artwork/ArtDownloadExecutor$ArtDownloadTask;->mDownloadSuccessful:Z

    return v0
.end method
