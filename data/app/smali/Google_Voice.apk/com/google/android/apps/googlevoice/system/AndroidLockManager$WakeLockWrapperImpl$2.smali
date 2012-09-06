.class Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$2;
.super Ljava/lang/Object;
.source "AndroidLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->log(Ljava/lang/String;)V
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
    .line 170
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$2;->this$1:Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl$2;->this$1:Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;

    #getter for: Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->fileLog:Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;->access$100(Lcom/google/android/apps/googlevoice/system/AndroidLockManager$WakeLockWrapperImpl;)Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->flush()V

    .line 174
    return-void
.end method
