.class public Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;
.super Landroid/content/ContentQueryMap;
.source "TalkContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract$ProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueryMap"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;ZLandroid/os/Handler;)V
    .registers 10
    .parameter "contentResolver"
    .parameter "keepUpdated"
    .parameter "handlerForUpdateNotifications"

    .prologue
    const/4 v3, 0x0

    .line 1652
    sget-object v1, Lcom/google/android/gsf/TalkContract$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "name"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "value"

    aput-object v4, v2, v0

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "name"

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    .line 1658
    iput-object p1, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    .line 1659
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1856
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1857
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_10

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2
    :cond_10
    return p2
.end method

.method private getInteger(Ljava/lang/String;I)I
    .registers 5
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1882
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1883
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_10

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_10
    return p2
.end method

.method private getLong(Ljava/lang/String;J)J
    .registers 6
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1895
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1896
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_10

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2
    :cond_10
    return-wide p2
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1869
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1870
    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_c

    const-string v1, "value"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    :cond_c
    return-object p2
.end method


# virtual methods
.method public getAutomaticallyConnectToGTalkServer()Z
    .registers 3

    .prologue
    .line 1676
    const-string v0, "gtalk_auto_connect"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getEnableNotification()Z
    .registers 3

    .prologue
    .line 1715
    const-string v0, "enable_notification"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHeartbeatInterval()J
    .registers 4

    .prologue
    .line 1827
    const-string v0, "heartbeat_interval"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHideOfflineContacts()Z
    .registers 3

    .prologue
    .line 1696
    const-string v0, "hide_offline_contacts"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getJidResource()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1844
    const-string v0, "jid_resource"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingtoneURI()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1752
    const-string v0, "ringtone"

    const-string v1, "content://settings/system/notification_sound"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAwayOnIdle()Z
    .registers 3

    .prologue
    .line 1789
    const-string v0, "show_away_on_idle"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getShowMobileIndicator()Z
    .registers 3

    .prologue
    .line 1770
    const-string v0, "mobile_indicator"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getUploadHeartbeatStat()Z
    .registers 3

    .prologue
    .line 1808
    const-string v0, "upload_heartbeat_stat"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getVibrate()Z
    .registers 3

    .prologue
    .line 1734
    const-string v0, "vibrate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAutomaticallyConnectToGTalkServer(Z)V
    .registers 3
    .parameter "autoConnect"

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;Z)V

    .line 1669
    return-void
.end method

.method public setEnableNotification(Z)V
    .registers 3
    .parameter "enable"

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setEnableNotification(Landroid/content/ContentResolver;Z)V

    .line 1707
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .registers 4
    .parameter "interval"

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setHeartbeatInterval(Landroid/content/ContentResolver;J)V

    .line 1819
    return-void
.end method

.method public setHideOfflineContacts(Z)V
    .registers 3
    .parameter "hideOfflineContacts"

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setHideOfflineContacts(Landroid/content/ContentResolver;Z)V

    .line 1688
    return-void
.end method

.method public setJidResource(Ljava/lang/String;)V
    .registers 3
    .parameter "jidResource"

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1837
    return-void
.end method

.method public setRingtoneURI(Ljava/lang/String;)V
    .registers 3
    .parameter "ringtoneUri"

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1744
    return-void
.end method

.method public setShowAwayOnIdle(Z)V
    .registers 3
    .parameter "showAway"

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setShowAwayOnIdle(Landroid/content/ContentResolver;Z)V

    .line 1781
    return-void
.end method

.method public setShowMobileIndicator(Z)V
    .registers 3
    .parameter "showMobile"

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setShowMobileIndicator(Landroid/content/ContentResolver;Z)V

    .line 1762
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .registers 3
    .parameter "uploadStat"

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setUploadHeartbeatStat(Landroid/content/ContentResolver;Z)V

    .line 1800
    return-void
.end method

.method public setVibrate(Z)V
    .registers 3
    .parameter "vibrate"

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->setVibrate(Landroid/content/ContentResolver;Z)V

    .line 1726
    return-void
.end method
