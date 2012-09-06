.class public Lcom/google/android/apps/unveil/nonstop/FrameSaver;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "FrameSaver.java"


# static fields
.field private static final INTER_SAVE_DELAY_MS:J = 0xc8L

.field private static final PREVIEW_DIR:Ljava/lang/String; = "/goggles_sessions"

.field private static final SAVE_PREVIEW:Z


# instance fields
.field private final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

.field private saveTimer:Lcom/google/android/apps/unveil/env/Stopwatch;

.field private sessionDir:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/nonstop/FrameSaver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method private createSessionDir()Ljava/lang/String;
    .registers 12

    .prologue
    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 49
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy_MM_dd"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, dateFormatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, dateString:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v6, "hh_mm_ss"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 53
    .local v4, timeFormatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, timeString:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/goggles_sessions"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v3, file:Ljava/io/File;
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/FrameSaver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Creating session dir: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private saveFrameToDisk(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 14
    .parameter "previewFrame"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "previewframe-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%04d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getFrameNum()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%03d"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getOpticalFlowDelta()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".yuv"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, fileName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/apps/unveil/nonstop/FrameSaver;->sessionDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, filePath:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/unveil/nonstop/FrameSaver;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v7, "Saving file: %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v10

    invoke-virtual {v6, v7, v8}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, file:Ljava/io/File;
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v5

    .line 80
    .local v5, rawData:[B
    :try_start_76
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 81
    .local v3, fileOut:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 82
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_81} :catch_82
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_87

    .line 88
    .end local v3           #fileOut:Ljava/io/FileOutputStream;
    :goto_81
    return-void

    .line 83
    :catch_82
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_81

    .line 85
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_87
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81
.end method


# virtual methods
.method public onInit(Lcom/google/android/apps/unveil/env/Size;)V
    .registers 2
    .parameter "size"

    .prologue
    .line 110
    return-void
.end method

.method public onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 2
    .parameter "frame"

    .prologue
    .line 103
    return-void
.end method
