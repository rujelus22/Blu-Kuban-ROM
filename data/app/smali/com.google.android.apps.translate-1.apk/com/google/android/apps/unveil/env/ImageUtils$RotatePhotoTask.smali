.class public Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;
.super Landroid/os/AsyncTask;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RotatePhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/unveil/env/Picture;",
        ">;"
    }
.end annotation


# instance fields
.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private final outputMaxPixels:I

.field private final picture:Lcom/google/android/apps/unveil/env/Picture;

.field private final rotationAngle:I

.field private timeTaken:J


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/Picture;I)V
    .registers 4
    .parameter "picture"
    .parameter "outputMaxPixels"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/env/Picture;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->rotationAngle:I

    .line 53
    iput p2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->outputMaxPixels:I

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->picture:Lcom/google/android/apps/unveil/env/Picture;

    .line 55
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/unveil/env/Picture;
    .registers 11
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-string v6, "RotatePhotoTask"

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 63
    .local v2, tick:J
    :try_start_f
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->picture:Lcom/google/android/apps/unveil/env/Picture;

    iget v6, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->rotationAngle:I

    iget v7, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->outputMaxPixels:I

    #calls: Lcom/google/android/apps/unveil/env/ImageUtils;->rotateAndCompressImage(Lcom/google/android/apps/unveil/env/Picture;II)[B
    invoke-static {v5, v6, v7}, Lcom/google/android/apps/unveil/env/ImageUtils;->access$000(Lcom/google/android/apps/unveil/env/Picture;II)[B

    move-result-object v1

    .line 65
    .local v1, output:[B
    if-nez v1, :cond_26

    .line 66
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Failed to rotate and compress image."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .end local v1           #output:[B
    :goto_25
    return-object v4

    .line 69
    .restart local v1       #output:[B
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    iput-wide v5, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->timeTaken:J

    .line 70
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "Returning rotated and compressed JpegPicture."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v5}, Lcom/google/android/apps/unveil/env/Picture;->getOrientation()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->picture:Lcom/google/android/apps/unveil/env/Picture;

    invoke-virtual {v6}, Lcom/google/android/apps/unveil/env/Picture;->getSource()I

    move-result v6

    invoke-static {v1, v5, v6}, Lcom/google/android/apps/unveil/env/PictureFactory;->createJpeg([BII)Lcom/google/android/apps/unveil/env/Picture;
    :try_end_46
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_46} :catch_48

    move-result-object v4

    goto :goto_25

    .line 74
    .end local v1           #output:[B
    :catch_48
    move-exception v0

    .line 75
    .local v0, e:Ljava/lang/OutOfMemoryError;
    iget-object v5, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v6, "OutOfMemoryError when rotating photo."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->timeTaken:J

    goto :goto_25
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Time taken to rencode and rotate: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->timeTaken:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    check-cast p1, Lcom/google/android/apps/unveil/env/Picture;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/ImageUtils$RotatePhotoTask;->onPostExecute(Lcom/google/android/apps/unveil/env/Picture;)V

    return-void
.end method
