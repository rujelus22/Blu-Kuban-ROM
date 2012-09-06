.class public Lcom/google/android/music/log/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LOGV:Z

.field private static volatile sLogFile:Lcom/google/android/music/log/LogFile;

.field private static sLogFilesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/music/log/LogFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-string v0, "Log"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/log/Log;->LOGV:Z

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/music/log/Log;->sLogFilesMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static declared-synchronized configure(Ljava/io/File;Ljava/lang/String;)V
    .registers 6
    .parameter "dir"
    .parameter "fileName"

    .prologue
    .line 185
    const-class v2, Lcom/google/android/music/log/Log;

    monitor-enter v2

    if-eqz p0, :cond_7

    if-nez p1, :cond_10

    .line 186
    :cond_7
    :try_start_7
    const-string v1, "Log"

    const-string v3, "Invalid configuration provided"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_23

    .line 195
    :goto_e
    monitor-exit v2

    return-void

    .line 191
    :cond_10
    :try_start_10
    new-instance v1, Lcom/google/android/music/log/LogFile;

    const-string v3, "com.google.android.music"

    invoke-direct {v1, v3, p0, p1}, Lcom/google/android/music/log/LogFile;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_e

    .line 192
    :catch_1a
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1b
    const-string v1, "Log"

    const-string v3, "Failed to create log file."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_e

    .line 185
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized configureLogFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 8
    .parameter "name"
    .parameter "dir"
    .parameter "fileName"

    .prologue
    .line 198
    const-class v3, Lcom/google/android/music/log/Log;

    monitor-enter v3

    if-eqz p1, :cond_7

    if-nez p2, :cond_10

    .line 199
    :cond_7
    :try_start_7
    const-string v2, "Log"

    const-string v4, "Invalid configuration provided"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_24

    .line 209
    :goto_e
    monitor-exit v3

    return-void

    .line 204
    :cond_10
    :try_start_10
    new-instance v1, Lcom/google/android/music/log/LogFile;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/log/LogFile;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v1, logFile:Lcom/google/android/music/log/LogFile;
    sget-object v2, Lcom/google/android/music/log/Log;->sLogFilesMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_1a} :catch_1b

    goto :goto_e

    .line 206
    .end local v1           #logFile:Lcom/google/android/music/log/LogFile;
    :catch_1b
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_1c
    const-string v2, "Log"

    const-string v4, "Failed to create log file."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_24

    goto :goto_e

    .line 198
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catchall_24
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 76
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/log/LogFile;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_c
    return-void
.end method

.method public static declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5
    .parameter "writer"

    .prologue
    .line 176
    const-class v3, Lcom/google/android/music/log/Log;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v2, :cond_29

    .line 177
    sget-object v2, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v2, p0}, Lcom/google/android/music/log/LogFile;->dump(Ljava/io/PrintWriter;)V

    .line 178
    sget-object v2, Lcom/google/android/music/log/Log;->sLogFilesMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/log/LogFile;

    .line 179
    .local v1, log:Lcom/google/android/music/log/LogFile;
    invoke-virtual {v1, p0}, Lcom/google/android/music/log/LogFile;->dump(Ljava/io/PrintWriter;)V
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_16

    .line 176
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #log:Lcom/google/android/music/log/LogFile;
    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2

    .line 182
    :cond_29
    monitor-exit v3

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 123
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 125
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/log/LogFile;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_c
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 130
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 132
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/music/log/LogFile;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :cond_c
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 158
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_9

    .line 159
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/log/LogFile;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_9
    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 170
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_9

    .line 171
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/music/log/LogFile;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    :cond_9
    return-void
.end method

.method public static declared-synchronized getLogFile(Ljava/lang/String;)Lcom/google/android/music/log/LogFile;
    .registers 3
    .parameter "name"

    .prologue
    .line 212
    const-class v1, Lcom/google/android/music/log/Log;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFilesMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/log/LogFile;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 90
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/log/LogFile;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_c
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 97
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/music/log/LogFile;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :cond_c
    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 3
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 62
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/log/LogFile;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_c
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 104
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/log/LogFile;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_c
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 109
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 111
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/music/log/LogFile;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    :cond_c
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 137
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 139
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/log/LogFile;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_c
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 151
    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    if-eqz v0, :cond_c

    .line 153
    sget-object v0, Lcom/google/android/music/log/Log;->sLogFile:Lcom/google/android/music/log/LogFile;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/music/log/LogFile;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 155
    :cond_c
    return-void
.end method
