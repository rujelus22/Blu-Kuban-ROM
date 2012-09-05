.class public Lcom/swype/android/service/SwypeConnect;
.super Ljava/lang/Object;
.source "SwypeConnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/service/SwypeConnect$IncomingHandler;,
        Lcom/swype/android/service/SwypeConnect$ConnectivityCheckReceiver;,
        Lcom/swype/android/service/SwypeConnect$ConnectionListener;
    }
.end annotation


# static fields
.field public static final CONFIGURE_DATA_CONNECTION_INTENT:Ljava/lang/String; = "com.swype.android.connect.settings.ConnectPreferenceActivity"

.field public static final CONNECT_BACKUP_NAMESPACE:Ljava/lang/String; = "SwypeConnect"

.field public static final CONNECT_PREFERENCES:Ljava/lang/String; = "ConnectPrefs"

.field public static final CONNECT_PREFERENCE_ACTIVITY:Ljava/lang/String; = "com.swype.android.connect.settings.ConnectPreferenceActivity"

.field private static final DEFAULT_KEY:Ljava/lang/String; = "DEFAULT_KEY"

.field public static final DEVICE_LANGUAGELIST_INTENT:Ljava/lang/String; = "com.swype.android.inputmethod.SwypeSettings"

.field public static final DEVICE_UPGRADE_INTENT:Ljava/lang/String; = "com.swype.android.inputmethod.SwypeSettings"

.field public static final DOWNLOAD_LANGUAGE_ACTIVITY:Ljava/lang/String; = "com.swype.android.connect.settings.DownloadLanguagesActivity"

.field public static final DOWNLOAD_LANGUAGE_PROGRESS_INTENT:Ljava/lang/String; = "com.swype.android.connect.DownloadLanguageProgress"

.field public static final DOWNLOAD_LIST_STATE_AVAILABLE:I = 0x1

.field public static final DOWNLOAD_LIST_STATE_NONE:I = 0x2

.field public static final DOWNLOAD_LIST_STATE_PREF:Ljava/lang/String; = "DOWNLOAD_LIST_STATE"

.field public static final DOWNLOAD_LIST_STATE_UNKNOWN:I = 0x0

.field public static final ENABLE_DATA_CONNECTION_PREF:Ljava/lang/String; = "ENABLE_DATA_CONNECTION_PREF"

.field public static final INSTALLED_LANGUAGES_COUNT_PREF:Ljava/lang/String; = "LANGUAGES_COUNT"

.field public static final LANGUAGES_AVAILABLE_PREF:Ljava/lang/String; = "LANGUAGES_AVAILABLE_DL"

.field public static final LANGUAGE_REMOVING_LIST_PREF:Ljava/lang/String; = "LANGUAGE_REMOVING_LIST_PREF"

.field public static final LANGUAGE_STATUS_DOWNLOADING:Ljava/lang/String; = "LANGUAGE_STATUS_DOWNLOADING"

.field public static final LANGUAGE_STATUS_INSTALLED:Ljava/lang/String; = "LANGUAGE_STATUS_INSTALLED"

.field public static final LANGUAGE_STATUS_INSTALLING:Ljava/lang/String; = "LANGUAGE_STATUS_INSTALLING"

.field public static final LANGUAGE_STATUS_QUEUED:Ljava/lang/String; = "LANGUAGE_STATUS_QUEUED"

.field public static final LANGUAGE_STATUS_REMOVED:Ljava/lang/String; = "LANGUAGE_STATUS_REMOVED"

.field public static final MESSAGE_CLIENT_CANCEL_LANGUAGE_DOWNLOAD:I = 0x76

.field public static final MESSAGE_CLIENT_GET_MESSAGE_ID:I = 0x71

.field public static final MESSAGE_CLIENT_LANGUAGE_FETCH:I = 0x72

.field public static final MESSAGE_CLIENT_LANGUAGE_INSTALLED:I = 0x73

.field public static final MESSAGE_CLIENT_LANGUAGE_UNINSTALLED:I = 0x74

.field public static final MESSAGE_CLIENT_REGISTER_CLIENT:I = 0x64

.field public static final MESSAGE_CLIENT_SEND_AGGREGATE_REPORTING:I = 0x67

.field public static final MESSAGE_CLIENT_SEND_STAT_REPORTING:I = 0x66

.field public static final MESSAGE_CLIENT_SET_CURRENT_LOCALE:I = 0x6d

.field public static final MESSAGE_CLIENT_SET_LANGUAGES_AVAILABLE:I = 0x6c

.field public static final MESSAGE_CLIENT_SET_LANGUAGE_DISPLAY_NAMES:I = 0x75

.field public static final MESSAGE_CLIENT_SET_LICENSE_CHECKSUM:I = 0x6b

.field public static final MESSAGE_CLIENT_SET_LICENSE_CHECK_THRESHOLD:I = 0x69

.field public static final MESSAGE_CLIENT_SET_LICENSE_EXPIRATION:I = 0x6a

.field public static final MESSAGE_CLIENT_SET_LICENSE_STATUS:I = 0x77

.field public static final MESSAGE_CLIENT_SET_REPORTING_STATUS:I = 0x79

.field public static final MESSAGE_CLIENT_SET_SWIB:I = 0x6e

.field public static final MESSAGE_CLIENT_SET_TRIAL_STATUS:I = 0x78

.field public static final MESSAGE_CLIENT_START_IMMEDIDATELY:I = 0x7a

.field public static final MESSAGE_CLIENT_SWYPE_VERSION:I = 0x68

.field public static final MESSAGE_CLIENT_UNREGISTER_CLIENT:I = 0x65

.field public static final MESSAGE_CLIENT_UPGRADE_DOWNLOAD:I = 0x6f

.field public static final MESSAGE_CLIENT_UPGRADE_INSTALL:I = 0x70

.field public static final MESSAGE_COMMAND_LICENSE_ACK:I = 0x2b

.field public static final MESSAGE_COMMAND_LICENSE_REQUEST:I = 0x29

.field public static final MESSAGE_HOST_BACKUP_NOW:I = 0x57

.field public static final MESSAGE_HOST_CLIENT_START_COMPLETE:I = 0x5f

.field public static final MESSAGE_HOST_DISPLAY_MESSAGE:I = 0x4f

.field public static final MESSAGE_HOST_GET_CURRENT_LOCALE:I = 0x51

.field public static final MESSAGE_HOST_GET_LANGUAGES_AVAILABLE:I = 0x49

.field public static final MESSAGE_HOST_GET_LANGUAGE_DISPLAY_NAMES:I = 0x5b

.field public static final MESSAGE_HOST_GET_LICENSE_CHECKSUM:I = 0x4a

.field public static final MESSAGE_HOST_GET_LICENSE_CHECK_THRESHOLD:I = 0x4b

.field public static final MESSAGE_HOST_GET_LICENSE_EXPIRATION:I = 0x4c

.field public static final MESSAGE_HOST_GET_LICENSE_STATUS:I = 0x5c

.field public static final MESSAGE_HOST_GET_REPORTING_STATUS:I = 0x5e

.field public static final MESSAGE_HOST_GET_SWIB:I = 0x52

.field public static final MESSAGE_HOST_GET_SWYPE_VERSION:I = 0x56

.field public static final MESSAGE_HOST_GET_TRIAL_STATUS:I = 0x5d

.field public static final MESSAGE_HOST_LANGUAGE_INSTALL_READY:I = 0x59

.field public static final MESSAGE_HOST_LANGUAGE_LIST_AVAILABLE:I = 0x58

.field public static final MESSAGE_HOST_LANGUAGE_UNINSTALL:I = 0x5a

.field public static final MESSAGE_HOST_LICENSE_FETCH:I = 0x4d

.field public static final MESSAGE_HOST_RECEIVE_LICENSE_ACK:I = 0x4e

.field public static final MESSAGE_HOST_RECEIVE_MESSAGE_SET:I = 0x53

.field public static final MESSAGE_HOST_UPGRADE_AVAILABLE:I = 0x50

.field public static final MESSAGE_HOST_UPGRADE_DOWNLOAD_AVAILABLE:I = 0x54

.field public static final MESSAGE_HOST_UPGRADE_DOWNLOAD_COMPLETE:I = 0x55

.field public static final MESSAGE_LAST:I = 0x7a

.field public static final REFRESH_INTENT:Ljava/lang/String; = "com.swype.android.connect.Refresh"

.field public static final SETTINGS_DOWNLOAD_NOW_PREFERENCE:Ljava/lang/String; = "upgradeDownloadNowPreference"

.field public static final SETTINGS_INSTALL_NOW_PREFERENCE:Ljava/lang/String; = "upgradeInstallnowPreference"

.field public static final UPGRADE_FILE_PREFERENCE:Ljava/lang/String; = "upgradeFilePreference"

.field public static final UPGRADE_FILE_TRANSACTION_PREFERENCE:Ljava/lang/String; = "upgradeFileTransactionPreference"

.field private static final connectClientClass:Ljava/lang/String; = "com.swype.android.connect.ConnectClient"

.field public static final refreshFilter:Landroid/content/IntentFilter;


# instance fields
.field protected context:Landroid/content/Context;

.field private currentLocale:Ljava/lang/String;

.field private isConnectEnabled:Z

.field private isConnectStarted:Z

.field private mConnectBound:Z

.field private mConnectConnection:Landroid/content/ServiceConnection;

.field final mHandler:Lcom/swype/android/service/SwypeConnect$IncomingHandler;

.field final mMessenger:Landroid/os/Messenger;

.field protected mSendMessenger:Landroid/os/Messenger;

.field private messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private retLicenseFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.swype.android.connect.Refresh"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/swype/android/service/SwypeConnect;->refreshFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mSendMessenger:Landroid/os/Messenger;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->isConnectStarted:Z

    .line 111
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/swype/android/service/SwypeConnect;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 189
    new-instance v0, Lcom/swype/android/service/SwypeConnect$IncomingHandler;

    invoke-direct {v0, p0}, Lcom/swype/android/service/SwypeConnect$IncomingHandler;-><init>(Lcom/swype/android/service/SwypeConnect;)V

    iput-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mHandler:Lcom/swype/android/service/SwypeConnect$IncomingHandler;

    .line 190
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->mHandler:Lcom/swype/android/service/SwypeConnect$IncomingHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mMessenger:Landroid/os/Messenger;

    .line 609
    new-instance v0, Lcom/swype/android/service/SwypeConnect$4;

    invoke-direct {v0, p0}, Lcom/swype/android/service/SwypeConnect$4;-><init>(Lcom/swype/android/service/SwypeConnect;)V

    iput-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mConnectConnection:Landroid/content/ServiceConnection;

    .line 234
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    .line 235
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->isConnectEnabled:Z

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/service/SwypeConnect;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/swype/android/service/SwypeConnect;->removeLang(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/swype/android/service/SwypeConnect;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    return p1
.end method

.method public static canInstallUpgrade(Landroid/content/Context;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 805
    const-string v1, "ConnectPrefs"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 806
    const-string v2, "upgradeFileSize"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 807
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_5f

    move v0, v4

    .line 815
    :goto_3a
    if-eqz v0, :cond_5e

    .line 816
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    .line 818
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v5, v2

    .line 819
    mul-long v2, v5, v3

    .line 821
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-ltz v1, :cond_5e

    move v0, v7

    .line 827
    :cond_5e
    return v0

    .line 811
    :cond_5f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_71

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_71

    move v0, v4

    .line 812
    goto :goto_3a

    :cond_71
    move v0, v7

    goto :goto_3a
.end method

.method public static checkInternetStatus(Landroid/content/Context;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1037
    .line 1041
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1043
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/service/SwypeConnect;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v0, v3

    move v1, v2

    .line 1050
    :goto_16
    if-eqz v1, :cond_32

    move v0, v2

    .line 1056
    :goto_19
    return v0

    .line 1045
    :cond_1a
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/service/SwypeConnect;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-nez v1, :cond_2f

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->isUp(Landroid/net/NetworkInfo;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_2f
    move v0, v2

    move v1, v3

    .line 1047
    goto :goto_16

    .line 1052
    :cond_32
    if-eqz v0, :cond_3c

    invoke-static {p0}, Lcom/swype/android/service/SwypeConnect;->isDataConnectionPermitted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v2

    .line 1053
    goto :goto_19

    :cond_3c
    move v0, v3

    goto :goto_19

    :cond_3e
    move v0, v3

    move v1, v3

    goto :goto_16
.end method

.method public static getAvailableLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 988
    const-string v0, "LANGUAGES_AVAILABLE_DL"

    invoke-static {p0, v0, v1}, Lcom/swype/android/util/FilePreference;->readStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    if-nez v0, :cond_c

    move-object v0, v1

    .line 1002
    :goto_b
    return-object v0

    .line 993
    :cond_c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 994
    const-string v2, "\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 995
    array-length v2, v0

    move v3, v7

    :goto_19
    if-ge v3, v2, :cond_32

    aget-object v4, v0, v3

    .line 996
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 997
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2f

    .line 998
    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 1002
    :cond_32
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_b
.end method

.method public static getClass(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 195
    const-string v0, "com.swype.android.connect.ConnectClient"

    .line 198
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 203
    const-string v0, "com.swype.android.connect.ConnectClient"

    return-object v0

    .line 199
    :catch_8
    move-exception v0

    .line 200
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDownloadingLanguagesStatus(Landroid/content/Context;)Ljava/util/HashMap;
    .registers 4
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LANGUAGE_STATUS_QUEUED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LANGUAGE_STATUS_DOWNLOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LANGUAGE_STATUS_INSTALLING"

    aput-object v2, v0, v1

    .line 1007
    .local v0, states:[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/swype/android/service/SwypeConnect;->getLanguagesStatus(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    return-object v1
.end method

.method public static getInstalledLanguageCount(Landroid/content/Context;)I
    .registers 3
    .parameter "ctx"

    .prologue
    .line 937
    const-string v0, "LANGUAGES_COUNT"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/swype/android/util/FilePreference;->readIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstalledLanguages(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter "ctx"

    .prologue
    .line 1011
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "LANGUAGE_STATUS_INSTALLED"

    aput-object v3, v0, v2

    .line 1012
    .local v0, states:[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/swype/android/service/SwypeConnect;->getLanguagesStatus(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1013
    .local v1, status:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_10

    .line 1014
    const/4 v2, 0x0

    .line 1016
    .end local p0
    :goto_f
    return-object v2

    .restart local p0
    :cond_10
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_f
.end method

.method public static getLanguagesBeingRemoved(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 1020
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "LANGUAGE_STATUS_REMOVED"

    aput-object v2, v0, v3

    .line 1021
    .local v0, states:[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/swype/android/service/SwypeConnect;->getLanguagesStatus(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 1022
    .local v1, status:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_10

    .line 1023
    const/4 v2, 0x0

    .line 1025
    .end local p0
    :goto_f
    return-object v2

    .restart local p0
    :cond_10
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v2, p0

    goto :goto_f
.end method

.method private static getLanguagesStatus(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 959
    const-string v0, "LANGUAGE_DOWNLOAD_STATUS_LIST_PREF"

    invoke-static {p0, v0, v1}, Lcom/swype/android/util/FilePreference;->readStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    if-eqz v0, :cond_5c

    .line 962
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 964
    const-string v2, "\\|\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 965
    array-length v2, v0

    move v3, v9

    :goto_18
    if-ge v3, v2, :cond_5a

    aget-object v4, v0, v3

    .line 966
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 967
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_41

    .line 968
    array-length v4, p1

    move v6, v9

    :goto_28
    if-ge v6, v4, :cond_3b

    aget-object v7, p1, v6

    .line 969
    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 970
    aget-object v4, v5, v9

    aget-object v5, v5, v10

    invoke-virtual {v1, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 968
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 975
    :cond_41
    const-string v5, "Swype"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There was an invalid entry in languages downloading status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    :cond_5a
    move-object v0, v1

    .line 981
    :goto_5b
    return-object v0

    :cond_5c
    move-object v0, v1

    goto :goto_5b
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 207
    .line 210
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 211
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_18

    move-result v0

    .line 216
    :goto_11
    if-eqz v0, :cond_17

    .line 218
    :try_start_13
    invoke-static {p0}, Lcom/swype/android/service/SwypeConnect;->getClass(Landroid/content/Context;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_16} :catch_37

    .line 219
    const/4 v0, 0x1

    .line 225
    :cond_17
    :goto_17
    return v0

    .line 212
    :catch_18
    move-exception v0

    .line 213
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error checking Connect State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_11

    .line 221
    :catch_37
    move-exception v0

    move v0, v4

    goto :goto_17
.end method

.method public static isDataConnectionPermitted(Landroid/content/Context;)Z
    .registers 3
    .parameter "ctx"

    .prologue
    .line 1029
    const-string v0, "ENABLE_DATA_CONNECTION_PREF"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/swype/android/util/FilePreference;->readBoolPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLanguageListReady(Landroid/content/Context;)Z
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 946
    const-string v0, "DOWNLOAD_LIST_STATE"

    invoke-static {p0, v0, v1}, Lcom/swype/android/util/FilePreference;->readIntPreference(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 947
    if-nez v0, :cond_b

    move v0, v1

    .line 950
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private static isUp(Landroid/net/NetworkInfo;)Z
    .registers 3
    .parameter

    .prologue
    .line 1033
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private removeLang(Ljava/lang/String;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x74

    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 537
    .line 538
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 539
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v1

    .line 542
    :try_start_16
    new-instance v2, Lcom/swype/android/langpack/Installer;

    iget-object v3, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-direct {v2, p1, v3}, Lcom/swype/android/langpack/Installer;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 543
    invoke-virtual {v2}, Lcom/swype/android/langpack/Installer;->uninstall()V

    .line 547
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_32

    move-result v1

    if-eqz v1, :cond_90

    move v1, v8

    .line 551
    :goto_27
    const/16 v2, 0x74

    const/high16 v3, -0x8000

    const/high16 v4, -0x8000

    :try_start_2d
    invoke-virtual {p0, v2, p1, v3, v4}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_8c

    move v0, v1

    .line 572
    :goto_31
    return v0

    .line 553
    :catch_32
    move-exception v1

    move v1, v6

    :goto_34
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v0

    .line 555
    if-eqz v0, :cond_8a

    iget-object v2, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    if-eqz v2, :cond_8a

    .line 556
    iget-object v0, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v2, v0

    move v3, v6

    :goto_42
    if-ge v3, v2, :cond_8e

    aget-object v4, v0, v3

    .line 557
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    move v0, v8

    .line 562
    :goto_4d
    if-eqz v0, :cond_6f

    .line 563
    const-string v0, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Uninstalling: lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0, v7, p1, v6, v5}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    move v0, v1

    goto :goto_31

    .line 556
    :cond_6c
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 566
    :cond_6f
    const-string v0, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot uninstall: lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0, v7, p1, v5, v5}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    :cond_8a
    move v0, v1

    goto :goto_31

    .line 553
    :catch_8c
    move-exception v2

    goto :goto_34

    :cond_8e
    move v0, v6

    goto :goto_4d

    :cond_90
    move v1, v6

    goto :goto_27
.end method

.method private sendLanguageAvailableIntent()V
    .registers 5

    .prologue
    .line 594
    new-instance v0, Lcom/swype/android/service/SwypeConnect$3;

    invoke-direct {v0, p0}, Lcom/swype/android/service/SwypeConnect$3;-><init>(Lcom/swype/android/service/SwypeConnect;)V

    .line 602
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 603
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    return-void
.end method

.method private sendUpgradeIntent()V
    .registers 5

    .prologue
    .line 579
    new-instance v0, Lcom/swype/android/service/SwypeConnect$2;

    invoke-direct {v0, p0}, Lcom/swype/android/service/SwypeConnect$2;-><init>(Lcom/swype/android/service/SwypeConnect;)V

    .line 586
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 587
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 588
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 672
    :try_start_1
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/service/SwypeConnect;->getClass(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 673
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/swype/android/service/SwypeConnect;->mConnectConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->isConnectEnabled:Z

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->isConnectStarted:Z
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_21} :catch_22

    .line 687
    :goto_21
    return-void

    .line 684
    :catch_22
    move-exception v0

    iput-boolean v4, p0, Lcom/swype/android/service/SwypeConnect;->isConnectEnabled:Z

    .line 685
    iput-boolean v4, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    goto :goto_21
.end method

.method public downloadUpgrade()V
    .registers 4

    .prologue
    .line 889
    invoke-virtual {p0}, Lcom/swype/android/service/SwypeConnect;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 890
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 892
    const-string v1, "upgradeDownloadNowPreference"

    .line 893
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 896
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    const/16 v0, 0x6f

    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(I)Z

    .line 900
    return-void
.end method

.method protected getPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 831
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    const-string v1, "ConnectPrefs"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 832
    return-object v0
.end method

.method public handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v6, 0x73

    const/4 v3, 0x1

    const/high16 v5, -0x8000

    const/4 v10, 0x0

    .line 278
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 279
    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_27c

    .line 528
    :cond_14
    :goto_14
    :pswitch_14
    return-void

    .line 281
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicenseFromFileSystem(Ljava/lang/String;)[B

    move-result-object v2

    .line 283
    invoke-static {v2}, Lcom/swype/android/security/License;->createFromDigest([B)Lcom/swype/android/security/License;

    move-result-object v2

    .line 284
    if-eqz v2, :cond_3c

    invoke-virtual {v2, v0}, Lcom/swype/android/security/License;->isValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 285
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/swype/android/service/SwypeConnect;->retLicenseFile:Ljava/io/File;

    .line 286
    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(I)Z

    goto :goto_14

    .line 289
    :cond_3c
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(I)Z

    goto :goto_14

    .line 294
    :pswitch_42
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSupportedLanguages()Lcom/swype/android/jni/SwypeCore$LanguageList;

    move-result-object v0

    .line 297
    const-string v1, ""

    .line 298
    iget-object v2, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_278

    .line 299
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    iget-object v2, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .line 301
    :goto_5e
    iget-object v3, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_72

    .line 302
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    iget-object v3, v0, Lcom/swype/android/jni/SwypeCore$LanguageList;->langNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 305
    :cond_72
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_76
    const/16 v1, 0x6c

    invoke-virtual {p0, v1, v0, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto :goto_14

    .line 313
    :pswitch_7c
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getSwib()Ljava/lang/String;

    move-result-object v0

    .line 316
    const/16 v1, 0x6e

    invoke-virtual {p0, v1, v0, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto :goto_14

    .line 321
    :pswitch_8a
    sget-object v0, Lcom/swype/android/inputmethod/SwypeApplication;->SWYPE_VERSION:Ljava/lang/String;

    .line 322
    const/16 v1, 0x68

    invoke-virtual {p0, v1, v0, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto :goto_14

    .line 326
    :pswitch_92
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicense()Lcom/swype/android/security/License;

    move-result-object v1

    .line 327
    if-eqz v1, :cond_14

    .line 328
    const-string v2, "LICENSE_EXPIRATION"

    invoke-virtual {v1, v2}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    if-nez v2, :cond_a2

    .line 330
    const-string v2, "0"

    .line 332
    :cond_a2
    const/16 v3, 0x6a

    invoke-virtual {p0, v3, v2, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 335
    invoke-virtual {v1, v0}, Lcom/swype/android/security/License;->onDestroy(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 343
    :pswitch_ac
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicense()Lcom/swype/android/security/License;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_14

    .line 345
    const-string v2, "LICENSE_CHECK_THRESHOLD"

    invoke-virtual {v1, v2}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    if-nez v2, :cond_bc

    .line 348
    const-string v2, "0"

    .line 350
    :cond_bc
    const/16 v3, 0x69

    invoke-virtual {p0, v3, v2, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 353
    invoke-virtual {v1, v0}, Lcom/swype/android/security/License;->onDestroy(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 360
    :pswitch_c6
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getLicense()Lcom/swype/android/security/License;

    move-result-object v1

    .line 361
    if-eqz v1, :cond_14

    .line 362
    const-string v2, "DEVICE_STATUS"

    invoke-virtual {v1, v2}, Lcom/swype/android/security/License;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    if-nez v2, :cond_d6

    .line 365
    const-string v2, ""

    .line 367
    :cond_d6
    const/16 v3, 0x77

    invoke-virtual {p0, v3, v2, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 370
    invoke-virtual {v1, v0}, Lcom/swype/android/security/License;->onDestroy(Landroid/content/Context;)V

    goto/16 :goto_14

    .line 377
    :pswitch_e0
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 378
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 380
    const/16 v1, 0x78

    invoke-virtual {p0, v1, v0, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto/16 :goto_14

    .line 386
    :pswitch_f5
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 387
    const/16 v1, 0x13

    invoke-virtual {v0, v1, v10}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 389
    const/16 v1, 0x79

    invoke-virtual {p0, v1, v0, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto/16 :goto_14

    .line 396
    :pswitch_10a
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->retLicenseFile:Ljava/io/File;

    if-eqz v1, :cond_14

    .line 397
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->retLicenseFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->replaceLicense(Ljava/io/File;)Z

    goto/16 :goto_14

    .line 402
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->sendToastMessage(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 406
    :pswitch_124
    const/16 v0, 0x6d

    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->currentLocale:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto/16 :goto_14

    .line 412
    :pswitch_12d
    invoke-direct {p0}, Lcom/swype/android/service/SwypeConnect;->sendUpgradeIntent()V

    goto/16 :goto_14

    .line 418
    :pswitch_132
    invoke-direct {p0}, Lcom/swype/android/service/SwypeConnect;->sendUpgradeIntent()V

    goto/16 :goto_14

    .line 431
    :pswitch_137
    invoke-direct {p0}, Lcom/swype/android/service/SwypeConnect;->sendLanguageAvailableIntent()V

    goto/16 :goto_14

    .line 436
    :pswitch_13c
    const-string v0, "Swype"

    const-string v1, "SwypeApplication: handleMessage() of: MESSAGE_HOST_LANGUAGE_INSTALL_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :try_start_143
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_274

    .line 444
    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14e} :catch_270

    move-result-object v1

    .line 445
    :try_start_14f
    const-string v2, "filePath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    :goto_155
    const-string v2, "Swype"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v2, Lcom/swype/android/langpack/Installer;

    iget-object v3, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-direct {v2, v1, v3}, Lcom/swype/android/langpack/Installer;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 452
    invoke-virtual {v2, v0}, Lcom/swype/android/langpack/Installer;->install(Ljava/lang/String;)V

    .line 453
    const/16 v0, 0x73

    const/high16 v2, -0x8000

    const/high16 v3, -0x8000

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_180} :catch_182

    goto/16 :goto_14

    .line 455
    :catch_182
    move-exception v0

    move-object v0, v1

    :goto_184
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error Installing: lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0, v6, v0, v10, v5}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto/16 :goto_14

    .line 462
    :pswitch_1a1
    const-string v1, "Swype"

    const-string v2, "SwypeApplication: handleMessage() of: MESSAGE_HOST_LANGUAGE_UNINSTALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 464
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->validateActiveLanguage([Ljava/lang/String;)V

    .line 469
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/swype/android/service/SwypeConnect$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/swype/android/service/SwypeConnect$1;-><init>(Lcom/swype/android/service/SwypeConnect;[Ljava/lang/String;Lcom/swype/android/inputmethod/SwypeApplication;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_14

    .line 501
    :pswitch_1dc
    const-string v1, "Swype"

    const-string v2, "SwypeApplication: handleMessage() of: MESSAGE_HOST_GET_LANGUAGE_DISPLAY_NAMES"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    if-eqz v1, :cond_259

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_259

    .line 506
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 507
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 508
    array-length v3, v1

    move v4, v10

    :goto_208
    if-ge v4, v3, :cond_259

    aget-object v5, v1, v4

    .line 509
    invoke-virtual {v0, v5}, Lcom/swype/android/jni/SwypeCore;->getDisplayNameFromLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 510
    if-eqz v6, :cond_23a

    .line 511
    const-string v7, "Swype"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    lang: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " display: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :goto_237
    add-int/lit8 v4, v4, 0x1

    goto :goto_208

    .line 514
    :cond_23a
    const-string v6, "Swype"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Request for a language name that doesn\'t exist: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_237

    .line 519
    :cond_259
    const/16 v0, 0x75

    invoke-virtual {p0, v0, v2, v10, v10}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    goto/16 :goto_14

    .line 525
    :pswitch_260
    iput-boolean v3, p0, Lcom/swype/android/service/SwypeConnect;->isConnectStarted:Z

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.Refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_14

    .line 455
    :catch_270
    move-exception v0

    move-object v0, v2

    goto/16 :goto_184

    :cond_274
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_155

    :cond_278
    move-object v0, v1

    goto/16 :goto_76

    .line 279
    nop

    :pswitch_data_27c
    .packed-switch 0x49
        :pswitch_42
        :pswitch_14
        :pswitch_ac
        :pswitch_92
        :pswitch_15
        :pswitch_10a
        :pswitch_115
        :pswitch_14
        :pswitch_124
        :pswitch_7c
        :pswitch_14
        :pswitch_12d
        :pswitch_132
        :pswitch_8a
        :pswitch_14
        :pswitch_137
        :pswitch_13c
        :pswitch_1a1
        :pswitch_1dc
        :pswitch_c6
        :pswitch_e0
        :pswitch_f5
        :pswitch_260
    .end packed-switch
.end method

.method public installUpgrade()V
    .registers 4

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/swype/android/service/SwypeConnect;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 907
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 909
    const-string v1, "upgradeInstallnowPreference"

    .line 910
    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 913
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 916
    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(I)Z

    .line 917
    return-void
.end method

.method public isConnectStarted()Z
    .registers 2

    .prologue
    .line 1060
    iget-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->isConnectStarted:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->isConnectEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isUpgradeDownloadReady()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 836
    invoke-virtual {p0}, Lcom/swype/android/service/SwypeConnect;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 837
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "upgradeFilePreference"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, upgradeAPKPath:Ljava/lang/String;
    const-string v4, "upgradeFileTransactionPreference"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, upgradeTransactionId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 841
    .local v0, isReady:Z
    if-nez v2, :cond_17

    if-eqz v3, :cond_17

    .line 842
    const/4 v0, 0x1

    .line 846
    :cond_17
    return v0
.end method

.method public isUpgradeDownloading()Z
    .registers 4

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/swype/android/service/SwypeConnect;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 868
    const-string v1, "upgradeDownloadNowPreference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 871
    return v0
.end method

.method public isUpgradeInstallReady()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 850
    invoke-virtual {p0}, Lcom/swype/android/service/SwypeConnect;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 851
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "upgradeFilePreference"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 852
    .local v2, upgradeAPKPath:Ljava/lang/String;
    const-string v4, "upgradeFileTransactionPreference"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 853
    .local v3, upgradeTransactionId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 855
    .local v0, isReady:Z
    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1d

    invoke-virtual {p0}, Lcom/swype/android/service/SwypeConnect;->isUpgradeDownloading()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 856
    const/4 v0, 0x1

    .line 859
    :cond_1d
    return v0
.end method

.method public isUpgradeInstalling()Z
    .registers 4

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/swype/android/service/SwypeConnect;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 880
    const-string v1, "upgradeInstallnowPreference"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 882
    return v0
.end method

.method protected processQueuedMessages()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 654
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 656
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 657
    :try_start_c
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/os/Message;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Message;

    .line 658
    iget-object v2, p0, Lcom/swype/android/service/SwypeConnect;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 659
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_29

    .line 660
    array-length v1, v0

    move v2, v3

    :goto_1f
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 661
    invoke-virtual {p0, v3}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(Landroid/os/Message;)Z

    .line 660
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 659
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0

    .line 664
    :cond_2c
    return-void
.end method

.method public requestLicense()V
    .registers 2

    .prologue
    .line 250
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(I)Z

    .line 251
    return-void
.end method

.method public sendConnectMessage(I)Z
    .registers 4
    .parameter "what"

    .prologue
    const/high16 v1, -0x8000

    .line 712
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public sendConnectMessage(ILjava/lang/Object;II)Z
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 726
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 729
    :try_start_9
    instance-of v1, p2, Ljava/util/HashMap;

    if-eqz v1, :cond_25

    .line 730
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 731
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 732
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_39

    .line 750
    :cond_1c
    :goto_1c
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 751
    iput p4, v0, Landroid/os/Message;->arg2:I

    .line 753
    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(Landroid/os/Message;)Z

    move-result v0

    return v0

    .line 733
    :cond_25
    :try_start_25
    instance-of v1, p2, Ljava/util/Map;

    if-eqz v1, :cond_3b

    .line 734
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 735
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/io/Serializable;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 736
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1c

    :catch_39
    move-exception v1

    goto :goto_1c

    .line 737
    :cond_3b
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 738
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 739
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1c

    .line 741
    :cond_4f
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1c

    .line 742
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 743
    const-string v2, "DEFAULT_KEY"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 744
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_66} :catch_39

    goto :goto_1c
.end method

.method public sendConnectMessage(Landroid/os/Message;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 762
    .line 764
    iget-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->isConnectEnabled:Z

    if-nez v0, :cond_7

    move v0, v1

    .line 794
    :cond_6
    :goto_6
    return v0

    .line 768
    :cond_7
    if-nez p1, :cond_b

    move v0, v1

    .line 769
    goto :goto_6

    .line 772
    :cond_b
    iget-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mSendMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_37

    .line 774
    :try_start_13
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mMessenger:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 775
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mSendMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1c} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_1c} :catch_31
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_34

    .line 776
    const/4 v0, 0x1

    .line 788
    :goto_1d
    if-nez v0, :cond_6

    .line 789
    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v1

    .line 790
    :try_start_22
    iget-object v2, p0, Lcom/swype/android/service/SwypeConnect;->messageQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 791
    monitor-exit v1

    goto :goto_6

    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_29

    throw v0

    .line 780
    :catch_2c
    move-exception v0

    iput-boolean v1, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    move v0, v1

    .line 785
    goto :goto_1d

    :catch_31
    move-exception v0

    move v0, v1

    goto :goto_1d

    .line 784
    :catch_34
    move-exception v0

    iput-boolean v1, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    :cond_37
    move v0, v1

    goto :goto_1d
.end method

.method public setLocale(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 798
    iput-object p1, p0, Lcom/swype/android/service/SwypeConnect;->currentLocale:Ljava/lang/String;

    .line 799
    const/16 v0, 0x6d

    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->currentLocale:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 801
    return-void
.end method

.method public startConnectImmediately()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 923
    const/16 v0, 0x7a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(ILjava/lang/Object;II)Z

    .line 924
    return-void
.end method

.method public unbind()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 693
    iget-boolean v0, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    if-eqz v0, :cond_1a

    .line 696
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/swype/android/service/SwypeConnect;->sendConnectMessage(I)Z

    .line 697
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->mHandler:Lcom/swype/android/service/SwypeConnect$IncomingHandler;

    invoke-virtual {v0}, Lcom/swype/android/service/SwypeConnect$IncomingHandler;->stop()V

    .line 700
    iget-object v0, p0, Lcom/swype/android/service/SwypeConnect;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/swype/android/service/SwypeConnect;->mConnectConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 701
    iput-boolean v2, p0, Lcom/swype/android/service/SwypeConnect;->mConnectBound:Z

    .line 702
    iput-boolean v2, p0, Lcom/swype/android/service/SwypeConnect;->isConnectStarted:Z

    .line 704
    :cond_1a
    return-void
.end method
