.class public Lcom/google/android/apps/plus/hangout/crash/CrashReport;
.super Ljava/lang/Object;
.source "CrashReport.java"


# static fields
.field private static final LOG_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private crashProcessingError:Ljava/lang/String;

.field private final isTestCrash:Z

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reportText:Ljava/lang/String;

.field private signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GoogleMeeting"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "gcomm_native"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "libjingle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DEBUG"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->LOG_TAGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "isTestCrash"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    .line 47
    const-string v0, "uninitialized non-null value"

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->crashProcessingError:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    .line 58
    iput-boolean p1, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->isTestCrash:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->reportText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/util/Map;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/hangout/crash/CrashReport;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->crashProcessingError:Ljava/lang/String;

    return-object v0
.end method

.method private appendNonHangoutLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 4
    .parameter "filteredLogBuilder"
    .parameter "line"

    .prologue
    .line 247
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    return-void
.end method

.method public static computeJavaCrashSignature(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 14
    .parameter "ex"

    .prologue
    const/16 v12, 0xa

    .line 182
    new-array v3, v12, [I

    .line 183
    .local v3, digest:[I
    const/4 v4, -0x1

    .line 185
    .local v4, digested:I
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 186
    .local v5, frames:[Ljava/lang/StackTraceElement;
    array-length v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 188
    .local v6, framesToHash:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_f
    if-ge v7, v6, :cond_3c

    .line 189
    add-int/lit8 v4, v4, 0x1

    array-length v11, v3

    rem-int v9, v4, v11

    .line 190
    .local v9, index:I
    aget v11, v3, v9

    aget-object v12, v5, v7

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v3, v9

    .line 191
    add-int/lit8 v4, v4, 0x1

    array-length v11, v3

    rem-int v9, v4, v11

    .line 192
    aget v11, v3, v9

    aget-object v12, v5, v7

    invoke-virtual {v12}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    xor-int/2addr v11, v12

    aput v11, v3, v9

    .line 188
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 195
    .end local v9           #index:I
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v1, builder:Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, arr$:[I
    array-length v10, v0

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_44
    if-ge v8, v10, :cond_52

    aget v2, v0, v8

    .line 199
    .local v2, d:I
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    add-int/lit8 v8, v8, 0x1

    goto :goto_44

    .line 201
    .end local v2           #d:I
    :cond_52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private getPackageVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->isTestCrash:Z

    if-eqz v0, :cond_1c

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Test-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/plus/hangout/Utils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {}, Lcom/google/android/apps/plus/hangout/Utils;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method private getSystemLogs()Z
    .registers 11

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    :try_start_3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "logcat"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "-d"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "-v"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "threadtime"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 209
    .local v1, process:Ljava/lang/Process;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v2, stringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->processLogs(Ljava/lang/StringBuilder;Ljava/io/InputStream;)V

    .line 211
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->reportText:Ljava/lang/String;

    .line 212
    const-string v5, "Logs successfully processed"

    iput-object v5, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->crashProcessingError:Ljava/lang/String;

    .line 213
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3b} :catch_3c

    .line 219
    .end local v1           #process:Ljava/lang/Process;
    .end local v2           #stringBuilder:Ljava/lang/StringBuilder;
    :goto_3b
    return v3

    .line 215
    :catch_3c
    move-exception v0

    .line 216
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 217
    const-string v5, "Error getting system logs: %s\n%s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->crashProcessingError:Ljava/lang/String;

    move v3, v4

    .line 219
    goto :goto_3b
.end method


# virtual methods
.method public generateReport(Ljava/lang/String;)Z
    .registers 5
    .parameter "javaCrashSignature"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->getSystemLogs()Z

    .line 110
    if-eqz p1, :cond_7

    .line 111
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    .line 113
    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "prod"

    const-string v2, "Google_Plus_Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "ver"

    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->getPackageVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "sig"

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "sig2"

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "should_process"

    const-string v2, "F"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_board"

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_id"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_product"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "build_type"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "version_codename"

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "version_incremental"

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "version_release"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "version_sdk_int"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->isTestCrash:Z

    if-eqz v0, :cond_b3

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->params:Ljava/util/Map;

    const-string v1, "testing"

    const-string v2, "true"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_b3
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->reportText:Ljava/lang/String;

    if-eqz v0, :cond_b9

    const/4 v0, 0x1

    :goto_b8
    return v0

    :cond_b9
    const/4 v0, 0x0

    goto :goto_b8
.end method

.method processLogs(Ljava/lang/StringBuilder;Ljava/io/InputStream;)V
    .registers 15
    .parameter "filteredLogBuilder"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v11, 0x1

    .line 256
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 258
    .local v0, bufferedReader:Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 259
    .local v6, nativeCrashLogStarted:Z
    const-string v9, "[\\p{Digit}-]+ \\p{Space}+[\\p{Digit}\\.:]+ \\p{Space}+[\\p{Digit}]+ \\p{Space}+[\\p{Digit}]+ \\p{Space}+\\p{Upper} \\p{Space}+([^:]+):((.*))"

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 260
    .local v4, logLinePattern:Ljava/util/regex/Pattern;
    const-string v9, "\\p{Space}+\\# [\\p{Digit}]+ \\p{Space}+pc \\p{Space}+(([\\p{XDigit}]{8})) \\p{Space}+[\\p{Alnum}/\\._-}]*libgcomm_jni\\.so"

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 261
    .local v8, stackTracePattern:Ljava/util/regex/Pattern;
    :cond_19
    :goto_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_b3

    .line 262
    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 263
    .local v5, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 264
    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->appendNonHangoutLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_19

    .line 269
    :cond_2d
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, category:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, content:Ljava/lang/String;
    sget-object v9, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->LOG_TAGS:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_46

    .line 274
    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->appendNonHangoutLog(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_19

    .line 278
    :cond_46
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v9, "\n"

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v9, "DEBUG"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 285
    const-string v9, "*** *** *** *** ***"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 286
    const/4 v6, 0x1

    .line 288
    const-string v9, ""

    iput-object v9, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    .line 290
    :cond_63
    if-eqz v6, :cond_19

    .line 291
    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 292
    .local v7, stackMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_19

    .line 295
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x50

    if-ge v9, v10, :cond_19

    .line 296
    iget-object v9, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_98

    .line 297
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    .line 300
    :cond_98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/apps/plus/hangout/crash/CrashReport;->signature:Ljava/lang/String;

    goto/16 :goto_19

    .line 305
    .end local v1           #category:Ljava/lang/String;
    .end local v2           #content:Ljava/lang/String;
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    .end local v7           #stackMatcher:Ljava/util/regex/Matcher;
    :cond_b3
    return-void
.end method

.method public send(Landroid/app/Activity;Z)V
    .registers 5
    .parameter "activity"
    .parameter "finishActivity"

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/plus/hangout/crash/CrashReport$1;-><init>(Lcom/google/android/apps/plus/hangout/crash/CrashReport;Landroid/app/Activity;Z)V

    .line 94
    .local v0, sender:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 95
    return-void
.end method
