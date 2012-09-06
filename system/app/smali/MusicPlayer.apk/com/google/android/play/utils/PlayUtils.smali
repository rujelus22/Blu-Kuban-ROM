.class public Lcom/google/android/play/utils/PlayUtils;
.super Ljava/lang/Object;
.source "PlayUtils.java"


# static fields
.field private static sProcessName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/play/utils/PlayUtils;->sProcessName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, userAgent:Ljava/lang/StringBuilder;
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 36
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_23
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_23} :catch_28

    .line 42
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 39
    :catch_28
    move-exception v0

    .line 40
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PlayUtils"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method public static getProcessName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    const-class v1, Lcom/google/android/play/utils/PlayUtils;

    monitor-enter v1

    .line 52
    :try_start_3
    sget-object v0, Lcom/google/android/play/utils/PlayUtils;->sProcessName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 53
    sget-object v0, Lcom/google/android/play/utils/PlayUtils;->sProcessName:Ljava/lang/String;

    monitor-exit v1

    .line 77
    :goto_a
    return-object v0

    .line 55
    :cond_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_33

    .line 56
    const/4 v2, 0x0

    .line 59
    :try_start_d
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v3, "/proc/self/cmdline"

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_74

    .line 60
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 61
    const-class v2, Lcom/google/android/play/utils/PlayUtils;

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_72
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_39

    .line 62
    :try_start_24
    sget-object v3, Lcom/google/android/play/utils/PlayUtils;->sProcessName:Ljava/lang/String;

    if-nez v3, :cond_2a

    .line 63
    sput-object v0, Lcom/google/android/play/utils/PlayUtils;->sProcessName:Ljava/lang/String;

    .line 65
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_36

    .line 70
    if-eqz v1, :cond_30

    .line 71
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_54

    .line 77
    :cond_30
    :goto_30
    sget-object v0, Lcom/google/android/play/utils/PlayUtils;->sProcessName:Ljava/lang/String;

    goto :goto_a

    .line 55
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v0

    .line 65
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_72
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_39} :catch_39

    .line 66
    :catch_39
    move-exception v0

    .line 67
    :goto_3a
    :try_start_3a
    const-string v2, "PlayUtils"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_72

    .line 70
    if-eqz v1, :cond_30

    .line 71
    :try_start_45
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_30

    .line 73
    :catch_49
    move-exception v0

    .line 74
    const-string v1, "PlayUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 73
    :catch_54
    move-exception v0

    .line 74
    const-string v1, "PlayUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30

    .line 69
    :catchall_5f
    move-exception v0

    move-object v1, v2

    .line 70
    :goto_61
    if-eqz v1, :cond_66

    .line 71
    :try_start_63
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    .line 75
    :cond_66
    :goto_66
    throw v0

    .line 73
    :catch_67
    move-exception v1

    .line 74
    const-string v2, "PlayUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    .line 69
    :catchall_72
    move-exception v0

    goto :goto_61

    .line 66
    :catch_74
    move-exception v0

    move-object v1, v2

    goto :goto_3a
.end method
