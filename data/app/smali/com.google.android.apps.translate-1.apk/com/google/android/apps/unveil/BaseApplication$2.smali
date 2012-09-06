.class Lcom/google/android/apps/unveil/BaseApplication$2;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/BaseApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/BaseApplication;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/BaseApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/apps/unveil/BaseApplication$2;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 172
    instance-of v0, p2, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_13

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication$2;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    const-string v1, "goggles_hprof_data"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/unveil/BaseApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;->createHeapDump(Ljava/lang/String;)V

    .line 175
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/BaseApplication$2;->this$0:Lcom/google/android/apps/unveil/BaseApplication;

    #getter for: Lcom/google/android/apps/unveil/BaseApplication;->defaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Lcom/google/android/apps/unveil/BaseApplication;->access$000(Lcom/google/android/apps/unveil/BaseApplication;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method
