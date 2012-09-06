.class public Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;
.super Ljava/lang/Object;
.source "MemoryUtilsImpl.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/util/MemoryUtils;


# static fields
.field public static final LOG:Lcom/google/android/apps/common/log/GLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "name"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, filename:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    .line 46
    .end local v1           #filename:Ljava/lang/String;
    :goto_24
    return-object v1

    .line 43
    :catch_25
    move-exception v0

    .line 44
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v3, "dumping of heap failed"

    invoke-interface {v2, v3}, Lcom/google/android/apps/common/log/GLog;->d(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x0

    goto :goto_24
.end method

.method public onOutOfMemory(Ljava/lang/Throwable;)V
    .registers 6
    .parameter "throwable"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 28
    sget-object v1, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "Out of memory occurred"

    invoke-interface {v1, v2, p1}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const-string v1, "com.google.android.apps.googlevoice-oom"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;->dump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, filename:Ljava/lang/String;
    if-eqz v0, :cond_2d

    .line 33
    sget-object v1, Lcom/google/android/apps/googlevoice/system/MemoryUtilsImpl;->LOG:Lcom/google/android/apps/common/log/GLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please attach "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " when reporting a bug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;)V

    .line 35
    :cond_2d
    return-void
.end method
