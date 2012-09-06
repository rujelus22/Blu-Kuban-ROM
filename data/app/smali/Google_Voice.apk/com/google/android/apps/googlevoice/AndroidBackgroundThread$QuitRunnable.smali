.class final Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;
.super Ljava/lang/Object;
.source "AndroidBackgroundThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuitRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;->this$0:Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;-><init>(Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 26
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_20

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Quitting background thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread$QuitRunnable;->this$0:Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;

    invoke-virtual {v1}, Lcom/google/android/apps/googlevoice/AndroidBackgroundThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 29
    :cond_20
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 30
    return-void
.end method
