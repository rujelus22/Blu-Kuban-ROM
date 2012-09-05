.class Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$2;
.super Ljava/lang/Object;
.source "PreloadInstallerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;


# direct methods
.method constructor <init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$2;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$2;->this$1:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;

    iget-object v0, v0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v0, v0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 160
    return-void
.end method
