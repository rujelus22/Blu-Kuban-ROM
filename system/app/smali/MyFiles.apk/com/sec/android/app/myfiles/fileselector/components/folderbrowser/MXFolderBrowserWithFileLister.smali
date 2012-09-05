.class public Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;
.super Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;
.source "MXFolderBrowserWithFileLister.java"


# instance fields
.field isSetSelectAll:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;-><init>()V

    .line 7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->isSetSelectAll:Z

    .line 10
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;-><init>(Ljava/io/FilenameFilter;)V

    .line 11
    .local v0, lister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->setLister(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected applyFolderCustomizer()V
    .registers 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->applyFolderCustomizer()V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->clear()V

    .line 21
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowserWithFileLister;->isSetSelectAll:Z

    if-eqz v0, :cond_11

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->setSelectAll()V

    .line 23
    :cond_11
    return-void
.end method
