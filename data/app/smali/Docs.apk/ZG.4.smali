.class public LZG;
.super Ljava/lang/Object;
.source "PackageInfoHelper.java"


# static fields
.field private static a:Landroid/content/pm/PackageInfo;

.field private static a:LdX;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    sget-object v0, LdX;->e:LdX;

    sput-object v0, LZG;->a:LdX;

    .line 24
    const/4 v0, 0x0

    sput-object v0, LZG;->a:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method public static declared-synchronized a()I
    .registers 2

    .prologue
    .line 79
    const-class v1, LZG;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZG;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_d

    sget-object v0, LZG;->a:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    :goto_b
    monitor-exit v1

    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()LdX;
    .registers 2

    .prologue
    .line 65
    const-class v0, LZG;

    monitor-enter v0

    :try_start_3
    sget-object v1, LZG;->a:LdX;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-class v1, LZG;

    monitor-enter v1

    :try_start_3
    sget-object v0, LZG;->a:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_d

    sget-object v0, LZG;->a:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_10

    :goto_b
    monitor-exit v1

    return-object v0

    :cond_d
    :try_start_d
    const-string v0, "unknown"
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_10

    goto :goto_b

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    .line 34
    const-class v2, LZG;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5a

    move-result-object v0

    .line 37
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_f} :catch_37

    move-result-object v0

    move-object v1, v0

    .line 42
    :goto_11
    if-eqz v1, :cond_57

    :try_start_13
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0}, LdX;->a(Ljava/lang/String;)LdX;

    move-result-object v0

    :goto_19
    sput-object v0, LZG;->a:LdX;

    .line 44
    sput-object v1, LZG;->a:Landroid/content/pm/PackageInfo;

    .line 45
    const-string v0, "PackageInfoHelper"

    const-string v1, "Provided clientMode=%s, packageInfo=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, LZG;->a:LdX;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, LZG;->a:Landroid/content/pm/PackageInfo;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_13 .. :try_end_35} :catchall_5a

    .line 46
    monitor-exit v2

    return-void

    .line 38
    :catch_37
    move-exception v0

    .line 39
    :try_start_38
    const-string v0, "PackageInfoHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get info for package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_11

    .line 42
    :cond_57
    sget-object v0, LdX;->a:LdX;
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_5a

    goto :goto_19

    .line 34
    :catchall_5a
    move-exception v0

    monitor-exit v2

    throw v0
.end method
