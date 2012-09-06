.class public Lcom/google/android/apps/googlevoice/util/logging/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final CHECKIN_CIRCULAR_LOG_SIZE:I = 0x3e8

.field public static final CHECKIN_LOG_FLUSH_FREQUENCY:I = 0x3

#the value of this static final field might be set in the static constructor
.field public static final LOGD:Z = false

.field public static final LOGFILE_CHECKIN_EVENTS:Ljava/lang/String; = "files/checkin_events.log"

#the value of this static final field might be set in the static constructor
.field public static final LOGI:Z = false

.field public static final LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "GoogleVoice"

.field static circularLog:Lcom/google/android/apps/googlevoice/util/logging/CircularLog;

.field private static newline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->newline:Ljava/lang/String;

    .line 41
    const-string v0, "GoogleVoice"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGI:Z

    .line 42
    const-string v0, "GoogleVoice"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    .line 46
    new-instance v0, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;

    new-instance v1, Lcom/google/android/apps/common/time/ClockUtilsImpl;

    invoke-direct {v1}, Lcom/google/android/apps/common/time/ClockUtilsImpl;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLogImpl;-><init>(Lcom/google/android/apps/common/time/ClockUtils;)V

    sput-object v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->circularLog:Lcom/google/android/apps/googlevoice/util/logging/CircularLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "message"

    .prologue
    .line 84
    sget-object v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->circularLog:Lcom/google/android/apps/googlevoice/util/logging/CircularLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "GoogleVoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/CircularLog;->addEntry(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static createLogFile(Lcom/google/android/apps/googlevoice/FileFactory;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "fileFactory"
    .parameter "path"
    .parameter "errorMessage"

    .prologue
    .line 88
    sget-boolean v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v2, :cond_13

    .line 89
    const-string v2, "Creating log file \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 92
    :cond_13
    :try_start_13
    invoke-interface {p0, p1}, Lcom/google/android/apps/googlevoice/FileFactory;->createFile(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;

    move-result-object v1

    .line 93
    .local v1, logFile:Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 94
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->delete()Z

    .line 96
    :cond_20
    invoke-interface {v1}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_23} :catch_24

    .line 100
    .end local v1           #logFile:Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    :goto_23
    return-void

    .line 97
    :catch_24
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    invoke-static {p2, v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 74
    const-string v0, "GoogleVoice"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v0, "D"

    invoke-static {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 49
    const-string v0, "GoogleVoice"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "E"

    invoke-static {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 69
    const-string v0, "GoogleVoice"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const-string v0, "E"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static varargs getExternalLogs(Lcom/google/android/apps/googlevoice/FileFactory;I[Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "fileFactory"
    .parameter "maxBytesPerLogFile"
    .parameter "logFiles"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 160
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 161
    .local v0, pw:Ljava/io/PrintWriter;
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 162
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getCheckinCircularLog()Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/util/logging/BackedUpCircularLog;->flush()V

    .line 164
    :cond_1f
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->writeLogs(Lcom/google/android/apps/googlevoice/FileFactory;Ljava/io/PrintWriter;I[Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 166
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    .line 167
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInternalLogs()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 149
    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 150
    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Log output:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    sget-object v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->circularLog:Lcom/google/android/apps/googlevoice/util/logging/CircularLog;

    invoke-interface {v2, v0}, Lcom/google/android/apps/googlevoice/util/logging/CircularLog;->writeTo(Ljava/io/PrintWriter;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 153
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V

    .line 154
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStackTrace()Ljava/lang/String;
    .registers 8

    .prologue
    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v5, stackTrace:Ljava/lang/StringBuilder;
    :try_start_5
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_b

    .line 179
    :catch_b
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 181
    .local v2, first:Z
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_13
    if-ge v3, v4, :cond_53

    aget-object v6, v0, v3

    .line 183
    .local v6, stackTraceElement:Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_1d

    .line 184
    const/4 v2, 0x0

    .line 181
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 187
    :cond_1d
    const-string v7, "\n  at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 198
    .end local v6           #stackTraceElement:Ljava/lang/StackTraceElement;
    :cond_53
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 64
    const-string v0, "GoogleVoice"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v0, "I"

    invoke-static {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 79
    const-string v0, "GoogleVoice"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "V"

    invoke-static {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 54
    const-string v0, "GoogleVoice"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "W"

    invoke-static {v0, p0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 59
    const-string v0, "GoogleVoice"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const-string v0, "W"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/googlevoice/util/logging/Logger;->newline:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->addToCircularLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static varargs writeLogs(Lcom/google/android/apps/googlevoice/FileFactory;Ljava/io/PrintWriter;I[Ljava/lang/String;)V
    .registers 24
    .parameter "fileFactory"
    .parameter "pw"
    .parameter "maxBytesPerLogFile"
    .parameter "logFiles"

    .prologue
    .line 111
    const/16 v18, 0x2800

    move/from16 v0, v18

    new-array v4, v0, [C

    .line 113
    .local v4, buf:[C
    move-object/from16 v2, p3

    .local v2, arr$:[Ljava/lang/String;
    array-length v11, v2

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_a
    if-ge v8, v11, :cond_f5

    aget-object v12, v2, v8

    .line 114
    .local v12, logFile:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lcom/google/android/apps/googlevoice/FileFactory;->createFile(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/proxy/FileProxy;

    move-result-object v6

    .line 115
    .local v6, f:Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->length()J

    move-result-wide v14

    .line 116
    .local v14, size:J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_21

    .line 113
    :goto_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 120
    :cond_21
    const/4 v7, 0x0

    .line 121
    .local v7, fis:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 123
    .local v9, isr:Ljava/io/InputStreamReader;
    :try_start_23
    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 124
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v14, v18

    .line 125
    .local v16, toSkip:J
    const/4 v3, 0x5

    .line 126
    .local v3, attemptsRemaining:I
    :goto_2f
    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-lez v18, :cond_42

    if-lez v3, :cond_42

    .line 127
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v18

    sub-long v16, v16, v18

    .line 128
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    .line 130
    :cond_42
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_47
    .catchall {:try_start_23 .. :try_end_47} :catchall_ed
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_47} :catch_fc
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_47} :catch_b6

    .line 131
    .end local v9           #isr:Ljava/io/InputStreamReader;
    .local v10, isr:Ljava/io/InputStreamReader;
    :try_start_47
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 132
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    :goto_66
    invoke-virtual {v10, v4}, Ljava/io/InputStreamReader;->read([C)I

    move-result v13

    .local v13, nread:I
    if-lez v13, :cond_ae

    .line 134
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1, v13}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_75
    .catchall {:try_start_47 .. :try_end_75} :catchall_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_75} :catch_76
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_75} :catch_f9

    goto :goto_66

    .line 136
    .end local v13           #nread:I
    :catch_76
    move-exception v5

    move-object v9, v10

    .line 137
    .end local v3           #attemptsRemaining:I
    .end local v10           #isr:Ljava/io/InputStreamReader;
    .end local v16           #toSkip:J
    .local v5, ex:Ljava/io/FileNotFoundException;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    :goto_78
    :try_start_78
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Opening log file \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a6
    .catchall {:try_start_78 .. :try_end_a6} :catchall_ed

    .line 141
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    goto/16 :goto_1e

    .line 141
    .end local v5           #ex:Ljava/io/FileNotFoundException;
    .end local v9           #isr:Ljava/io/InputStreamReader;
    .restart local v3       #attemptsRemaining:I
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    .restart local v13       #nread:I
    .restart local v16       #toSkip:J
    :cond_ae
    invoke-static {v10}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    goto/16 :goto_1e

    .line 138
    .end local v3           #attemptsRemaining:I
    .end local v10           #isr:Ljava/io/InputStreamReader;
    .end local v13           #nread:I
    .end local v16           #toSkip:J
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    :catch_b6
    move-exception v5

    .line 139
    .local v5, ex:Ljava/io/IOException;
    :goto_b7
    :try_start_b7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error Copying log data from file \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\' = \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v6}, Lcom/google/android/apps/googlevoice/proxy/FileProxy;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e5
    .catchall {:try_start_b7 .. :try_end_e5} :catchall_ed

    .line 141
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    goto/16 :goto_1e

    .line 141
    .end local v5           #ex:Ljava/io/IOException;
    :catchall_ed
    move-exception v18

    :goto_ee
    invoke-static {v9}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    .line 142
    invoke-static {v7}, Lcom/google/android/apps/googlevoice/VoiceUtil;->close(Ljava/io/Closeable;)V

    throw v18

    .line 145
    .end local v6           #f:Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    .end local v7           #fis:Ljava/io/InputStream;
    .end local v9           #isr:Ljava/io/InputStreamReader;
    .end local v12           #logFile:Ljava/lang/String;
    .end local v14           #size:J
    :cond_f5
    return-void

    .line 141
    .restart local v3       #attemptsRemaining:I
    .restart local v6       #f:Lcom/google/android/apps/googlevoice/proxy/FileProxy;
    .restart local v7       #fis:Ljava/io/InputStream;
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    .restart local v12       #logFile:Ljava/lang/String;
    .restart local v14       #size:J
    .restart local v16       #toSkip:J
    :catchall_f6
    move-exception v18

    move-object v9, v10

    .end local v10           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    goto :goto_ee

    .line 138
    .end local v9           #isr:Ljava/io/InputStreamReader;
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    :catch_f9
    move-exception v5

    move-object v9, v10

    .end local v10           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    goto :goto_b7

    .line 136
    .end local v3           #attemptsRemaining:I
    .end local v16           #toSkip:J
    :catch_fc
    move-exception v5

    goto/16 :goto_78
.end method
