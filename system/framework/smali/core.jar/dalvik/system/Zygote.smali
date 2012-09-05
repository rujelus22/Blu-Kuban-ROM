.class public Ldalvik/system/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_DEBUGGER:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static systemInSafeMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Ldalvik/system/Zygote;->systemInSafeMode:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 9
    .parameter "command"
    .parameter "args"

    .prologue
    .line 205
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_21

    aget-object v0, v1, v2

    .line 206
    .local v0, arg:Ljava/lang/String;
    const-string v4, " \'"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    const-string v6, "\'\\\'\'"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 208
    .end local v0           #arg:Ljava/lang/String;
    :cond_21
    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .registers 1
    .parameter "command"

    .prologue
    .line 192
    invoke-static {p0}, Ldalvik/system/Zygote;->nativeExecShell(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static fork()I
    .registers 1

    .prologue
    .line 86
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 87
    invoke-static {}, Ldalvik/system/Zygote;->nativeFork()I

    move-result v0

    .line 88
    .local v0, pid:I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 89
    return v0
.end method

.method public static forkAndSpecialize(II[II[[I)I
    .registers 6
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "debugFlags"
    .parameter "rlimits"

    .prologue
    .line 116
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 117
    invoke-static {p0, p1, p2, p3, p4}, Ldalvik/system/Zygote;->nativeForkAndSpecialize(II[II[[I)I

    move-result v0

    .line 118
    .local v0, pid:I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 119
    return v0
.end method

.method public static forkAndSpecialize(II[IZ[[I)I
    .registers 7
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "enableDebugger"
    .parameter "rlimits"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    if-eqz p3, :cond_8

    const/4 v0, 0x1

    .line 133
    .local v0, debugFlags:I
    :goto_3
    invoke-static {p0, p1, p2, v0, p4}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I

    move-result v1

    return v1

    .line 132
    .end local v0           #debugFlags:I
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .registers 10
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "debugFlags"
    .parameter "rlimits"
    .parameter "permittedCapabilities"
    .parameter "effectiveCapabilities"

    .prologue
    .line 162
    invoke-static {}, Ldalvik/system/Zygote;->preFork()V

    .line 163
    invoke-static/range {p0 .. p8}, Ldalvik/system/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    .line 166
    .local v0, pid:I
    invoke-static {}, Ldalvik/system/Zygote;->postFork()V

    .line 167
    return v0
.end method

.method public static forkSystemServer(II[IZ[[I)I
    .registers 7
    .parameter "uid"
    .parameter "gid"
    .parameter "gids"
    .parameter "enableDebugger"
    .parameter "rlimits"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    if-eqz p3, :cond_8

    const/4 v0, 0x1

    .line 178
    .local v0, debugFlags:I
    :goto_3
    invoke-static {p0, p1, p2, v0, p4}, Ldalvik/system/Zygote;->forkAndSpecialize(II[II[[I)I

    move-result v1

    return v1

    .line 177
    .end local v0           #debugFlags:I
    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static native nativeExecShell(Ljava/lang/String;)V
.end method

.method public static native nativeFork()I
.end method

.method public static native nativeForkAndSpecialize(II[II[[I)I
.end method

.method public static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method private static postFork()V
    .registers 0

    .prologue
    .line 74
    invoke-static {}, Ljava/lang/Daemons;->start()V

    .line 75
    return-void
.end method

.method private static preFork()V
    .registers 0

    .prologue
    .line 53
    invoke-static {}, Ljava/lang/Daemons;->stop()V

    .line 54
    invoke-static {}, Ldalvik/system/Zygote;->waitUntilAllThreadsStopped()V

    .line 55
    return-void
.end method

.method private static waitUntilAllThreadsStopped()V
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, tasks:Ljava/io/File;
    :goto_7
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_17

    .line 67
    const-wide/16 v1, 0xa

    :try_start_11
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15

    goto :goto_7

    .line 68
    :catch_15
    move-exception v1

    goto :goto_7

    .line 71
    :cond_17
    return-void
.end method
