.class public Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field static TAG_APP:Ljava/lang/String;

.field public static appContext:Landroid/content/Context;

.field static force_header:Z

.field static header:Ljava/lang/String;

.field public static log_on:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    .line 30
    const-string v0, "com.samsung.app"

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->TAG_APP:Ljava/lang/String;

    .line 145
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->force_header:Z

    .line 146
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->header:Ljava/lang/String;

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
    .line 38
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 43
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 48
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

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

    .line 115
    sget v8, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    if-eq v8, v10, :cond_10

    sget v8, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    const/4 v8, 0x6

    if-eq p0, v8, :cond_12

    const/4 v8, 0x3

    if-eq p0, v8, :cond_12

    .line 117
    :cond_10
    const/4 v3, 0x0

    .line 142
    :cond_11
    return v3

    .line 120
    :cond_12
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 122
    .local v3, length:I
    const/4 v4, 0x0

    .line 125
    .local v4, linenum:I
    sget-object v7, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->TAG_APP:Ljava/lang/String;

    .line 127
    .local v7, tag_app:Ljava/lang/String;
    sget-boolean v8, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->force_header:Z

    if-eqz v8, :cond_1f

    .line 128
    sget-object v7, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->header:Ljava/lang/String;

    .line 131
    :cond_1f
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 132
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v1, v8, v10

    .line 133
    .local v1, element:Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[MSC]>>> "

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

    .line 135
    .local v2, header_temp:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, offset:I
    move v5, v4

    .end local v4           #linenum:I
    .local v5, linenum:I
    :goto_51
    if-le v3, v6, :cond_11

    .line 137
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

    .line 135
    add-int/lit16 v6, v6, 0x80

    move v5, v4

    .end local v4           #linenum:I
    .restart local v5       #linenum:I
    goto :goto_51
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 67
    sput-object p0, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->appContext:Landroid/content/Context;

    .line 70
    sget-object v5, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->appContext:Landroid/content/Context;

    const-string v6, "prefs_slog"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 71
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v5, "slog_on"

    sget v6, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->log_on:I

    .line 74
    sget-object v5, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 77
    .local v2, manager:Landroid/content/pm/PackageManager;
    :try_start_1b
    sget-object v5, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->appContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 79
    .local v1, info:Landroid/content/pm/PackageInfo;
    const-string v5, "com.samsung.log"

    const-string v6, "[MSC]>>> ===================================================================================================================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v5, "com.samsung.log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MSC]>>> PackageName : "

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

    .line 87
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "[.]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, str:[Ljava/lang/String;
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v4, v5

    sput-object v5, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->TAG_APP:Ljava/lang/String;

    .line 97
    const-string v5, "com.samsung.log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MSC]>>> Header set to : ===> \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->TAG_APP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" <==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v5, "com.samsung.log"

    const-string v6, "[MSC]>>> ===================================================================================================================="

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_a1} :catch_a2

    .line 106
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #str:[Ljava/lang/String;
    :goto_a1
    return-void

    .line 101
    :catch_a2
    move-exception v0

    .line 104
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_a1
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 58
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
