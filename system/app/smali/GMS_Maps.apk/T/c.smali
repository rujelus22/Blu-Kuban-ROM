.class public abstract Lt/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/16 v0, 0x4000

    new-array v0, v0, [B

    sput-object v0, Lt/c;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DA:CRASH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 88
    invoke-static {p0, p1}, Lt/c;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :cond_1f
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lt/c;->n_()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_d

    .line 80
    return-void

    .line 73
    :catch_4
    move-exception v0

    .line 74
    invoke-virtual {p0}, Lt/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lt/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    throw v0

    .line 76
    :catch_d
    move-exception v0

    .line 77
    invoke-virtual {p0}, Lt/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lt/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    throw v0
.end method

.method static b(LA/f;)V
    .registers 8
    .parameter

    .prologue
    const-wide/16 v5, 0x400

    .line 119
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 120
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    const-string v2, "JavaTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    const-string v2, " JavaFree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 126
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 127
    const-string v2, " Dalvik: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v2, " Native: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, " Other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    new-instance v0, LA/k;

    const-string v2, "MemoryInfo"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, LA/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LA/f;->a(LA/j;)V

    .line 133
    :cond_64
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Lt/c;->a:[B

    .line 94
    invoke-static {}, LA/f;->j()LA/f;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_95

    .line 96
    invoke-static {v0}, Lt/c;->b(LA/f;)V

    .line 97
    new-instance v1, LA/k;

    const-string v2, "Thread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Crashing due to unhandled exception or error on: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LA/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LA/f;->a(LA/j;)V

    .line 100
    new-instance v1, LA/l;

    invoke-direct {v1, p1}, LA/l;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, LA/f;->a(LA/j;)V

    .line 101
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd_kk.mm.ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, LA/f;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lh/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "crash-log-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    :try_start_67
    invoke-virtual {v0, v3}, LA/f;->a(Ljava/io/File;)V

    .line 108
    instance-of v4, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_92

    .line 109
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/heap-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_92} :catch_96

    .line 114
    :cond_92
    :goto_92
    invoke-virtual {v0, v3}, LA/f;->b(Ljava/io/File;)V

    .line 116
    :cond_95
    return-void

    .line 111
    :catch_96
    move-exception v1

    goto :goto_92
.end method


# virtual methods
.method public abstract n_()V
.end method

.method public final run()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lt/c;->b()V

    .line 62
    return-void
.end method
