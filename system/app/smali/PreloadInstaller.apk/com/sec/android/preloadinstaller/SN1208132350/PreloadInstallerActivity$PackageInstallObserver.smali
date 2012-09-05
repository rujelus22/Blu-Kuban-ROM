.class Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PreloadInstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageInstallObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 8
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v2, v2, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " installed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    invoke-static {v2}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->access$008(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)I

    .line 144
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    #getter for: Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->installedApkCnt:I
    invoke-static {v2}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->access$000(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)I

    move-result v2

    rem-int/lit8 v0, v2, 0x2

    .line 145
    .local v0, idx:I
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v2, v2, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->imgView:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$1;-><init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 157
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v2, v2, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->progressBar:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$2;

    invoke-direct {v3, p0}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver$2;-><init>(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 164
    const-wide/16 v2, 0x258

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 166
    const-string v2, "com.navigon.navigator_select_samsung_pac"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 169
    new-instance v1, Ljava/io/File;

    const-string v2, "mnt/sdcard/NAVIGON/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, path:Ljava/io/File;
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    #calls: Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->deleteDirectory(Ljava/io/File;)Z
    invoke-static {v2, v1}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->access$100(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;Ljava/io/File;)Z

    .line 171
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    const-string v3, "/preload/INTERNAL_SDCARD/"

    const-string v4, "/mnt/sdcard/"

    #calls: Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->CopyFolder(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->access$200(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v1           #path:Ljava/io/File;
    :cond_6b
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    #getter for: Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->installedApkCnt:I
    invoke-static {v2}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->access$000(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    #getter for: Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->listedApkCnt:I
    invoke-static {v3}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->access$300(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)I

    move-result v3

    if-ne v2, v3, :cond_87

    .line 175
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    iget-object v2, v2, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->logMsg:Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;

    const-string v3, "completed"

    invoke-virtual {v2, v3}, Lcom/sec/android/preloadinstaller/SN1208132350/LogMsg;->out(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity$PackageInstallObserver;->this$0:Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;

    #calls: Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->setDisabled()V
    invoke-static {v2}, Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;->access$400(Lcom/sec/android/preloadinstaller/SN1208132350/PreloadInstallerActivity;)V

    .line 178
    :cond_87
    return-void
.end method
