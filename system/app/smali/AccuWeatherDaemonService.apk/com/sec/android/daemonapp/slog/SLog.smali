.class public Lcom/sec/android/daemonapp/slog/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field static final BUF_HEADER:Ljava/lang/String; = "[MSC_Accu]>>> "

.field static final BUF_MAXLENGTH:I = 0x80

.field public static final LOG_LEVEL_HIGH:I = 0x2

.field public static final LOG_LEVEL_LOW:I = 0x0

.field public static final LOG_LEVEL_MID:I = 0x1

.field public static final PREFS_SLOG:Ljava/lang/String; = "prefs_slog"

.field public static final SLOG_ON:Ljava/lang/String; = "slog_on"

.field static final TAG:Ljava/lang/String; = "com.samsung.log"

.field static TAG_APP:Ljava/lang/String; = null

.field public static appContext:Landroid/content/Context; = null

.field static final bForceTag:Z = true

.field public static log_on:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/daemonapp/slog/SLog;->log_on:I

    .line 28
    const-string v0, "com.samsung.app"

    sput-object v0, Lcom/sec/android/daemonapp/slog/SLog;->TAG_APP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 36
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/sec/android/daemonapp/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 41
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/sec/android/daemonapp/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 46
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/sec/android/daemonapp/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;)I
    .registers 3
    .parameter "priority"
    .parameter "msg"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/sec/android/daemonapp/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 14
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    .line 112
    sget v8, Lcom/sec/android/daemonapp/slog/SLog;->log_on:I

    if-eq v8, v10, :cond_10

    sget v8, Lcom/sec/android/daemonapp/slog/SLog;->log_on:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    const/4 v8, 0x6

    if-eq p0, v8, :cond_12

    const/4 v8, 0x3

    if-eq p0, v8, :cond_12

    .line 119
    :cond_10
    const/4 v3, 0x0

    .line 148
    :cond_11
    return v3

    .line 122
    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 124
    .local v3, length:I
    const/4 v4, 0x0

    .line 127
    .local v4, linenum:I
    if-eqz p1, :cond_19

    .line 133
    :cond_19
    sget-object v7, Lcom/sec/android/daemonapp/slog/SLog;->TAG_APP:Ljava/lang/String;

    .line 137
    .local v7, tag_app:Ljava/lang/String;
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v1, v8, v10

    .line 139
    .local v1, element:Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MSC_Accu]>>> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, header_temp:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, offset:I
    move v5, v4

    .end local v4           #linenum:I
    .local v5, linenum:I
    :goto_4d
    if-le v3, v6, :cond_11

    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v4, v5, 0x1

    .end local v5           #linenum:I
    .restart local v4       #linenum:I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-int v9, v3, v6

    const/16 v10, 0x80

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {p2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 141
    add-int/lit16 v6, v6, 0x80

    move v5, v4

    .end local v4           #linenum:I
    .restart local v5       #linenum:I
    goto :goto_4d
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 65
    sput-object p0, Lcom/sec/android/daemonapp/slog/SLog;->appContext:Landroid/content/Context;

    .line 68
    sget-object v5, Lcom/sec/android/daemonapp/slog/SLog;->appContext:Landroid/content/Context;

    const-string v6, "prefs_slog"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 69
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v5, "slog_on"

    sget v6, Lcom/sec/android/daemonapp/slog/SLog;->log_on:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sec/android/daemonapp/slog/SLog;->log_on:I

    .line 71
    sget-object v5, Lcom/sec/android/daemonapp/slog/SLog;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_1b
    sget-object v5, Lcom/sec/android/daemonapp/slog/SLog;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    .local v1, info:Landroid/content/pm/PackageInfo;
    const-string v5, "com.samsung.log"

    const-string v6, "[MSC_Accu]>>> ===================================================================================================================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v5, "com.samsung.log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MSC_Accu]>>> PackageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [Version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "[.]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, str:[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    sput-object v5, Lcom/sec/android/daemonapp/slog/SLog;->TAG_APP:Ljava/lang/String;

    .line 94
    const-string v5, "com.samsung.log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MSC_Accu]>>> Header set to : ===> \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/daemonapp/slog/SLog;->TAG_APP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" <==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v5, "com.samsung.log"

    const-string v6, "[MSC_Accu]>>> ===================================================================================================================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_a1} :catch_a2

    .line 103
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #str:[Ljava/lang/String;
    :goto_a1
    return-void

    .line 98
    :catch_a2
    move-exception v0

    .line 101
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_a1
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 51
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/sec/android/daemonapp/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 56
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/sec/android/daemonapp/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
