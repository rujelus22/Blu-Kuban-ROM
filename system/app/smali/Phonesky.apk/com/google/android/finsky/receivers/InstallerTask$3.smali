.class Lcom/google/android/finsky/receivers/InstallerTask$3;
.super Ljava/lang/Object;
.source "InstallerTask.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/InstallerTask;->getInstallerListener(Landroid/net/Uri;)Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/InstallerTask;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/InstallerTask;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installCompleted(ZLjava/lang/String;)V
    .registers 7
    .parameter "successful"
    .parameter "failReason"

    .prologue
    const/4 v0, 0x0

    .line 1059
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v2, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->val$uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/receivers/InstallerTask;->releaseInstalledUri(Landroid/net/Uri;)V

    .line 1060
    if-eqz p1, :cond_2a

    .line 1061
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.installerFinished"

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v3, v3, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_1b
    iget-object v1, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    const/16 v2, 0x46

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->setInstallerState(ILjava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$800(Lcom/google/android/finsky/receivers/InstallerTask;ILjava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    #calls: Lcom/google/android/finsky/receivers/InstallerTask;->advanceState()V
    invoke-static {v0}, Lcom/google/android/finsky/receivers/InstallerTask;->access$900(Lcom/google/android/finsky/receivers/InstallerTask;)V

    .line 1070
    return-void

    .line 1064
    :cond_2a
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v1

    const-string v2, "install.installerError"

    iget-object v3, p0, Lcom/google/android/finsky/receivers/InstallerTask$3;->this$0:Lcom/google/android/finsky/receivers/InstallerTask;

    iget-object v3, v3, Lcom/google/android/finsky/receivers/InstallerTask;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p2}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b
.end method
