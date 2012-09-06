.class public Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;
.super Ljava/lang/Object;
.source "AndroidApplicationInformation.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/system/ApplicationInformation;


# static fields
.field private static final APPLICATION_NAME:Ljava/lang/String; = "googlevoice"

.field private static final DISTRIBUTION_CHANNEL:Ljava/lang/String; = "web"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getApplicationName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    const-string v0, "googlevoice"

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    .line 41
    :goto_13
    return-object v1

    .line 38
    :catch_14
    move-exception v0

    .line 40
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Couldn\'t get application version name"

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 41
    const-string v1, "unknown"

    goto :goto_13
.end method

.method public getDistributionChannel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    const-string v0, "web"

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    const-string v0, "android-%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLibraryDirectory()Ljava/lang/String;
    .registers 6

    .prologue
    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/system/AndroidApplicationInformation;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x400

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 56
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v2

    .line 60
    .end local v0           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    :goto_27
    return-object v2

    .line 57
    :catch_28
    move-exception v1

    .line 59
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Couldn\'t get shared library directory"

    invoke-static {v2}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    .line 60
    const-string v2, ""

    goto :goto_27
.end method
