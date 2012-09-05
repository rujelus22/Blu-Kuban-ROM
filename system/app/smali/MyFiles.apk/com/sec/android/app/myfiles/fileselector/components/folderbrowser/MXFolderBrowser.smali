.class public abstract Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;
.super Ljava/lang/Object;
.source "MXFolderBrowser.java"

# interfaces
.implements Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister$OnListChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;,
        Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;
    }
.end annotation


# instance fields
.field protected mCurrentFolder:Ljava/lang/String;

.field protected mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

.field mFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected mFileListChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;

.field protected mFolderChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;

.field private mHomeFolder:Ljava/lang/String;

.field private mListOrder:I

.field private mLister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    .line 21
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileListChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;

    .line 23
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFolderChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;

    .line 25
    new-instance v0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    .line 31
    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mHomeFolder:Ljava/lang/String;

    .line 263
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;)Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mLister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;

    return-object v0
.end method

.method private listUp()V
    .registers 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 212
    return-void
.end method


# virtual methods
.method protected applyFolderCustomizer()V
    .registers 1

    .prologue
    .line 203
    return-void
.end method

.method public declared-synchronized applyListOrder()V
    .registers 5

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    const-string v1, "[MyFiles]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MXFolderBrowser:applyListOrder / list order : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    .local v0, tempFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    if-eqz v0, :cond_2f

    .line 171
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_NAME_ASC:I

    if-ne v1, v2, :cond_31

    .line 172
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortByNameASC(Ljava/util/ArrayList;)V

    .line 188
    :cond_2d
    :goto_2d
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_3b

    .line 191
    :cond_2f
    monitor-exit p0

    return-void

    .line 173
    :cond_31
    :try_start_31
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_NAME_DEC:I

    if-ne v1, v2, :cond_3e

    .line 174
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortByNameDEC(Ljava/util/ArrayList;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3b

    goto :goto_2d

    .line 165
    .end local v0           #tempFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 175
    .restart local v0       #tempFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_3e
    :try_start_3e
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_SIZE_ASC:I

    if-ne v1, v2, :cond_48

    .line 176
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortBySizeASC(Ljava/util/ArrayList;)V

    goto :goto_2d

    .line 177
    :cond_48
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_SIZE_DEC:I

    if-ne v1, v2, :cond_52

    .line 178
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortBySizeDEC(Ljava/util/ArrayList;)V

    goto :goto_2d

    .line 179
    :cond_52
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TIME_ASC:I

    if-ne v1, v2, :cond_5c

    .line 180
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortByTimeASC(Ljava/util/ArrayList;)V

    goto :goto_2d

    .line 181
    :cond_5c
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TIME_DEC:I

    if-ne v1, v2, :cond_66

    .line 182
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortByTimeDEC(Ljava/util/ArrayList;)V

    goto :goto_2d

    .line 183
    :cond_66
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TYPE_ASC:I

    if-ne v1, v2, :cond_70

    .line 184
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortByExtASC(Ljava/util/ArrayList;)V

    goto :goto_2d

    .line 185
    :cond_70
    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    sget v2, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->BY_TYPE_DEC:I

    if-ne v1, v2, :cond_2d

    .line 186
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFileSorter;->sortByExtDEC(Ljava/util/ArrayList;)V
    :try_end_79
    .catchall {:try_start_3e .. :try_end_79} :catchall_3b

    goto :goto_2d
.end method

.method public canGoHomeFolder()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public canGoUpFolder()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 72
    const-string v2, "[MyFiles]"

    const-string v3, "MXFolderBrowser:canGoUpFolder"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_8
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCurrentFolder:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCurrentFolder:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_48

    move-result v2

    if-eqz v2, :cond_47

    .line 77
    const/4 v1, 0x1

    .line 82
    :cond_47
    :goto_47
    return v1

    .line 80
    :catch_48
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_47
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 117
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MXFolderBrowser:getCount / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    if-eqz v0, :cond_30

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :goto_2f
    return v0

    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_2f
.end method

.method public getFile(I)Ljava/io/File;
    .registers 6
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v1, "[MyFiles]"

    const-string v3, "MXFolderBrowser:getFile"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->getCount()I

    move-result v1

    if-nez v1, :cond_21

    .line 147
    :cond_14
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_47

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 160
    :goto_20
    return-object v1

    .line 150
    :cond_21
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_30

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->getFile(I)Ljava/io/File;

    move-result-object v1

    goto :goto_20

    .line 153
    :cond_30
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCustomisedList:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;

    invoke-virtual {v3}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderCustomizedSet;->getCount()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_40} :catch_41

    goto :goto_20

    .line 156
    :catch_41
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 158
    goto :goto_20

    .end local v0           #e:Ljava/lang/Exception;
    :cond_47
    move-object v1, v2

    .line 160
    goto :goto_20
.end method

.method public getFolder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCurrentFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getHomeFolder()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mHomeFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getListOrder()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    return v0
.end method

.method public notifyListChanged()V
    .registers 4

    .prologue
    .line 195
    const-string v0, "[MyFiles]"

    const-string v1, "MXFolderBrowser:notifyListChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileListChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;

    if-eqz v0, :cond_14

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileListChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCurrentFolder:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;->onFileListChanged(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 199
    :cond_14
    return-void
.end method

.method public onListChanged(Ljava/lang/String;[Ljava/io/File;)V
    .registers 7
    .parameter "foldername"
    .parameter "filelist"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 240
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 241
    if-eqz p2, :cond_17

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->applyListOrder()V

    .line 245
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->applyFolderCustomizer()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_37

    .line 249
    :goto_1a
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileListChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;

    if-eqz v1, :cond_25

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileListChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileList:Ljava/util/ArrayList;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;->onFileListChanged(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 251
    :cond_25
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFolderChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;

    if-eqz v1, :cond_36

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFolderChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->canGoUpFolder()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->canGoHomeFolder()Z

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;->onFolderChanged(Ljava/lang/String;ZZ)V

    .line 253
    :cond_36
    return-void

    .line 246
    :catch_37
    move-exception v0

    .line 247
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public setFilnameFilter(Ljava/io/FilenameFilter;)V
    .registers 3
    .parameter "filter"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mLister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;

    invoke-interface {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;->setFilenameFilter(Ljava/io/FilenameFilter;)V

    .line 221
    return-void
.end method

.method public setFolder(Ljava/lang/String;)V
    .registers 4
    .parameter "foldername"

    .prologue
    .line 44
    const-string v0, "[MyFiles]"

    const-string v1, "MXFolderBrowser:setFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mCurrentFolder:Ljava/lang/String;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mLister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;

    invoke-interface {v0, p1}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;->setFolder(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->listUp()V

    .line 52
    return-void
.end method

.method public setHomeFolder(Ljava/lang/String;)V
    .registers 4
    .parameter "homeFolder"

    .prologue
    .line 56
    const-string v0, "[MyFiles]"

    const-string v1, "MXFolderBrowser:setFomeFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mHomeFolder:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setListOrder(I)V
    .registers 5
    .parameter "listorder"

    .prologue
    .line 105
    const-string v0, "[MyFiles]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MXFolderBrowser:setListOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mListOrder:I

    .line 109
    return-void
.end method

.method public setLister(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;)V
    .registers 3
    .parameter "lister"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mLister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;

    .line 216
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mLister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;

    invoke-interface {v0, p0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;->setOnListChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister$OnListChangedListener;)V

    .line 217
    return-void
.end method

.method public setOnFileListChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFileListChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFileListChangedListener;

    .line 36
    return-void
.end method

.method public setOnFolerChangedListener(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mFolderChangedListener:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$OnFolderChangedListener;

    .line 40
    return-void
.end method
