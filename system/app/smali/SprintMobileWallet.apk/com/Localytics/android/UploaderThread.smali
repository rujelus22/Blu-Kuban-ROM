.class public Lcom/Localytics/android/UploaderThread;
.super Ljava/lang/Thread;
.source "UploaderThread.java"


# static fields
.field private static final ANALYTICS_URL:Ljava/lang/String; = "http://analytics.localytics.com/api/datapoints/bulk"

.field private static final BUFFER_SIZE:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "Localytics_uploader"


# instance fields
.field private _closeFilePrefix:Ljava/lang/String;

.field private _completeCallback:Ljava/lang/Runnable;

.field private _localyticsDir:Ljava/io/File;

.field private _sessionFilePrefix:Ljava/lang/String;

.field private _uploaderFilePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6
    .parameter "localyticsDir"
    .parameter "sessionFilePrefix"
    .parameter "uploaderFilePrefix"
    .parameter "closeFilePrefix"
    .parameter "completeCallback"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    .line 73
    iput-object p2, p0, Lcom/Localytics/android/UploaderThread;->_sessionFilePrefix:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/Localytics/android/UploaderThread;->_closeFilePrefix:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/Localytics/android/UploaderThread;->_completeCallback:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/Localytics/android/UploaderThread;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/Localytics/android/UploaderThread;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/Localytics/android/UploaderThread;->_sessionFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/Localytics/android/UploaderThread;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/Localytics/android/UploaderThread;->_closeFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method private createPostBodyFromFiles(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "basePath"
    .parameter "uploaderFiles"

    .prologue
    .line 262
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .local v4, postBody:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, currentFile:I
    :goto_6
    array-length v6, p2

    if-lt v1, v6, :cond_e

    .line 295
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 270
    :cond_e
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, inputFile:Ljava/io/File;
    :try_start_2c
    new-instance v5, Ljava/io/BufferedReader;

    .line 275
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 276
    const/16 v7, 0x400

    .line 274
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 277
    .local v5, reader:Ljava/io/BufferedReader;
    const/16 v6, 0x400

    new-array v0, v6, [C

    .line 279
    .local v0, buf:[C
    :goto_3c
    invoke-virtual {v5, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    .local v3, numRead:I
    if-gtz v3, :cond_48

    .line 283
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 268
    .end local v0           #buf:[C
    .end local v3           #numRead:I
    .end local v5           #reader:Ljava/io/BufferedReader;
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 281
    .restart local v0       #buf:[C
    .restart local v3       #numRead:I
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :cond_48
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4c} :catch_4f

    goto :goto_3c

    .line 285
    .end local v0           #buf:[C
    .end local v3           #numRead:I
    .end local v5           #reader:Ljava/io/BufferedReader;
    :catch_4d
    move-exception v6

    goto :goto_45

    .line 289
    :catch_4f
    move-exception v6

    goto :goto_45
.end method

.method private getSessionFilenameFromCloseFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "closeFilename"

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/Localytics/android/UploaderThread;->_sessionFilePrefix:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/Localytics/android/UploaderThread;->_closeFilePrefix:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private renameOrAppendCloseFiles(Ljava/lang/String;)V
    .registers 9
    .parameter "basePath"

    .prologue
    .line 177
    new-instance v1, Lcom/Localytics/android/UploaderThread$3;

    invoke-direct {v1, p0}, Lcom/Localytics/android/UploaderThread$3;-><init>(Lcom/Localytics/android/UploaderThread;)V

    .line 186
    .local v1, filter:Ljava/io/FilenameFilter;
    iget-object v5, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v5, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, originalFiles:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, currentFile:I
    :goto_c
    array-length v5, v3

    if-lt v0, v5, :cond_10

    .line 198
    return-void

    .line 189
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, originalFileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 194
    iget-object v6, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 195
    aget-object v6, v3, v0

    invoke-direct {p0, v6}, Lcom/Localytics/android/UploaderThread;->getSessionFilenameFromCloseFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 196
    .local v4, targetFileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/Localytics/android/UploaderThread;->renameOrAppendFile(Ljava/io/File;Ljava/io/File;)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private static renameOrAppendFile(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 223
    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 224
    .local v1, in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 226
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 228
    .local v0, buf:[B
    :goto_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    if-gtz v2, :cond_25

    .line 232
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 233
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 249
    .end local v0           #buf:[B
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #len:I
    .end local v3           #out:Ljava/io/OutputStream;
    :goto_24
    return-void

    .line 230
    .restart local v0       #buf:[B
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #len:I
    .restart local v3       #out:Ljava/io/OutputStream;
    :cond_25
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_29} :catch_2a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_30

    goto :goto_15

    .line 236
    .end local v0           #buf:[B
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #len:I
    .end local v3           #out:Ljava/io/OutputStream;
    :catch_2a
    move-exception v4

    goto :goto_24

    .line 247
    :cond_2c
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_24

    .line 240
    :catch_30
    move-exception v4

    goto :goto_24
.end method

.method private renameOrAppendSessionFiles(Ljava/lang/String;)V
    .registers 9
    .parameter "basePath"

    .prologue
    .line 147
    new-instance v1, Lcom/Localytics/android/UploaderThread$2;

    invoke-direct {v1, p0}, Lcom/Localytics/android/UploaderThread$2;-><init>(Lcom/Localytics/android/UploaderThread;)V

    .line 156
    .local v1, filter:Ljava/io/FilenameFilter;
    iget-object v5, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v5, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, originalFiles:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, currentFile:I
    :goto_c
    array-length v5, v3

    if-lt v0, v5, :cond_10

    .line 163
    return-void

    .line 159
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, originalFileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/Localytics/android/UploaderThread;->_uploaderFilePrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, targetFileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/Localytics/android/UploaderThread;->renameOrAppendFile(Ljava/io/File;Ljava/io/File;)V

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private uploadSessions(Ljava/lang/String;)Z
    .registers 10
    .parameter "ymlBlob"

    .prologue
    const/4 v6, 0x0

    .line 305
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 306
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    const-string v7, "http://analytics.localytics.com/api/datapoints/bulk"

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 310
    .local v2, method:Lorg/apache/http/client/methods/HttpPost;
    :try_start_d
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v3, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 311
    .local v3, postBody:Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 312
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 314
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_1c} :catch_1f
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_1c} :catch_21
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_23

    move-result-object v5

    .line 320
    .local v5, status:Lorg/apache/http/StatusLine;
    const/4 v6, 0x1

    .line 337
    .end local v3           #postBody:Lorg/apache/http/entity/StringEntity;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #status:Lorg/apache/http/StatusLine;
    :goto_1e
    return v6

    .line 324
    :catch_1f
    move-exception v1

    .line 327
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_1e

    .line 329
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_21
    move-exception v1

    .line 332
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    goto :goto_1e

    .line 334
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_23
    move-exception v1

    .line 337
    .local v1, e:Ljava/io/IOException;
    goto :goto_1e
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 85
    const/4 v3, 0x0

    .line 89
    .local v3, numFilesToUpload:I
    :try_start_1
    iget-object v7, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    if-eqz v7, :cond_37

    iget-object v7, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 91
    iget-object v7, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, basePath:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/Localytics/android/UploaderThread;->renameOrAppendSessionFiles(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v0}, Lcom/Localytics/android/UploaderThread;->renameOrAppendCloseFiles(Ljava/lang/String;)V

    .line 99
    new-instance v2, Lcom/Localytics/android/UploaderThread$1;

    invoke-direct {v2, p0}, Lcom/Localytics/android/UploaderThread$1;-><init>(Lcom/Localytics/android/UploaderThread;)V

    .line 107
    .local v2, filter:Ljava/io/FilenameFilter;
    iget-object v7, p0, Lcom/Localytics/android/UploaderThread;->_localyticsDir:Ljava/io/File;

    invoke-virtual {v7, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, uploaderFiles:[Ljava/lang/String;
    array-length v3, v6

    .line 109
    invoke-direct {p0, v0, v6}, Lcom/Localytics/android/UploaderThread;->createPostBodyFromFiles(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, postBody:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/Localytics/android/UploaderThread;->uploadSessions(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 117
    const/4 v1, 0x0

    .local v1, currentFile:I
    :goto_34
    array-length v7, v6

    if-lt v1, v7, :cond_41

    .line 126
    .end local v0           #basePath:Ljava/lang/String;
    .end local v1           #currentFile:I
    .end local v2           #filter:Ljava/io/FilenameFilter;
    .end local v4           #postBody:Ljava/lang/String;
    .end local v6           #uploaderFiles:[Ljava/lang/String;
    :cond_37
    iget-object v7, p0, Lcom/Localytics/android/UploaderThread;->_completeCallback:Ljava/lang/Runnable;

    if-eqz v7, :cond_40

    .line 128
    iget-object v7, p0, Lcom/Localytics/android/UploaderThread;->_completeCallback:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 135
    :cond_40
    :goto_40
    return-void

    .line 119
    .restart local v0       #basePath:Ljava/lang/String;
    .restart local v1       #currentFile:I
    .restart local v2       #filter:Ljava/io/FilenameFilter;
    .restart local v4       #postBody:Ljava/lang/String;
    .restart local v6       #uploaderFiles:[Ljava/lang/String;
    :cond_41
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v5, uploadedFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_65

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    .line 131
    .end local v0           #basePath:Ljava/lang/String;
    .end local v1           #currentFile:I
    .end local v2           #filter:Ljava/io/FilenameFilter;
    .end local v4           #postBody:Ljava/lang/String;
    .end local v5           #uploadedFile:Ljava/io/File;
    .end local v6           #uploaderFiles:[Ljava/lang/String;
    :catch_65
    move-exception v7

    goto :goto_40
.end method
