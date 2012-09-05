.class public Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;
.super Ljava/lang/Object;
.source "MXBaseFileLister.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;


# instance fields
.field mFileList:[Ljava/io/File;

.field mFilter:Ljava/io/FilenameFilter;

.field mFolder:Ljava/lang/String;

.field mListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister$OnListChangedListener;


# direct methods
.method public constructor <init>(Ljava/io/FilenameFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFilter:Ljava/io/FilenameFilter;

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized listUpWithFilter()V
    .registers 6

    .prologue
    .line 52
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, folder:Ljava/io/File;
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFileList:[Ljava/io/File;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_1b

    .line 66
    .end local v1           #folder:Ljava/io/File;
    :goto_10
    :try_start_10
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister$OnListChangedListener;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFolder:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFileList:[Ljava/io/File;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister$OnListChangedListener;->onListChanged(Ljava/lang/String;[Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_23

    .line 68
    monitor-exit p0

    return-void

    .line 58
    :catch_1b
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFileList:[Ljava/io/File;
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_23

    goto :goto_10

    .line 52
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setFilenameFilter(Ljava/io/FilenameFilter;)V
    .registers 2
    .parameter "filter"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFilter:Ljava/io/FilenameFilter;

    .line 74
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .registers 2
    .parameter "folder"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mFolder:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setOnListChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister$OnListChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXBaseFileLister;->mListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister$OnListChangedListener;

    .line 92
    return-void
.end method
