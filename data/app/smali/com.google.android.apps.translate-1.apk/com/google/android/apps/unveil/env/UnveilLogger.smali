.class public final Lcom/google/android/apps/unveil/env/UnveilLogger;
.super Ljava/lang/Object;
.source "UnveilLogger.java"


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "goggles"

.field private static final IGNORED_CLASS_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static previousTime:J

.field private static watch:Lcom/google/android/apps/unveil/env/Stopwatch;


# instance fields
.field private final messagePrefix:Ljava/lang/String;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    .line 27
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-string v1, "dalvik.system.VMStack"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-string v1, "java.lang.Thread"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    const-class v1, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->watch:Lcom/google/android/apps/unveil/env/Stopwatch;

    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->previousTime:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 75
    const-string v0, "goggles"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "messagePrefix"

    .prologue
    .line 54
    const-string v0, "goggles"

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "tag"
    .parameter "messagePrefix"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    .line 67
    if-nez p2, :cond_27

    invoke-static {}, Lcom/google/android/apps/unveil/env/UnveilLogger;->getCallerSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, prefix:Ljava/lang/String;
    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #prefix:Ljava/lang/String;
    :cond_24
    iput-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->messagePrefix:Ljava/lang/String;

    .line 69
    return-void

    :cond_27
    move-object v0, p2

    .line 67
    goto :goto_b
.end method

.method public static createHeapDump(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    .line 211
    :try_start_0
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 212
    const-string v1, "goggles"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory error occurred. Please copy the heap dump file to your computer by running\n\n\'adb pull "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "and submit it with your bug report."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_27} :catch_28

    .line 220
    :goto_27
    return-void

    .line 217
    :catch_28
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    const-string v1, "goggles"

    const-string v2, "IOException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method

.method public static createStackTrace(Ljava/lang/String;)V
    .registers 6
    .parameter "traceTitle"

    .prologue
    .line 226
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 228
    .local v1, stackTrace:[Ljava/lang/StackTraceElement;
    const-string v2, "goggles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested stack trace \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' on thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x3

    .local v0, i:I
    :goto_39
    array-length v2, v1

    if-ge v0, v2, :cond_5d

    .line 231
    const-string v2, "goggles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "        at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 233
    :cond_5d
    return-void
.end method

.method private static getCallerSimpleName()Ljava/lang/String;
    .registers 8

    .prologue
    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 95
    .local v6, stackTrace:[Ljava/lang/StackTraceElement;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b
    if-ge v4, v5, :cond_2a

    aget-object v3, v0, v4

    .line 96
    .local v3, elem:Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, className:Ljava/lang/String;
    sget-object v7, Lcom/google/android/apps/unveil/env/UnveilLogger;->IGNORED_CLASS_NAMES:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 99
    const-string v7, "\\."

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, classParts:[Ljava/lang/String;
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v2, v7

    .line 104
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #classParts:[Ljava/lang/String;
    .end local v3           #elem:Ljava/lang/StackTraceElement;
    :goto_26
    return-object v7

    .line 95
    .restart local v1       #className:Ljava/lang/String;
    .restart local v3       #elem:Ljava/lang/StackTraceElement;
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 104
    .end local v1           #className:Ljava/lang/String;
    .end local v3           #elem:Ljava/lang/StackTraceElement;
    :cond_2a
    const-class v7, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    goto :goto_26
.end method

.method private shouldShowDebug()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method private varargs toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->messagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    if-lez v1, :cond_12

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_f
    return-void
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :cond_f
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/google/android/apps/unveil/env/TonePlayer;->errorTone()V

    .line 174
    :cond_15
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 178
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    invoke-static {}, Lcom/google/android/apps/unveil/env/TonePlayer;->errorTone()V

    .line 181
    :cond_15
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_12
    return-void
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :cond_12
    return-void
.end method

.method public varargs resetTime(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "format"
    .parameter "args"

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowVerbose()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->messagePrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(TIMER) Resetting log timer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2e
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->watch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->reset()V

    .line 189
    sget-object v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->watch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/Stopwatch;->start()V

    .line 190
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->previousTime:J

    .line 191
    return-void
.end method

.method public shouldShowVerbose()Z
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs time(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .parameter "format"
    .parameter "args"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowVerbose()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 195
    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilLogger;->watch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->isRunning()Z

    move-result v2

    if-nez v2, :cond_17

    .line 196
    const-string v2, "Tried to log a time event without starting the timer!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_16
    :goto_16
    return-void

    .line 198
    :cond_17
    sget-object v2, Lcom/google/android/apps/unveil/env/UnveilLogger;->watch:Lcom/google/android/apps/unveil/env/Stopwatch;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/env/Stopwatch;->getElapsedMilliseconds()J

    move-result-wide v0

    .line 199
    .local v0, time:J
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->messagePrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(TIMER) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/google/android/apps/unveil/env/UnveilLogger;->previousTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sput-wide v0, Lcom/google/android/apps/unveil/env/UnveilLogger;->previousTime:J

    goto :goto_16
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowVerbose()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_f
    return-void
.end method

.method public varargs v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/env/UnveilLogger;->shouldShowVerbose()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :cond_f
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_12
    return-void
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .parameter "t"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/UnveilLogger;->tag:Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->toMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_12
    return-void
.end method
