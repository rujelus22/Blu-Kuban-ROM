.class public Lcom/google/android/music/store/MediaStoreImportService;
.super Landroid/app/Service;
.source "MediaStoreImportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/store/MediaStoreImportService$Receiver;,
        Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContentChangeProcessor:Ljava/lang/Runnable;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mDelayedImport:Ljava/lang/Runnable;

.field private mFirstChangeTimeSinceLastImport:J

.field private final mImportPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastImportTime:J

.field private final mWorker:Lcom/google/android/music/Worker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-string v0, "MediaStoreImportService"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MediaStoreImportService$LocalBinder;-><init>(Lcom/google/android/music/store/MediaStoreImportService;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mBinder:Landroid/os/IBinder;

    .line 46
    new-instance v0, Lcom/google/android/music/Worker;

    const-string v1, "MediaStoreImportService"

    invoke-direct {v0, v1}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mImportPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput-wide v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mLastImportTime:J

    .line 69
    iput-wide v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    .line 86
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MediaStoreImportService$1;-><init>(Lcom/google/android/music/store/MediaStoreImportService;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mDelayedImport:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/store/MediaStoreImportService$2;-><init>(Lcom/google/android/music/store/MediaStoreImportService;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentChangeProcessor:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/google/android/music/store/MediaStoreImportService$3;

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/store/MediaStoreImportService$3;-><init>(Lcom/google/android/music/store/MediaStoreImportService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    .line 204
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/store/MediaStoreImportService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mLastImportTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/music/store/MediaStoreImportService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/music/store/MediaStoreImportService;->importMediaStore()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mDelayedImport:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/store/MediaStoreImportService;)Lcom/google/android/music/Worker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/store/MediaStoreImportService;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/google/android/music/store/MediaStoreImportService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    return-wide p1
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/store/MediaStoreImportService;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentChangeProcessor:Ljava/lang/Runnable;

    return-object v0
.end method

.method private importMediaStore()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mImportPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    :try_start_7
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/music/store/Store;->importMediaStore(Landroid/content/Context;)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_28

    .line 76
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mImportPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.music.IMPORT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/store/MediaStoreImportService;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mLastImportTime:J

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mFirstChangeTimeSinceLastImport:J

    .line 84
    return-void

    .line 76
    :catchall_28
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mImportPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.music.IMPORT_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/store/MediaStoreImportService;->sendBroadcast(Landroid/content/Intent;)V

    throw v0
.end method

.method private sendStatusBroadcast(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mImportPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 263
    const-string v0, "com.google.android.music.IMPORT_PENDING"

    .line 268
    :goto_b
    if-eqz v0, :cond_15

    .line 269
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    :cond_15
    return-void

    .line 265
    :cond_16
    const-string v0, "com.google.android.music.IMPORT_COMPLETE"

    goto :goto_b
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    .line 171
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "MediaStoreImportService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentChangeProcessor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 176
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 180
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 192
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaStoreImportService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    invoke-virtual {v0}, Lcom/google/android/music/Worker;->quit()V

    .line 195
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 196
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, action:Ljava/lang/String;
    sget-boolean v1, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v1, :cond_20

    const-string v1, "MediaStoreImportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handle action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_20
    const-string v1, "MediaStoreImportService.import"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 136
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/store/MediaStoreImportService$4;

    invoke-direct {v2, p0, p3}, Lcom/google/android/music/store/MediaStoreImportService$4;-><init>(Lcom/google/android/music/store/MediaStoreImportService;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    .line 166
    :goto_32
    const/4 v1, 0x3

    return v1

    .line 143
    :cond_34
    const-string v1, "MediaStoreImportService.status"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 144
    invoke-direct {p0, p0}, Lcom/google/android/music/store/MediaStoreImportService;->sendStatusBroadcast(Landroid/content/Context;)V

    .line 145
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/store/MediaStoreImportService$5;

    invoke-direct {v2, p0, p3}, Lcom/google/android/music/store/MediaStoreImportService$5;-><init>(Lcom/google/android/music/store/MediaStoreImportService;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    goto :goto_32

    .line 150
    :cond_4a
    const-string v1, "MediaStoreImportService.import_pending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 151
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mImportPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 152
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/store/MediaStoreImportService$6;

    invoke-direct {v2, p0, p3}, Lcom/google/android/music/store/MediaStoreImportService$6;-><init>(Lcom/google/android/music/store/MediaStoreImportService;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    goto :goto_32

    .line 158
    :cond_63
    const-string v1, "MediaStoreImportService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected action requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/store/MediaStoreImportService$7;

    invoke-direct {v2, p0, p3}, Lcom/google/android/music/store/MediaStoreImportService$7;-><init>(Lcom/google/android/music/store/MediaStoreImportService;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    goto :goto_32
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .parameter "intent"

    .prologue
    .line 185
    sget-boolean v0, Lcom/google/android/music/store/MediaStoreImportService;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "MediaStoreImportService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/music/store/MediaStoreImportService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/store/MediaStoreImportService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 187
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
