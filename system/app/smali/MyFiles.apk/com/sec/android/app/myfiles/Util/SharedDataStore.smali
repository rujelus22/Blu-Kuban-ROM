.class public Lcom/sec/android/app/myfiles/Util/SharedDataStore;
.super Ljava/lang/Object;
.source "SharedDataStore.java"


# static fields
.field private static mCurrentSortBy:I

.field private static mCurrentView:I

.field private static mHomeDirectory:Ljava/lang/String;

.field private static mPref:Landroid/content/SharedPreferences;

.field private static mShowFileExtention:Z

.field private static mShowHiddenFiles:Z

.field private static sInstance:Lcom/sec/android/app/myfiles/Util/SharedDataStore;


# instance fields
.field private mLastModifiedTime:J

.field private mPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->sInstance:Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    .line 43
    sput-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPref:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPath:Ljava/lang/String;

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mLastModifiedTime:J

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/myfiles/Util/SharedDataStore;
    .registers 3
    .parameter "context"

    .prologue
    .line 77
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->sInstance:Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    if-nez v0, :cond_17

    .line 79
    new-instance v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    invoke-direct {v0}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;-><init>()V

    sput-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->sInstance:Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    .line 81
    const-string v0, "MyFiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPref:Landroid/content/SharedPreferences;

    .line 83
    invoke-static {}, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->initValue()V

    .line 87
    :cond_17
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->sInstance:Lcom/sec/android/app/myfiles/Util/SharedDataStore;

    return-object v0
.end method

.method private static initValue()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "show_hidden_files"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mShowHiddenFiles:Z

    .line 97
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "show_file_extension"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mShowFileExtention:Z

    .line 99
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "home_directory"

    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "current_view"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mCurrentView:I

    .line 111
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "current_sort_by"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mCurrentSortBy:I

    .line 115
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 203
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 205
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;

    .line 207
    :cond_18
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPath:Ljava/lang/String;

    .line 211
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPath:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 199
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSortBy()I
    .registers 2

    .prologue
    .line 243
    monitor-enter p0

    :try_start_1
    sget v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mCurrentSortBy:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentView()I
    .registers 2

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    sget v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mCurrentView:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHomeDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    .line 155
    invoke-static {}, Lcom/sec/android/app/myfiles/Utils;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;

    .line 159
    :cond_14
    sget-object v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 153
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastModifiedTime()J
    .registers 3

    .prologue
    .line 227
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mLastModifiedTime:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowExtStatus()Z
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mShowFileExtention:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getShowHiddenStatus()Z
    .registers 2

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mShowHiddenFiles:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentDirectory(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mPath:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 193
    monitor-exit p0

    return-void

    .line 191
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentSortBy(I)V
    .registers 3
    .parameter "currentSortBy"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_1
    sput p1, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mCurrentSortBy:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 237
    monitor-exit p0

    return-void

    .line 235
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCurrentView(I)V
    .registers 3
    .parameter "view"

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    sput p1, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mCurrentView:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 185
    monitor-exit p0

    return-void

    .line 183
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHomeDirectory(Ljava/lang/String;)V
    .registers 3
    .parameter "path"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    sput-object p1, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mHomeDirectory:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastModifiedTime(J)V
    .registers 4
    .parameter "time"

    .prologue
    .line 219
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mLastModifiedTime:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 221
    monitor-exit p0

    return-void

    .line 219
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowExtStatus(Z)V
    .registers 3
    .parameter "show"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mShowFileExtention:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 147
    monitor-exit p0

    return-void

    .line 145
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setShowHiddenStatus(Z)V
    .registers 3
    .parameter "show"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    sput-boolean p1, Lcom/sec/android/app/myfiles/Util/SharedDataStore;->mShowHiddenFiles:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 131
    monitor-exit p0

    return-void

    .line 129
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
