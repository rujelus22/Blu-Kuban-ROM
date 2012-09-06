.class public Lcom/google/android/music/dl/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static deleteTrack(Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 4
    .parameter "doNotDelete"
    .parameter "order"

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v0

    .line 44
    .local v0, localLocation:Ljava/io/File;
    if-eqz v0, :cond_10

    .line 45
    invoke-interface {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;->requestDeleteFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/music/dl/DownloadOrder;->clearLocalLocation(Z)V

    .line 49
    :cond_10
    return-void
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "context"

    .prologue
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Android-Music/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .local v2, userAgent:Ljava/lang/StringBuilder;
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 35
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_19} :catch_1e

    .line 39
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 36
    :catch_1e
    move-exception v0

    .line 37
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method

.method public static makeRingtoneFromOrder(Landroid/content/Context;Lcom/google/android/music/dl/DownloadOrder;)Z
    .registers 12
    .parameter "context"
    .parameter "order"

    .prologue
    const/4 v9, 0x1

    .line 99
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/store/Store;->getRingtoneManager()Lcom/google/android/music/store/MusicRingtoneManager;

    move-result-object v0

    .line 100
    .local v0, ringtones:Lcom/google/android/music/store/MusicRingtoneManager;
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRingtoneSize()J

    move-result-wide v7

    .line 101
    .local v7, ringtoneFileSize:J
    const-wide/16 v1, 0x0

    cmp-long v1, v7, v1

    if-lez v1, :cond_68

    .line 103
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 104
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->RINGTONE_DOWNLOAD:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .line 115
    .local v5, ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :goto_1b
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getRemoteId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getTrackName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/music/store/MusicRingtoneManager;->makeRingtoneFile(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;Ljava/lang/String;JZ)I

    .line 121
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :goto_36
    return v9

    .line 105
    :cond_37
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 106
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->KEEPON_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .restart local v5       #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    goto :goto_1b

    .line 107
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :cond_40
    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->hasPlaybackPurpose()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 108
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .restart local v5       #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    goto :goto_1b

    .line 110
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :cond_49
    const-string v1, "DownloadUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected order purpose value when making ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/music/dl/DownloadOrder;->getPurposes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v5, Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;->CACHED_TRACK:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;

    .restart local v5       #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    goto :goto_1b

    .line 121
    .end local v5           #ringtoneSource:Lcom/google/android/music/store/MusicRingtoneManager$RingtoneSource;
    :cond_68
    const/4 v9, 0x0

    goto :goto_36
.end method

.method public static setBitrate(Lcom/google/android/music/dl/DownloadOrder;Lcom/google/android/music/jumper/MusicPreferences;)V
    .registers 3
    .parameter "order"
    .parameter "preferences"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamOnlyHQ()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    :cond_c
    const/16 v0, 0x200

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V

    .line 134
    :goto_11
    return-void

    .line 129
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 130
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V

    goto :goto_11

    .line 132
    :cond_1e
    invoke-static {}, Lcom/google/android/music/dl/NetworkMonitor;->getRecommendedBitrate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/dl/DownloadOrder;->setRecommendedBitrate(I)V

    goto :goto_11
.end method

.method public static storeOrDeleteTrack(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;Lcom/google/android/music/dl/DownloadOrder;)V
    .registers 14
    .parameter "context"
    .parameter "doNotDelete"
    .parameter "order"

    .prologue
    const/4 v10, 0x1

    .line 53
    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->getFullPath()Ljava/io/File;

    move-result-object v8

    .line 55
    .local v8, localLocation:Ljava/io/File;
    invoke-static {p0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    .line 57
    .local v0, store:Lcom/google/android/music/store/Store;
    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->hasRingtonePurpose()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 58
    invoke-static {p0, p2}, Lcom/google/android/music/dl/DownloadUtils;->makeRingtoneFromOrder(Landroid/content/Context;Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v9

    .line 59
    .local v9, ringtoneProcessed:Z
    if-nez v9, :cond_2e

    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 61
    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->getRingtoneManager()Lcom/google/android/music/store/MusicRingtoneManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v5, v2}, Lcom/google/android/music/store/MusicRingtoneManager;->markRingtoneRequestAsFailed(JLjava/lang/String;)Z

    .line 66
    .end local v9           #ringtoneProcessed:Z
    :cond_2e
    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->isAutoDelete()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 67
    if-eqz v8, :cond_3f

    invoke-interface {p1, v8}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;->requestDeleteFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 68
    invoke-virtual {p2, v10}, Lcom/google/android/music/dl/DownloadOrder;->clearLocalLocation(Z)V

    .line 96
    :cond_3f
    :goto_3f
    return-void

    .line 73
    :cond_40
    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->isRingtoneOnly()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 74
    if-eqz v8, :cond_3f

    .line 75
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_3f

    .line 78
    :cond_4c
    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->shouldSaveLocation()Z

    move-result v1

    if-eqz v1, :cond_81

    if-eqz v8, :cond_81

    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->getLocalCopyPath()Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, saveLocation:Ljava/lang/String;
    :goto_58
    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->getContentIdentifier()Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/dl/ContentIdentifier;->getId()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->hasKeeponPurpose()Z

    move-result v4

    if-eqz v4, :cond_83

    const/16 v4, 0xc8

    :goto_68
    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->getDownloadLength()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/google/android/music/dl/DownloadOrder;->getLocalCopyStorageType()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/music/store/Store;->updateCachedFileLocation(JLjava/lang/String;IJI)V

    .line 87
    if-nez v3, :cond_3f

    .line 89
    if-eqz v8, :cond_3f

    .line 90
    invoke-interface {p1, v8}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDelete;->requestDeleteFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 91
    invoke-virtual {p2, v10}, Lcom/google/android/music/dl/DownloadOrder;->clearLocalLocation(Z)V

    goto :goto_3f

    .line 78
    .end local v3           #saveLocation:Ljava/lang/String;
    :cond_81
    const/4 v3, 0x0

    goto :goto_58

    .line 81
    .restart local v3       #saveLocation:Ljava/lang/String;
    :cond_83
    const/16 v4, 0x64

    goto :goto_68
.end method
