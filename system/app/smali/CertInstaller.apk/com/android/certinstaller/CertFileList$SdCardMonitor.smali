.class Lcom/android/certinstaller/CertFileList$SdCardMonitor;
.super Ljava/lang/Object;
.source "CertFileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/certinstaller/CertFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdCardMonitor"
.end annotation


# instance fields
.field mDownloadMonitor:Landroid/os/FileObserver;

.field mRootMonitor:Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/android/certinstaller/CertFileList;


# direct methods
.method constructor <init>(Lcom/android/certinstaller/CertFileList;)V
    .registers 6
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 156
    .local v1, root:Ljava/io/File;
    new-instance v2, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$1;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v2, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    .line 163
    new-instance v0, Ljava/io/File;

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v0, download:Ljava/io/File;
    new-instance v2, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$2;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;Ljava/lang/String;Lcom/android/certinstaller/CertFileList;)V

    iput-object v2, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mDownloadMonitor:Landroid/os/FileObserver;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/certinstaller/CertFileList$SdCardMonitor;ILjava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->commonHandler(ILjava/lang/String;)V

    return-void
.end method

.method private commonHandler(ILjava/lang/String;)V
    .registers 5
    .parameter "evt"
    .parameter "path"

    .prologue
    .line 173
    sparse-switch p1, :sswitch_data_18

    .line 185
    :cond_3
    :goto_3
    return-void

    .line 176
    :sswitch_4
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    invoke-virtual {v0, p2}, Lcom/android/certinstaller/CertFileList;->isFileAcceptable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->this$0:Lcom/android/certinstaller/CertFileList;

    new-instance v1, Lcom/android/certinstaller/CertFileList$SdCardMonitor$3;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor$3;-><init>(Lcom/android/certinstaller/CertFileList$SdCardMonitor;)V

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/CertFileList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 173
    nop

    :sswitch_data_18
    .sparse-switch
        0x100 -> :sswitch_4
        0x200 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method startWatching()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 189
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mDownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 190
    return-void
.end method

.method stopWatching()V
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mRootMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 194
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->mDownloadMonitor:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 195
    return-void
.end method
