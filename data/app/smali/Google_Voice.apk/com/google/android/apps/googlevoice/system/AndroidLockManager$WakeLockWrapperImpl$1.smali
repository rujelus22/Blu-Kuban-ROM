.class Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$1;
.super Ljava/lang/Object;
.source "AndroidLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$1;->this$1:Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 96
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$1;->this$1:Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;

    #getter for: Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->wakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->access$000(Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$1;->this$1:Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->release()V

    goto :goto_0

    .line 99
    :cond_12
    return-void
.end method
