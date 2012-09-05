.class public Lcom/sec/android/widgetapp/weatherclock/slog/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field static TAG_APP:Ljava/lang/String;

.field public static appContext:Landroid/content/Context;

.field public static log_on:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 28
    const-string v0, "com.samsung.app"

    sput-object v0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->TAG_APP:Ljava/lang/String;

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

    invoke-static {v0, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v0, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v0, p0, p1}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 18
    .parameter "priority"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 112
    sget v12, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_10

    sget v12, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_12

    const/4 v12, 0x6

    if-eq p0, v12, :cond_12

    const/4 v12, 0x3

    if-eq p0, v12, :cond_12

    .line 118
    :cond_10
    const/4 v6, 0x0

    .line 157
    :cond_11
    return v6

    .line 121
    :cond_12
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    .line 123
    .local v6, length:I
    const/4 v7, 0x0

    .line 126
    .local v7, linenum:I
    if-eqz p1, :cond_19

    .line 132
    :cond_19
    sget-object v11, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->TAG_APP:Ljava/lang/String;

    .line 136
    .local v11, tag_app:Ljava/lang/String;
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 137
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v12

    const/4 v13, 0x2

    aget-object v2, v12, v13

    .line 138
    .local v2, element:Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, filename:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v10, subFilename:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v5, v12, :cond_50

    .line 143
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4d

    .line 144
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 148
    :cond_50
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[MSC_Accu]>>> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, header_temp:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, offset:I
    move v8, v7

    .end local v7           #linenum:I
    .local v8, linenum:I
    :goto_77
    if-le v6, v9, :cond_11

    .line 152
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v7, v8, 0x1

    .end local v8           #linenum:I
    .restart local v7       #linenum:I
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-int v13, v6, v9

    const/16 v14, 0x80

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int/2addr v13, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v11, v12}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 150
    add-int/lit16 v9, v9, 0x80

    move v8, v7

    .end local v7           #linenum:I
    .restart local v8       #linenum:I
    goto :goto_77
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 65
    sput-object p0, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->appContext:Landroid/content/Context;

    .line 68
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->appContext:Landroid/content/Context;

    const-string v6, "prefs_slog"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 69
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v5, "slog_on"

    sget v6, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->log_on:I

    .line 71
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_1b
    sget-object v5, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->appContext:Landroid/content/Context;

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

    sput-object v5, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->TAG_APP:Ljava/lang/String;

    .line 94
    const-string v5, "com.samsung.log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MSC_Accu]>>> Header set to : ===> \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->TAG_APP:Ljava/lang/String;

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
