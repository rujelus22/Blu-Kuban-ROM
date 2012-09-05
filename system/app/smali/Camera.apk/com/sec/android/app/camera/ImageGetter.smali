.class Lcom/sec/android/app/camera/ImageGetter;
.super Ljava/lang/Object;
.source "ImageGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ImageGetter$1;,
        Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageGetter"


# instance fields
.field private mCB:Lcom/sec/android/app/camera/ImageGetterCallback;

.field private volatile mCancel:Z

.field private mCr:Landroid/content/ContentResolver;

.field private mCurrentPosition:I

.field private mCurrentSerial:I

.field private mDone:Z

.field private mGetterThread:Ljava/lang/Thread;

.field private mHandler:Lcom/sec/android/app/camera/GetterHandler;

.field private mIdle:Z

.field private mImageList:Lcom/sec/android/app/camera/gallery/IImageList;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .registers 5
    .parameter "cr"

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mDone:Z

    .line 243
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mCr:Landroid/content/ContentResolver;

    .line 244
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/ImageGetter$ImageGetterRunnable;-><init>(Lcom/sec/android/app/camera/ImageGetter;Lcom/sec/android/app/camera/ImageGetter$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    const-string v1, "ImageGettter"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ImageGetter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/ImageGetterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ImageGetter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ImageGetter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mDone:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/ImageGetter;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/ImageGetter;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/ImageGetter;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/gallery/IImageList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mImageList:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/ImageGetter;)Lcom/sec/android/app/camera/GetterHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    return-object v0
.end method

.method private declared-synchronized cancelCurrentAndWait()V
    .registers 3

    .prologue
    .line 259
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrent()V

    .line 260
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mIdle:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 262
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_4

    .line 263
    :catch_d
    move-exception v0

    goto :goto_4

    .line 267
    :cond_f
    monitor-exit p0

    return-void

    .line 259
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancelCurrent()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 251
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1e

    :goto_6
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->Assert(Z)V

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    .line 253
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCr:Landroid/content/ContentResolver;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_20

    .line 255
    monitor-exit p0

    return-void

    .line 251
    :cond_1e
    const/4 v0, 0x0

    goto :goto_6

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPosition(ILcom/sec/android/app/camera/ImageGetterCallback;Lcom/sec/android/app/camera/gallery/IImageList;Lcom/sec/android/app/camera/GetterHandler;)V
    .registers 7
    .parameter "position"
    .parameter "cb"
    .parameter "imageList"
    .parameter "handler"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrentAndWait()V

    .line 290
    iput p1, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentPosition:I

    .line 291
    iput-object p2, p0, Lcom/sec/android/app/camera/ImageGetter;->mCB:Lcom/sec/android/app/camera/ImageGetterCallback;

    .line 292
    iput-object p3, p0, Lcom/sec/android/app/camera/ImageGetter;->mImageList:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 293
    iput-object p4, p0, Lcom/sec/android/app/camera/ImageGetter;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    .line 294
    iget v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCurrentSerial:I

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mCancel:Z

    .line 298
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 300
    monitor-exit p0

    return-void

    .line 287
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrentAndWait()V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mDone:Z

    .line 274
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 275
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_14

    .line 277
    :try_start_b
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_17

    .line 281
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageGetter;->mGetterThread:Ljava/lang/Thread;

    .line 282
    return-void

    .line 275
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0

    .line 278
    :catch_17
    move-exception v0

    goto :goto_10
.end method
