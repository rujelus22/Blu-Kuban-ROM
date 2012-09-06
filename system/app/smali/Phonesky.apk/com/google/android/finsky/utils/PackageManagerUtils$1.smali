.class Lcom/google/android/finsky/utils/PackageManagerUtils$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/PackageManagerUtils;->installPackage(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;IJLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/finsky/utils/PackageManagerUtils$1;->val$observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;

    .line 50
    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 4
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerUtils$1;->val$observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;

    if-eqz v0, :cond_9

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/utils/PackageManagerUtils$1;->val$observer:Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;

    invoke-interface {v0, p1, p2}, Lcom/google/android/finsky/utils/PackageManagerUtils$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V

    .line 56
    :cond_9
    return-void
.end method
