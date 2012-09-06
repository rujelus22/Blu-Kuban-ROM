.class Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread$1;
.super Landroid/os/Handler;
.source "AndroidContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;)V
    .registers 2
    .parameter

    .prologue
    .line 751
    iput-object p1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread$1;->this$0:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread$1;->this$0:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    #getter for: Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->access$000(Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread$1;->this$0:Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync$AndroidContactsSyncThread;->newSyncState()Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->syncContactsForCurrentAccount(Landroid/content/Context;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 764
    :goto_f
    return-void

    .line 760
    :catch_10
    move-exception v0

    .line 761
    .local v0, t:Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_f
.end method
