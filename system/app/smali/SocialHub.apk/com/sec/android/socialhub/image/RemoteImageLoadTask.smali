.class public Lcom/sec/android/socialhub/image/RemoteImageLoadTask;
.super Landroid/os/AsyncTask;
.source "RemoteImageLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Lcom/sec/android/socialhub/image/RemoteImageInfo;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private bSuccess:Z

.field protected mContext:Landroid/content/Context;

.field private mErrorResource:I

.field private mFile:Ljava/io/File;

.field private mFileSize:Ljava/lang/Long;

.field private mListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

.field private mPreHeight:I

.field private mPreWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;IILjava/io/File;Ljava/lang/Long;)V
    .registers 9
    .parameter "context"
    .parameter "listener"
    .parameter "width"
    .parameter "height"
    .parameter "file"
    .parameter "filesize"

    .prologue
    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 22
    iput-object v1, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mFile:Ljava/io/File;

    .line 23
    iput-object v1, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mFileSize:Ljava/lang/Long;

    .line 27
    iput v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mPreWidth:I

    .line 28
    iput v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mPreHeight:I

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->bSuccess:Z

    .line 31
    const v0, 0x7f0800c5

    iput v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mErrorResource:I

    .line 33
    iput-object v1, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    .line 43
    iput-object p1, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mContext:Landroid/content/Context;

    .line 44
    iput p3, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mPreWidth:I

    .line 45
    iput p4, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mPreHeight:I

    .line 46
    iput-object p2, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    .line 47
    iput-object p5, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mFile:Ljava/io/File;

    .line 48
    iput-object p6, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mFileSize:Ljava/lang/Long;

    .line 49
    return-void
.end method

.method private loadRemoteImage(Landroid/net/Uri;)Lcom/sec/android/socialhub/image/RemoteImageInfo;
    .registers 15
    .parameter "uri"

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    .line 101
    .local v6, start:J
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, scheme:Ljava/lang/String;
    const-string v8, "RemoteImageLoadTask"

    const-string v9, "loadRemoteImage()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scheme - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v4, Lcom/sec/android/socialhub/image/RemoteImageInfo;

    invoke-direct {v4}, Lcom/sec/android/socialhub/image/RemoteImageInfo;-><init>()V

    .line 107
    .local v4, info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    iput-object p1, v4, Lcom/sec/android/socialhub/image/RemoteImageInfo;->mOriginalUri:Landroid/net/Uri;

    .line 108
    iget v8, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mPreWidth:I

    iput v8, v4, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewWidth:I

    .line 109
    iget v8, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mPreHeight:I

    iput v8, v4, Lcom/sec/android/socialhub/image/RemoteImageInfo;->previewHeight:I

    .line 111
    iget-object v8, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mContext:Landroid/content/Context;

    invoke-static {v8, v5}, Lcom/sec/android/socialhub/image/ImageSchemeHandleFactory;->createSchemeHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/image/ImageSchemeHandler;

    move-result-object v3

    .line 115
    .local v3, image:Lcom/sec/android/socialhub/image/ImageSchemeHandler;
    :try_start_37
    iget-object v8, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mFile:Ljava/io/File;

    iget-object v9, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mFileSize:Ljava/lang/Long;

    invoke-virtual {v3, v4, v8, v9}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->loadImageInfo(Lcom/sec/android/socialhub/image/RemoteImageInfo;Ljava/io/File;Ljava/lang/Long;)V
    :try_end_3e
    .catch Lcom/sec/android/socialhub/exception/SocialHubNotSupportException; {:try_start_37 .. :try_end_3e} :catch_5f

    .line 130
    :goto_3e
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    .line 132
    .local v1, end:J
    const-string v8, "RemoteImageLoadTask"

    const-string v9, "loadRemoteImage()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "total loading time - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v1, v6

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v4

    .line 117
    .end local v1           #end:J
    :catch_5f
    move-exception v0

    .line 119
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;->printStackTrace()V

    .line 120
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->bSuccess:Z

    .line 122
    iget v8, v0, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;->errorCode:I

    packed-switch v8, :pswitch_data_72

    goto :goto_3e

    .line 125
    :pswitch_6c
    const v8, 0x7f0800c5

    iput v8, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mErrorResource:I

    goto :goto_3e

    .line 122
    :pswitch_data_72
    .packed-switch 0x2
        :pswitch_6c
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;
    .registers 9
    .parameter "uri"

    .prologue
    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, info:Lcom/sec/android/socialhub/image/RemoteImageInfo;
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v3, :cond_f

    aget-object v4, v0, v1

    .line 58
    .local v4, path:Landroid/net/Uri;
    invoke-direct {p0, v4}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->loadRemoteImage(Landroid/net/Uri;)Lcom/sec/android/socialhub/image/RemoteImageInfo;

    move-result-object v2

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 61
    .end local v4           #path:Landroid/net/Uri;
    :cond_f
    const/4 v5, 0x1

    new-array v5, v5, [Lcom/sec/android/socialhub/image/RemoteImageInfo;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->publishProgress([Ljava/lang/Object;)V

    .line 63
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    if-eqz v0, :cond_c

    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    invoke-interface {v0}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;->onStartLoad()V

    .line 81
    :cond_c
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/sec/android/socialhub/image/RemoteImageInfo;)V
    .registers 6
    .parameter "values"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    if-eqz v0, :cond_13

    .line 90
    iget-object v0, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mListener:Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-boolean v2, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->bSuccess:Z

    iget v3, p0, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->mErrorResource:I

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask$ILoadCompleteListener;->onLoadCompleted(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 92
    :cond_13
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    check-cast p1, [Lcom/sec/android/socialhub/image/RemoteImageInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/image/RemoteImageLoadTask;->onProgressUpdate([Lcom/sec/android/socialhub/image/RemoteImageInfo;)V

    return-void
.end method
