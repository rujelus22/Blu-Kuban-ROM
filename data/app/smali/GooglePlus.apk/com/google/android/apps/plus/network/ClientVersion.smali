.class public final Lcom/google/android/apps/plus/network/ClientVersion;
.super Ljava/lang/Object;
.source "ClientVersion.java"


# static fields
.field private static sCachedValue:Ljava/lang/Integer;


# direct methods
.method public static declared-synchronized from(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    const-class v1, Lcom/google/android/apps/plus/network/ClientVersion;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/network/ClientVersion;->sCachedValue:Ljava/lang/Integer;

    if-nez v0, :cond_11

    .line 23
    invoke-static {p0}, Lcom/google/android/apps/plus/network/ClientVersion;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/network/ClientVersion;->sCachedValue:Ljava/lang/Integer;

    .line 25
    :cond_11
    sget-object v0, Lcom/google/android/apps/plus/network/ClientVersion;->sCachedValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_19

    move-result v0

    monitor-exit v1

    return v0

    .line 22
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getVersionCode(Landroid/content/Context;)I
    .registers 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 30
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 31
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 32
    .local v3, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 33
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    .line 35
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v3           #packageName:Ljava/lang/String;
    :goto_10
    return v4

    .line 34
    :catch_11
    move-exception v0

    .line 35
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_10
.end method
