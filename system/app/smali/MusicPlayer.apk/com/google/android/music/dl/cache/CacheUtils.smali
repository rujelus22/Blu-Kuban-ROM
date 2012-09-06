.class public Lcom/google/android/music/dl/cache/CacheUtils;
.super Ljava/lang/Object;
.source "CacheUtils.java"


# static fields
.field private static final LOGV:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string v0, "CacheUtils"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/cache/CacheUtils;->LOGV:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getExternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .parameter "context"

    .prologue
    .line 192
    const-string v0, "artwork"

    invoke-static {p0, v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .parameter "context"
    .parameter "dir"

    .prologue
    const/4 v1, 0x0

    .line 215
    invoke-static {}, Lcom/google/android/music/dl/cache/CacheUtils;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_8

    .line 223
    :cond_7
    :goto_7
    return-object v1

    .line 218
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 220
    .local v0, externalCache:Ljava/io/File;
    if-eqz v0, :cond_7

    .line 223
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static getExternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .parameter "context"

    .prologue
    .line 168
    const-string v0, "music"

    invoke-static {p0, v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .parameter "context"

    .prologue
    .line 203
    const-string v0, "artwork"

    invoke-static {p0, v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .parameter "context"
    .parameter "dir"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 208
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_c

    .line 209
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static getInternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .parameter "context"

    .prologue
    .line 179
    const-string v0, "music"

    invoke-static {p0, v0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalCacheDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMusicCacheLocation(Landroid/content/Context;I)Lcom/google/android/music/dl/cache/CacheLocation;
    .registers 7
    .parameter "context"
    .parameter "localCopyStorageType"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, cacheDir:Ljava/io/File;
    sget-object v1, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->EXTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    .line 99
    .local v1, type:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;
    packed-switch p1, :pswitch_data_36

    .line 111
    const-string v2, "CacheUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected storage type value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_1e
    :pswitch_1e
    if-nez v0, :cond_30

    .line 115
    const/4 v2, 0x0

    .line 118
    :goto_21
    return-object v2

    .line 101
    :pswitch_22
    invoke-static {p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->EXTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    .line 103
    goto :goto_1e

    .line 105
    :pswitch_29
    invoke-static {p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/google/android/music/dl/cache/CacheLocation$StorageType;->INTERNAL:Lcom/google/android/music/dl/cache/CacheLocation$StorageType;

    .line 107
    goto :goto_1e

    .line 118
    :cond_30
    new-instance v2, Lcom/google/android/music/dl/cache/CacheLocation;

    invoke-direct {v2, v0, v1}, Lcom/google/android/music/dl/cache/CacheLocation;-><init>(Ljava/io/File;Lcom/google/android/music/dl/cache/CacheLocation$StorageType;)V

    goto :goto_21

    .line 99
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method

.method public static isExternalStorageMounted()Z
    .registers 3

    .prologue
    .line 37
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 39
    sget-boolean v1, Lcom/google/android/music/dl/cache/CacheUtils;->LOGV:Z

    if-eqz v1, :cond_17

    .line 40
    const-string v1, "CacheUtils"

    const-string v2, "External storage is not mounted"

    invoke-static {v1, v2}, Lcom/google/android/music/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_17
    const/4 v1, 0x0

    .line 44
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x1

    goto :goto_18
.end method

.method public static resolveArtworkPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;
    .registers 8
    .parameter "context"
    .parameter "localPath"
    .parameter "storageType"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    :cond_7
    :goto_7
    return-object v1

    .line 136
    :cond_8
    const/4 v0, 0x0

    .line 137
    .local v0, parentDir:Ljava/io/File;
    packed-switch p2, :pswitch_data_36

    .line 147
    const-string v2, "CacheUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected storage type value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_24
    :pswitch_24
    if-eqz v0, :cond_7

    .line 154
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7

    .line 139
    :pswitch_2c
    invoke-static {p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 140
    goto :goto_24

    .line 142
    :pswitch_31
    invoke-static {p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalArtworkCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 143
    goto :goto_24

    .line 137
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_24
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method public static resolveMusicPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;
    .registers 8
    .parameter "context"
    .parameter "localCopyPath"
    .parameter "localCopyStorageType"

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 82
    :cond_7
    :goto_7
    return-object v1

    .line 64
    :cond_8
    const/4 v0, 0x0

    .line 65
    .local v0, parentDir:Ljava/io/File;
    packed-switch p2, :pswitch_data_36

    .line 75
    const-string v2, "CacheUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected storage type value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_24
    :pswitch_24
    if-eqz v0, :cond_7

    .line 82
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_7

    .line 67
    :pswitch_2c
    invoke-static {p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getExternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 68
    goto :goto_24

    .line 70
    :pswitch_31
    invoke-static {p0}, Lcom/google/android/music/dl/cache/CacheUtils;->getInternalMusicCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 71
    goto :goto_24

    .line 65
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_24
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method
