.class public Lcom/google/android/apps/plus/hangout/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static debuggable:Z

.field private static version:Ljava/lang/String;

.field private static versionName:Ljava/lang/String;


# direct methods
.method public static fitContentInContainer(DII)Lcom/google/android/apps/plus/hangout/RectangleDimensions;
    .registers 13
    .parameter "contentAspectRatio"
    .parameter "containerWidth"
    .parameter "containerHeight"

    .prologue
    const/4 v8, 0x1

    .line 107
    int-to-double v4, p2

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 109
    .local v0, containerAspectRatio:D
    cmpg-double v4, p0, v0

    if-gez v4, :cond_19

    .line 112
    int-to-double v4, p3

    mul-double/2addr v4, p0

    double-to-int v3, v4

    .line 113
    .local v3, contentWidth:I
    move v2, p3

    .line 120
    .local v2, contentHeight:I
    :goto_d
    if-ge v3, v8, :cond_10

    .line 121
    const/4 p2, 0x1

    .line 123
    :cond_10
    if-ge v2, v8, :cond_13

    .line 124
    const/4 v2, 0x1

    .line 127
    :cond_13
    new-instance v4, Lcom/google/android/apps/plus/hangout/RectangleDimensions;

    invoke-direct {v4, v3, v2}, Lcom/google/android/apps/plus/hangout/RectangleDimensions;-><init>(II)V

    return-object v4

    .line 117
    .end local v2           #contentHeight:I
    .end local v3           #contentWidth:I
    :cond_19
    move v3, p2

    .line 118
    .restart local v3       #contentWidth:I
    int-to-double v4, p2

    const-wide/high16 v6, -0x4010

    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .restart local v2       #contentHeight:I
    goto :goto_d
.end method

.method public static getAspectRatio(II)D
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 164
    int-to-double v0, p0

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/apps/plus/hangout/Utils;->version:Ljava/lang/String;

    return-object v0
.end method

.method static initialize(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 35
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, packageName:Ljava/lang/String;
    const/16 v5, 0x80

    :try_start_b
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 39
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3f

    const/4 v5, 0x1

    :goto_16
    sput-boolean v5, Lcom/google/android/apps/plus/hangout/Utils;->debuggable:Z

    .line 41
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 42
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v5, Lcom/google/android/apps/plus/hangout/Utils;->versionName:Ljava/lang/String;

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/google/android/apps/plus/hangout/Utils;->version:Ljava/lang/String;
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_3e} :catch_41

    .line 48
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_3e
    return-void

    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_3f
    move v5, v6

    .line 39
    goto :goto_16

    .line 44
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_41
    move-exception v1

    .line 45
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v6, Lcom/google/android/apps/plus/hangout/Utils;->debuggable:Z

    .line 46
    const-string v5, "Error reading version"

    sput-object v5, Lcom/google/android/apps/plus/hangout/Utils;->versionName:Ljava/lang/String;

    goto :goto_3e
.end method

.method public static isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 6
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 176
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_6
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_9} :catch_a

    .line 179
    :goto_9
    return v2

    .line 178
    :catch_a
    move-exception v0

    .line 179
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static isOnMainThread(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 68
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
