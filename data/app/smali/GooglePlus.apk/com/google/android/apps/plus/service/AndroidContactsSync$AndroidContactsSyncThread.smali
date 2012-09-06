.class Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;
.super Ljava/lang/Thread;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AndroidContactsSyncThread"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

.field private volatile mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 733
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 739
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mContext:Landroid/content/Context;

    .line 740
    const-string v0, "AndroidContactsSync"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->setName(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->cancel()V

    .line 804
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_f

    .line 805
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 807
    :cond_f
    return-void
.end method

.method public newSyncState()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->cancel()V

    .line 794
    new-instance v0, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-direct {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    .line 795
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    return-object v0
.end method

.method public requestSync(Z)V
    .registers 6
    .parameter "immediate"

    .prologue
    const/4 v3, 0x0

    .line 778
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mSyncState:Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->cancel()V

    .line 780
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_18

    .line 781
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mThreadHandler:Landroid/os/Handler;

    if-eqz p1, :cond_19

    const-wide/16 v0, 0x1f4

    :goto_15
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 785
    :cond_18
    return-void

    .line 782
    :cond_19
    const-wide/16 v0, 0x1388

    goto :goto_15
.end method

.method public run()V
    .registers 3

    .prologue
    .line 748
    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 749
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 751
    new-instance v0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread$1;-><init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mThreadHandler:Landroid/os/Handler;

    .line 767
    iget-object v0, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->newSyncState()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncContactsForCurrentAccount(Landroid/content/Context;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    .line 770
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 771
    return-void
.end method
