.class Lcom/google/android/finsky/FinskyApp$CrashHandler;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/FinskyApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashHandler"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field private final mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/FinskyApp;Ljava/io/File;)V
    .registers 4
    .parameter
    .parameter "file"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 171
    iput-object p2, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mFile:Ljava/io/File;

    .line 172
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "thread"
    .parameter "ex"

    .prologue
    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_b

    .line 180
    :goto_5
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$CrashHandler;->mOriginalHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 181
    return-void

    .line 178
    :catch_b
    move-exception v0

    goto :goto_5
.end method
