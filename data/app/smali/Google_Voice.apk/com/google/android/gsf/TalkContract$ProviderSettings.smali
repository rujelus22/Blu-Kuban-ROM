.class public Lcom/google/android/gsf/TalkContract$ProviderSettings;
.super Ljava/lang/Object;
.source "TalkContract.java"

# interfaces
.implements Lcom/google/android/gsf/TalkContract$ProviderSettingsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/TalkContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProviderSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/TalkContract$ProviderSettings$QueryMap;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android-dir/gtalk-providerSettings"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final LAST_RMQ_RECEIVED:Ljava/lang/String; = "last_rmq_rec"

.field public static final SETTING_AUTOMATICALLY_CONNECT_GTALK:Ljava/lang/String; = "gtalk_auto_connect"

.field public static final SETTING_AUTOMATICALLY_START_SERVICE:Ljava/lang/String; = "auto_start_service"

.field public static final SETTING_ENABLE_NOTIFICATION:Ljava/lang/String; = "enable_notification"

.field public static final SETTING_HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartbeat_interval"

.field public static final SETTING_HIDE_OFFLINE_CONTACTS:Ljava/lang/String; = "hide_offline_contacts"

.field public static final SETTING_JID_RESOURCE:Ljava/lang/String; = "jid_resource"

.field public static final SETTING_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final SETTING_RINGTONE_DEFAULT:Ljava/lang/String; = "content://settings/system/notification_sound"

.field public static final SETTING_SHOW_AWAY_ON_IDLE:Ljava/lang/String; = "show_away_on_idle"

.field public static final SETTING_SHOW_MOBILE_INDICATOR:Ljava/lang/String; = "mobile_indicator"

.field public static final SETTING_UPLOAD_HEARTBEAT_STAT:Ljava/lang/String; = "upload_heartbeat_stat"

.field public static final SETTING_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final SHOW_OFFLINE_CONTACTS:Ljava/lang/String; = "show_offline_contacts"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1442
    const-string v0, "content://com.google.android.providers.talk/providerSettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/TalkContract$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    return-void
.end method

.method public static putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 6
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1521
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1522
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string v1, "value"

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    sget-object v1, Lcom/google/android/gsf/TalkContract$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1526
    return-void
.end method

.method public static putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .registers 7
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1506
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1507
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v1, "value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1510
    sget-object v1, Lcom/google/android/gsf/TalkContract$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1511
    return-void
.end method

.method public static putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1536
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1537
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    sget-object v1, Lcom/google/android/gsf/TalkContract$ProviderSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1541
    return-void
.end method

.method public static setAutomaticallyConnectGTalk(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "autoConnect"

    .prologue
    .line 1552
    const-string v0, "gtalk_auto_connect"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1553
    return-void
.end method

.method public static setEnableNotification(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "enable"

    .prologue
    .line 1574
    const-string v0, "enable_notification"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1575
    return-void
.end method

.method public static setHeartbeatInterval(Landroid/content/ContentResolver;J)V
    .registers 4
    .parameter "contentResolver"
    .parameter "interval"

    .prologue
    .line 1636
    const-string v0, "heartbeat_interval"

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putLongValue(Landroid/content/ContentResolver;Ljava/lang/String;J)V

    .line 1637
    return-void
.end method

.method public static setHideOfflineContacts(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "hideOfflineContacts"

    .prologue
    .line 1563
    const-string v0, "hide_offline_contacts"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1565
    return-void
.end method

.method public static setJidResource(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .parameter "contentResolver"
    .parameter "jidResource"

    .prologue
    .line 1643
    const-string v0, "jid_resource"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    return-void
.end method

.method public static setRingtoneURI(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3
    .parameter "contentResolver"
    .parameter "ringtoneUri"

    .prologue
    .line 1594
    const-string v0, "ringtone"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putStringValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method public static setShowAwayOnIdle(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "showAway"

    .prologue
    .line 1615
    const-string v0, "show_away_on_idle"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1616
    return-void
.end method

.method public static setShowMobileIndicator(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "showMobileIndicator"

    .prologue
    .line 1605
    const-string v0, "mobile_indicator"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1606
    return-void
.end method

.method public static setUploadHeartbeatStat(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "uploadStat"

    .prologue
    .line 1626
    const-string v0, "upload_heartbeat_stat"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1627
    return-void
.end method

.method public static setVibrate(Landroid/content/ContentResolver;Z)V
    .registers 3
    .parameter "contentResolver"
    .parameter "vibrate"

    .prologue
    .line 1584
    const-string v0, "vibrate"

    invoke-static {p0, v0, p1}, Lcom/google/android/gsf/TalkContract$ProviderSettings;->putBooleanValue(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1585
    return-void
.end method
