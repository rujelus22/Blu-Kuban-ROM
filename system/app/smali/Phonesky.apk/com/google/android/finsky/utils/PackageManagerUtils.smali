.class public Lcom/google/android/finsky/utils/PackageManagerUtils;
.super Ljava/lang/Object;
.source "PackageManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;,
        Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeStorageAndNotify(Landroid/content/Context;JLcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V
    .registers 6
    .parameter "context"
    .parameter "requiredSize"
    .parameter "listener"

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 54
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/google/android/finsky/utils/PackageManagerUtils$2;

    invoke-direct {v1, p3}, Lcom/google/android/finsky/utils/PackageManagerUtils$2;-><init>(Lcom/google/android/finsky/utils/PackageManagerUtils$FreeSpaceListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 60
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;I)V
    .registers 7
    .parameter "ctx"
    .parameter "uri"
    .parameter "observer"
    .parameter "installFlags"

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 27
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/google/android/finsky/utils/PackageManagerUtils$1;

    invoke-direct {v1, p2}, Lcom/google/android/finsky/utils/PackageManagerUtils$1;-><init>(Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;)V

    .line 35
    const-string v2, "com.android.vending"

    .line 27
    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 36
    return-void
.end method

.method public static uninstallPackage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "ctx"
    .parameter "packageName"

    .prologue
    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 77
    return-void
.end method
