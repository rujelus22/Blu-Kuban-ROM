.class public Lcom/swype/android/connect/ConnectClient;
.super Landroid/app/Service;
.source "ConnectClient.java"

# interfaces
.implements Lcom/swype/android/connect/BuildProps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/ConnectClient$MessageHandler;,
        Lcom/swype/android/connect/ConnectClient$ConnectBinder;,
        Lcom/swype/android/connect/ConnectClient$SessionState;,
        Lcom/swype/android/connect/ConnectClient$DeviceState;,
        Lcom/swype/android/connect/ConnectClient$ResponseListener;
    }
.end annotation


# static fields
.field public static final ALARM_CLASS:Ljava/lang/String; = "ALARM_CLASS"

.field public static final ALARM_TYPE:Ljava/lang/String; = "ALARM_TYPE"

.field public static final AUTOMATION_SUPPRESSED:Ljava/lang/String; = "AUTOMATION_SUPPRESSED"

.field public static final CONNECTION_LOCAL:Ljava/lang/String; = "CONNECTION_LOCAL"

.field public static final CONNECTION_REMOTE:Ljava/lang/String; = "CONNECTION_REMOTE"

.field public static final CONNECTION_TYPE:Ljava/lang/String; = "CONNECTION_TYPE"

.field public static final DEFAULT_KEY:Ljava/lang/String; = "DEFAULT_KEY"

.field private static final DEVICE_FIRST_TIMESTARTUP_PREFERENCE:Ljava/lang/String; = "DeviceFirstTimeStartup"

.field public static final DOWNLOAD_LANGUAGE_INTENT:Ljava/lang/String; = "com.swype.android.connect.DownloadLanguage"

.field public static final ENABLE_DATA_COLLECTION_PREF:Ljava/lang/String; = "ENABLE_DATA_COLLECTION_PREF"

.field public static final ENABLE_DATA_CONNECTION:Ljava/lang/String; = "ENABLE_DATA_CONNECTION"

.field public static final ENABLE_DATA_CONNECTION_PREF:Ljava/lang/String; = "ENABLE_DATA_CONNECTION_PREF"

.field private static final FIRST_TIME_STARTUP_COMPLETE:Ljava/lang/String; = "FIRST_TIME_STARTUP_COMPLETE"

.field public static final INITIAL_STARTUP_ALARM:Ljava/lang/String; = "INITIAL_STARTUP_ALARM"

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

.field public static final MESSAGE_COMMAND_DEVICE_ACK:I = 0x23

.field public static final MESSAGE_COMMAND_DEVICE_REGISTER:I = 0x22

.field public static final MESSAGE_COMMAND_DEVICE_UPDATE:I = 0x24

.field public static final MESSAGE_COMMAND_DEVICE_VALIDATE:I = 0x25

.field public static final MESSAGE_COMMAND_LANGUAGE_GET:I = 0x33

.field public static final MESSAGE_COMMAND_LANGUAGE_UPGRADE:I = 0x35

.field public static final MESSAGE_COMMAND_LANGUAGE_UPGRADE_PREP:I = 0x34

.field public static final MESSAGE_COMMAND_LICENSE_ACK:I = 0x2b

.field public static final MESSAGE_COMMAND_LICENSE_FETCH:I = 0x2a

.field public static final MESSAGE_COMMAND_LICENSE_REQUEST:I = 0x29

.field public static final MESSAGE_COMMAND_REFRESH_LANGUAGE_MANAGER:I = 0x36

.field public static final MESSAGE_COMMAND_RETRIEVE_MESSAGE:I = 0x2c

.field public static final MESSAGE_COMMAND_RETRIEVE_MESSAGE_BY_ID:I = 0x2d

.field public static final MESSAGE_COMMAND_SESSION_CREATE:I = 0x26

.field public static final MESSAGE_COMMAND_SESSION_INVALIDATE:I = 0x28

.field public static final MESSAGE_COMMAND_SESSION_VALIDATE:I = 0x27

.field public static final MESSAGE_COMMAND_SYSTEM_POLL:I = 0x2e

.field public static final MESSAGE_COMMAND_UPGRADE_ACK:I = 0x31

.field public static final MESSAGE_COMMAND_UPGRADE_CHECK:I = 0x2f

.field public static final MESSAGE_COMMAND_UPGRADE_FETCH:I = 0x30

.field public static final MESSAGE_COMMAND_UPGRADE_STATUS:I = 0x32

.field public static final MESSAGE_DEVICE_INVALID:I = 0x47

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

.field public static final MESSAGE_RECEIVE_DEVICE_REGISTRATION:I = 0x3

.field public static final MESSAGE_RECEIVE_DEVICE_REGISTRATION_ACK:I = 0x9

.field public static final MESSAGE_RECEIVE_DEVICE_UPDATE:I = 0x5

.field public static final MESSAGE_RECEIVE_DEVICE_VERIFICATION:I = 0x7

.field public static final MESSAGE_RECEIVE_LICENSE_ACK:I = 0x15

.field public static final MESSAGE_RECEIVE_LICENSE_FETCH:I = 0x13

.field public static final MESSAGE_RECEIVE_LICENSE_REQUEST:I = 0x11

.field public static final MESSAGE_RECEIVE_MESSAGE_RETRIEVE:I = 0x17

.field public static final MESSAGE_RECEIVE_PING:I = 0x1

.field public static final MESSAGE_RECEIVE_POLL:I = 0x19

.field public static final MESSAGE_RECEIVE_SESSION_CREATE:I = 0xb

.field public static final MESSAGE_RECEIVE_SESSION_INVALIDATE:I = 0xf

.field public static final MESSAGE_RECEIVE_SESSION_VALIDATE:I = 0xd

.field public static final MESSAGE_RECEIVE_UPGRADE_ACK:I = 0x1f

.field public static final MESSAGE_RECEIVE_UPGRADE_CHECK:I = 0x1b

.field public static final MESSAGE_RECEIVE_UPGRADE_FETCH:I = 0x1d

.field public static final MESSAGE_RECEIVE_UPGRADE_STATUS:I = 0x21

.field public static final MESSAGE_SEND_DEVICE_REGISTRATION:I = 0x2

.field public static final MESSAGE_SEND_DEVICE_REGISTRATION_ACK:I = 0x8

.field public static final MESSAGE_SEND_DEVICE_UPDATE:I = 0x4

.field public static final MESSAGE_SEND_DEVICE_VERIFICATION:I = 0x6

.field public static final MESSAGE_SEND_LICENSE_ACK:I = 0x14

.field public static final MESSAGE_SEND_LICENSE_FETCH:I = 0x12

.field public static final MESSAGE_SEND_LICENSE_REQUEST:I = 0x10

.field public static final MESSAGE_SEND_MESSAGE_RETRIEVE:I = 0x16

.field public static final MESSAGE_SEND_PING:I = 0x0

.field public static final MESSAGE_SEND_POLL:I = 0x18

.field public static final MESSAGE_SEND_SESSION_CREATE:I = 0xa

.field public static final MESSAGE_SEND_SESSION_INVALIDATE:I = 0xe

.field public static final MESSAGE_SEND_SESSION_VALIDATE:I = 0xc

.field public static final MESSAGE_SEND_UPGRADE_ACK:I = 0x1e

.field public static final MESSAGE_SEND_UPGRADE_CHECK:I = 0x1a

.field public static final MESSAGE_SEND_UPGRADE_FETCH:I = 0x1c

.field public static final MESSAGE_SEND_UPGRADE_STATUS:I = 0x20

.field public static final MESSAGE_SESSION_INVALID:I = 0x46

.field public static final MESSAGE_STATUS:I = 0x48

.field public static final RECEIVED_MESSAGES_INTENT:Ljava/lang/String; = "com.swype.android.connect.ReceivedMessage"

.field public static final REFRESH_CONNECTION_DATA_INTENT:Ljava/lang/String; = "com.swype.android.connect.RefreshConnectData"

.field public static final REFRESH_CONNECTION_INTENT:Ljava/lang/String; = "com.swype.android.connect.RefreshConnect"

.field public static final REFRESH_INTENT:Ljava/lang/String; = "com.swype.android.connect.Refresh"

.field public static final REFRESH_MESSAGES_INTENT:Ljava/lang/String; = "com.swype.android.connect.RefreshMessages"

.field public static final REMOVE_LANGUAGE_INTENT:Ljava/lang/String; = "com.swype.android.connect.RemoveLanguage"

.field public static final TASK_MESSAGE_AVAILABLE:Ljava/lang/String; = "MESSAGE_AVAILABLE"

.field public static final TASK_SEND_REPORTING:Ljava/lang/String; = "SEND_REPORTING"

.field public static final TASK_UPDATE_LICENSE:Ljava/lang/String; = "UDPATE_LICENSE"

.field public static final TASK_UPGRADE_AVAILABLE:Ljava/lang/String; = "UPGRADE_AVAILABLE"


# instance fields
.field protected alarmUniqueId:I

.field protected buildProperties:Lcom/swype/android/connect/util/BuildProperties;

.field protected final connectBinder:Landroid/os/IBinder;

.field private connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

.field private connectManager:Lcom/swype/android/connect/ConnectManager;

.field private curSessionState:Lcom/swype/android/connect/ConnectClient$SessionState;

.field private currentLocale:Ljava/lang/String;

.field private debugResponse:Ljava/lang/String;

.field protected defaultLoadDelay:I

.field private deviceIdState:Lcom/swype/android/connect/ConnectClient$DeviceState;

.field private deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

.field private devicePropertiesRecieved:I

.field private languageManager:Lcom/swype/android/connect/manager/LanguageManager;

.field private languagesAvailable:Ljava/lang/String;

.field private licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

.field private mHostMessenger:Landroid/os/Messenger;

.field private managerStartStep:I

.field private messageManager:Lcom/swype/android/connect/manager/MessageManager;

.field protected final messenger:Landroid/os/Messenger;

.field protected msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

.field private prefManager:Lcom/swype/android/connect/manager/PreferencesManager;

.field private reportManager:Lcom/swype/android/connect/manager/ReportingManager;

.field private reportingStatus:Z

.field private sessionManager:Lcom/swype/android/connect/manager/SessionManager;

.field private suppressAutomation:Z

.field private swib:Ljava/lang/String;

.field private swypeVersion:Ljava/lang/String;

.field private systemManager:Lcom/swype/android/connect/manager/SystemManager;

.field private trialStatus:Z

.field private upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 235
    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectClient;->suppressAutomation:Z

    .line 237
    sget-object v0, Lcom/swype/android/connect/ConnectClient$DeviceState;->INVALID:Lcom/swype/android/connect/ConnectClient$DeviceState;

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceIdState:Lcom/swype/android/connect/ConnectClient$DeviceState;

    .line 238
    sget-object v0, Lcom/swype/android/connect/ConnectClient$SessionState;->INVALID:Lcom/swype/android/connect/ConnectClient$SessionState;

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->curSessionState:Lcom/swype/android/connect/ConnectClient$SessionState;

    .line 243
    iput v1, p0, Lcom/swype/android/connect/ConnectClient;->managerStartStep:I

    .line 244
    const/16 v0, 0x3c

    iput v0, p0, Lcom/swype/android/connect/ConnectClient;->defaultLoadDelay:I

    .line 245
    const v0, 0x42f48590

    iput v0, p0, Lcom/swype/android/connect/ConnectClient;->alarmUniqueId:I

    .line 246
    iput v1, p0, Lcom/swype/android/connect/ConnectClient;->devicePropertiesRecieved:I

    .line 282
    new-instance v0, Lcom/swype/android/connect/ConnectClient$ConnectBinder;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$ConnectBinder;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectBinder:Landroid/os/IBinder;

    .line 283
    new-instance v0, Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$MessageHandler;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    .line 284
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->messenger:Landroid/os/Messenger;

    .line 289
    return-void
.end method

.method public static getEncryptedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1182
    invoke-static {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1184
    if-eqz v0, :cond_f

    .line 1185
    invoke-static {v0}, Lcom/swype/android/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1187
    :cond_f
    if-nez v0, :cond_12

    move-object v0, p2

    .line 1190
    :cond_12
    return-object v0
.end method

.method public static getPrivatePreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "ctx"

    .prologue
    .line 1168
    invoke-static {p0}, Lcom/swype/android/connect/manager/PreferencesManager;->getPrivateSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private refreshClientState()V
    .registers 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->loadPreferences()V

    .line 1251
    return-void
.end method

.method private sendMessageToHost(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 847
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_9

    .line 849
    :try_start_4
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 856
    :cond_9
    :goto_9
    return-void

    .line 853
    :catch_a
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    goto :goto_9
.end method

.method private setStartAlarm(J)V
    .registers 7
    .parameter

    .prologue
    .line 936
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 937
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 938
    const-string v1, "ALARM_CLASS"

    const-class v2, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string v1, "ALARM_TYPE"

    const-string v2, "INITIAL_STARTUP_ALARM"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/swype/android/connect/ConnectClient;->alarmUniqueId:I

    const/high16 v3, 0x4000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 944
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/ConnectClient;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 945
    const-string v1, "Delaying start of Connect, this is the first time its started on this device"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->i(Ljava/lang/String;)V

    .line 946
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 947
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1088
    const-string v0, "INITIAL_STARTUP_ALARM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1090
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->startClientAfterAlarm()V

    .line 1092
    :cond_b
    return-void
.end method

.method public backupNow()V
    .registers 2

    .prologue
    .line 910
    const/16 v0, 0x57

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 911
    return-void
.end method

.method public clearConnectSettings()V
    .registers 2

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1257
    return-void
.end method

.method public compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 5
    .parameter
    .parameter "whichProperties"
    .parameter "skipAirplaneModeProps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Z)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1281
    .local p1, oldProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->buildProperties:Lcom/swype/android/connect/util/BuildProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swype/android/connect/util/BuildProperties;->compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigurationIntValue(Ljava/lang/String;)I
    .registers 3
    .parameter "name"

    .prologue
    .line 903
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/security/ConnectConfiguration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "name"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/security/ConnectConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocale()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugResponse()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->debugResponse:Ljava/lang/String;

    .line 1218
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceProperties()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->buildProperties:Lcom/swype/android/connect/util/BuildProperties;

    invoke-virtual {v0}, Lcom/swype/android/connect/util/BuildProperties;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1178
    invoke-static {p0, p1, p2}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    return-object v0
.end method

.method public getLanguagesAvailable()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languagesAvailable:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivatePreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->prefManager:Lcom/swype/android/connect/manager/PreferencesManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/PreferencesManager;->getPrivateSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getReportingStatus()Z
    .registers 2

    .prologue
    .line 1242
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectClient;->reportingStatus:Z

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    if-nez v0, :cond_c

    move-object v0, p2

    .line 1209
    :cond_c
    return-object v0
.end method

.method public getSwib()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->swib:Ljava/lang/String;

    return-object v0
.end method

.method public getSwypeVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->swypeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTrialStatus()Z
    .registers 2

    .prologue
    .line 1238
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectClient;->trialStatus:Z

    return v0
.end method

.method protected handleCommand(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    .line 1036
    if-eqz p1, :cond_19

    .line 1037
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1038
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1039
    if-eqz v1, :cond_1a

    const-string v2, "com.swype.android.connect.RefreshMessages"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1040
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/MessageManager;->refreshMessages()V

    .line 1080
    :cond_19
    :goto_19
    return-void

    .line 1041
    :cond_1a
    if-eqz v1, :cond_2a

    const-string v2, "com.swype.android.connect.RefreshConnect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1042
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->poll()V

    goto :goto_19

    .line 1043
    :cond_2a
    if-eqz v1, :cond_53

    const-string v2, "com.swype.android.connect.DownloadLanguage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 1045
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/LanguageManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v1

    sget-object v2, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v1, v2, :cond_19

    .line 1046
    const-string v1, "DownloadLanguage Intent received!"

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 1047
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto :goto_19

    .line 1049
    :cond_53
    if-eqz v1, :cond_69

    const-string v2, "com.swype.android.connect.RemoveLanguage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 1050
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->removeLanguages(Ljava/lang/String;)V

    goto :goto_19

    .line 1051
    :cond_69
    if-eqz v0, :cond_19

    .line 1052
    const-string v1, "ALARM_CLASS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1053
    const-string v2, "ALARM_TYPE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1055
    if-eqz v1, :cond_19

    if-eqz v2, :cond_19

    .line 1056
    const-class v3, Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    iget-object v3, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v3}, Lcom/swype/android/connect/manager/DeviceManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v3

    sget-object v4, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v3, v4, :cond_97

    .line 1057
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/DeviceManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_19

    .line 1058
    :cond_97
    const-class v3, Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    iget-object v3, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v3}, Lcom/swype/android/connect/manager/LicenseManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v3

    sget-object v4, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v3, v4, :cond_b4

    .line 1059
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/LicenseManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1060
    :cond_b4
    const-class v3, Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d1

    iget-object v3, p0, Lcom/swype/android/connect/ConnectClient;->reportManager:Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v3}, Lcom/swype/android/connect/manager/ReportingManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v3

    sget-object v4, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v3, v4, :cond_d1

    .line 1061
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->reportManager:Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/ReportingManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1062
    :cond_d1
    const-class v3, Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ee

    iget-object v3, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v3}, Lcom/swype/android/connect/manager/SessionManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v3

    sget-object v4, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v3, v4, :cond_ee

    .line 1063
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/SessionManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1064
    :cond_ee
    const-class v3, Lcom/swype/android/connect/manager/SystemManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10b

    iget-object v3, p0, Lcom/swype/android/connect/ConnectClient;->systemManager:Lcom/swype/android/connect/manager/SystemManager;

    invoke-virtual {v3}, Lcom/swype/android/connect/manager/SystemManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v3

    sget-object v4, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v3, v4, :cond_10b

    .line 1065
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->systemManager:Lcom/swype/android/connect/manager/SystemManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/SystemManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1066
    :cond_10b
    const-class v3, Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    iget-object v3, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v3}, Lcom/swype/android/connect/manager/MessageManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v3

    sget-object v4, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v3, v4, :cond_128

    .line 1067
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/MessageManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1068
    :cond_128
    const-class v3, Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_145

    iget-object v3, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v3}, Lcom/swype/android/connect/manager/UpgradeManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v3

    sget-object v4, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v3, v4, :cond_145

    .line 1069
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/UpgradeManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1070
    :cond_145
    const-class v3, Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_158

    .line 1071
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/connect/manager/LanguageManager;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1072
    :cond_158
    const-class v3, Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_169

    .line 1073
    invoke-virtual {p0, v2, v0}, Lcom/swype/android/connect/ConnectClient;->alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_19

    .line 1075
    :cond_169
    const-string v0, "    Not for the managers"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method protected handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/high16 v5, -0x8000

    const/4 v2, 0x0

    const-wide/16 v3, 0x5dc

    .line 321
    iget v0, p2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_554

    .line 817
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message is invalid ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 820
    :cond_28
    :goto_28
    return-void

    .line 323
    :pswitch_29
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->systemManager:Lcom/swype/android/connect/manager/SystemManager;

    if-eqz v0, :cond_28

    .line 324
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->systemManager:Lcom/swype/android/connect/manager/SystemManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SystemManager;->sendPing()V

    goto :goto_28

    .line 329
    :pswitch_33
    const-string v0, "Ping received."

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendStatus(Ljava/lang/String;)V

    goto :goto_28

    .line 333
    :pswitch_39
    const-string v0, "Message: Send Device Registration"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 337
    :pswitch_3f
    const-string v0, "Message: Receive Device Registration"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 341
    :pswitch_45
    const-string v0, "Message: Send Device Update"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 345
    :pswitch_4b
    const-string v0, "Message: Receive Device Update"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 350
    :pswitch_51
    const-string v0, "Message: Send Device Verification"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 354
    :pswitch_57
    const-string v0, "Message: Receive Device Verification"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 358
    :pswitch_5d
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->backupNow()V

    .line 359
    const-string v0, "Message: Send Device Registration Ack"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 363
    :pswitch_66
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getSessionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    if-eqz v0, :cond_75

    .line 364
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->resetSession()V

    .line 366
    :cond_75
    const-string v0, "Message: Receive Device Registration Ack"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 370
    :pswitch_7b
    const-string v0, "Message: Send Session Create"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 374
    :pswitch_81
    const-string v0, "Message: Receive Session Create"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 378
    :pswitch_87
    const-string v0, "Message: Send Session Validate"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 382
    :pswitch_8d
    const-string v0, "Message: Receive Session Validate"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 386
    :pswitch_93
    const-string v0, "Message: Send Session Invalidate"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 390
    :pswitch_99
    const-string v0, "Message: Receive Session Invalidate"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 394
    :pswitch_9f
    const-string v0, "Message: Send License Request"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 398
    :pswitch_a5
    const-string v0, "Message: Receive License Request"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 402
    :pswitch_ac
    const-string v0, "Message: Send License Fetch"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 406
    :pswitch_b3
    const-string v0, "Message: Receive License Fetch"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 410
    :pswitch_ba
    const-string v0, "Message: Send License Ack"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 414
    :pswitch_c1
    const-string v0, "Message: Receive License Ack"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    if-eqz v0, :cond_28

    .line 416
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager;->receivedLicense()V

    goto/16 :goto_28

    .line 421
    :pswitch_d1
    const-string v0, "Message: Send Poll"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 425
    :pswitch_d8
    const-string v0, "Message: Receive Poll"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 429
    :pswitch_df
    const-string v0, "Message: Command Device Register"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    if-eqz v0, :cond_28

    .line 431
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDevice()V

    goto/16 :goto_28

    .line 436
    :pswitch_ef
    const-string v0, "Message: Command Device Ack"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    if-eqz v0, :cond_28

    .line 438
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->registerDeviceAck()V

    goto/16 :goto_28

    .line 443
    :pswitch_ff
    const-string v0, "Message: Command Device Update"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    if-eqz v0, :cond_28

    .line 445
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->updateDeviceRegistration()V

    goto/16 :goto_28

    .line 450
    :pswitch_10f
    const-string v0, "Message: Command Device Validate"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    if-eqz v0, :cond_28

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_28

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/swype/android/connect/util/Response;

    if-ne v0, v1, :cond_28

    .line 452
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/swype/android/connect/util/Response;

    .line 453
    iget-object v1, v0, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v2, "propertiesToValidate"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 456
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/DeviceManager;->onResponse(Lcom/swype/android/connect/util/Response;)V

    goto/16 :goto_28

    .line 462
    :pswitch_13b
    const-string v0, "Message: Command Session Create"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    if-eqz v0, :cond_28

    .line 464
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->createSession()V

    goto/16 :goto_28

    .line 469
    :pswitch_14b
    const-string v0, "Message: Command Session Validate"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    if-eqz v0, :cond_28

    .line 471
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->validateSession()V

    goto/16 :goto_28

    .line 476
    :pswitch_15b
    const-string v0, "Message: Command Session Invalidate"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    if-eqz v0, :cond_28

    .line 478
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->invalidateSession()V

    goto/16 :goto_28

    .line 483
    :pswitch_16b
    const-string v0, "Message: Command License Request"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    if-eqz v1, :cond_28

    .line 486
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/LicenseManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v1

    sget-object v2, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v1, v2, :cond_18f

    .line 487
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LicenseManager;->requestLicense(Z)V

    goto/16 :goto_28

    .line 489
    :cond_18f
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_28

    .line 495
    :pswitch_198
    const-string v0, "Message: Command License Fetch"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    if-eqz v0, :cond_28

    .line 497
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager;->fetchLicense()V

    goto/16 :goto_28

    .line 502
    :pswitch_1a8
    const-string v0, "Message: Command License Ack"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    if-eqz v0, :cond_28

    .line 504
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager;->ackLicenseFile()V

    goto/16 :goto_28

    .line 509
    :pswitch_1b8
    const-string v0, "Message: Retrieve Message"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    if-eqz v0, :cond_28

    .line 511
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/MessageManager;->getNextMessage()V

    goto/16 :goto_28

    .line 516
    :pswitch_1c8
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message Retrieve Message by ID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    if-eqz v1, :cond_28

    .line 519
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/MessageManager;->getMessage(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 524
    :pswitch_1f9
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 529
    :pswitch_20a
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager;->prepareForUpgrade()V

    goto/16 :goto_28

    .line 533
    :pswitch_211
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager;->upgrade()V

    goto/16 :goto_28

    .line 537
    :pswitch_218
    const-string v0, "MESSAGE_COMMAND_REFRESH_LANGUAGE_MANAGER"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 538
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.swype.android.connect.Refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_28

    .line 545
    :pswitch_229
    const-string v0, "Message: Session is invalid"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    if-eqz v0, :cond_28

    .line 547
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->systemInvalidateSession()V

    goto/16 :goto_28

    .line 552
    :pswitch_239
    const-string v0, "Message: Device is invalid"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 556
    :pswitch_240
    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 564
    :pswitch_25c
    const-string v0, "Message: Client Register"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 566
    iget-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    .line 567
    invoke-virtual {p2}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_296

    .line 568
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "AUTOMATION_SUPPRESSED"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/connect/ConnectClient;->suppressAutomation:Z

    .line 570
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ENABLE_DATA_CONNECTION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 571
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ENABLE_DATA_CONNECTION_PREF"

    invoke-static {v1, v2}, Lcom/swype/android/connect/util/FilePreference;->exists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_296

    .line 572
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ENABLE_DATA_CONNECTION_PREF"

    invoke-static {v1, v2, v0}, Lcom/swype/android/connect/util/FilePreference;->saveBoolPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 577
    :cond_296
    const-string v0, "Client Registered"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 580
    const/16 v0, 0x49

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 581
    const/16 v0, 0x51

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 582
    const/16 v0, 0x52

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 583
    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 584
    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 586
    const/16 v0, 0x5e

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    .line 588
    invoke-direct {p0}, Lcom/swype/android/connect/ConnectClient;->refreshClientState()V

    goto/16 :goto_28

    .line 592
    :pswitch_2be
    const-string v0, "Message: Client Unregister"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->mHostMessenger:Landroid/os/Messenger;

    .line 594
    iput v2, p0, Lcom/swype/android/connect/ConnectClient;->managerStartStep:I

    goto/16 :goto_28

    .line 598
    :pswitch_2ca
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->reportManager:Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/ReportingManager;->addStatsFromString(Ljava/lang/String;)V

    .line 601
    const-string v0, "Message: client send stat reporting"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 605
    :pswitch_2e0
    const-string v0, "Message: client send aggregate reporting"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 609
    :pswitch_2e7
    const-string v0, "Message: Receive Languages Available"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languagesAvailable:Ljava/lang/String;

    .line 612
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languagesAvailable:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30a

    .line 613
    new-instance v0, Lcom/swype/android/connect/ConnectClient$1;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$1;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 620
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_28

    .line 623
    :cond_30a
    const-class v0, Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 628
    :pswitch_315
    const-string v0, "Message: Receive SWIB"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->swib:Ljava/lang/String;

    .line 631
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->swib:Ljava/lang/String;

    if-nez v0, :cond_334

    .line 632
    new-instance v0, Lcom/swype/android/connect/ConnectClient$2;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$2;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 639
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_28

    .line 642
    :cond_334
    const-class v0, Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 648
    :pswitch_33f
    const-string v0, "Message: Receive License Expiration"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 649
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    if-eqz v0, :cond_28

    .line 650
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->setLicenseExpiration(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 655
    :pswitch_359
    const-string v0, "Message: Receive License Checksum"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    if-eqz v0, :cond_28

    .line 657
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->ackLicenseFileChecksum(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 662
    :pswitch_373
    const-string v0, "Message: Receive License Check Threshold"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    if-eqz v0, :cond_28

    .line 664
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->setLicenseCheckThreshold(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 669
    :pswitch_38d
    const-string v0, "Message: Receive License Status"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    if-eqz v0, :cond_28

    .line 671
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/manager/LicenseManager;->setLicenseCheckThreshold(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 676
    :pswitch_3a7
    const-string v0, "Message: Receive Trial Status"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c2

    .line 679
    new-instance v0, Lcom/swype/android/connect/ConnectClient$3;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$3;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 686
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_28

    .line 689
    :cond_3c2
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/connect/ConnectClient;->trialStatus:Z

    .line 690
    const-string v0, "DEVICE_LENGTH"

    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getTrialStatus()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/ConnectClient;->saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-class v0, Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 696
    :pswitch_3e6
    const-string v0, "Message: Receive Reporting Status"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_401

    .line 699
    new-instance v0, Lcom/swype/android/connect/ConnectClient$4;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$4;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 706
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_28

    .line 709
    :cond_401
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/connect/ConnectClient;->reportingStatus:Z

    .line 710
    const-class v0, Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 715
    :pswitch_420
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message: Receive Locale Change = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->currentLocale:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 718
    new-instance v0, Lcom/swype/android/connect/ConnectClient$5;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$5;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 725
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_28

    .line 730
    :pswitch_452
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languagesAvailable:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_28

    .line 731
    new-instance v0, Lcom/swype/android/connect/ConnectClient$6;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectClient$6;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 738
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_28

    .line 743
    :pswitch_464
    const-string v0, "Message: Swype version"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->setSwypeVersion(Ljava/lang/String;)V

    .line 749
    const-class v0, Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 753
    :pswitch_481
    const-string v0, "Message: MESSAGE_CLIENT_UPGRADE_DOWNLOAD"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager;->fetchAPK()V

    goto/16 :goto_28

    .line 758
    :pswitch_48d
    const-string v0, "Message: MESSAGE_CLIENT_UPGRADE_INSTALL"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager;->upgrade()V

    goto/16 :goto_28

    .line 764
    :pswitch_499
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message: MESSAGE_CLIENT_LANGUAGE_FETCH -- language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 766
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->getLanguagePack(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 771
    :pswitch_4c0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message: MESSAGE_CLIENT_LANGUAGE_INSTALLED msg.arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    iget v1, p2, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_4ed

    .line 774
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->finishLanguageInstall(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 775
    :cond_4ed
    iget v0, p2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_28

    .line 777
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager;->unwind()V

    goto/16 :goto_28

    .line 783
    :pswitch_4f8
    const-string v0, "Message: MESSAGE_CLIENT_LANGUAGE_UNINSTALLED"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 785
    iget v1, p2, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_512

    .line 786
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->finishLanguageRemove(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 787
    :cond_512
    iget v1, p2, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_28

    .line 789
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->removeLanguage(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 795
    :pswitch_51d
    const-string v0, "Message: MESSAGE_CLIENT_SET_LANGUAGE_DISPLAY_NAMES"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "DEFAULT_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 798
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/manager/LanguageManager;->setDisplayLanguages(Ljava/util/HashMap;)V

    goto/16 :goto_28

    .line 804
    :pswitch_535
    const-string v0, "Message: MESSAGE_CLIENT_CANCEL_LANGUAGE_DOWNLOAD"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_28

    .line 809
    :pswitch_53c
    const-string v0, "Message: MESSAGE_CLIENT_START_IMMEDIDATELY"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->getManagerStartState()Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    move-result-object v0

    sget-object v1, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->DISABLED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    if-ne v0, v1, :cond_28

    .line 811
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/ConnectClient;->setStartAlarm(J)V

    goto/16 :goto_28

    .line 321
    :pswitch_data_554
    .packed-switch 0x0
        :pswitch_29
        :pswitch_33
        :pswitch_39
        :pswitch_3f
        :pswitch_45
        :pswitch_4b
        :pswitch_51
        :pswitch_57
        :pswitch_5d
        :pswitch_66
        :pswitch_7b
        :pswitch_81
        :pswitch_87
        :pswitch_8d
        :pswitch_93
        :pswitch_99
        :pswitch_9f
        :pswitch_a5
        :pswitch_ac
        :pswitch_b3
        :pswitch_ba
        :pswitch_c1
        :pswitch_a
        :pswitch_a
        :pswitch_d1
        :pswitch_d8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_df
        :pswitch_ef
        :pswitch_ff
        :pswitch_10f
        :pswitch_13b
        :pswitch_14b
        :pswitch_15b
        :pswitch_16b
        :pswitch_198
        :pswitch_1a8
        :pswitch_1b8
        :pswitch_1c8
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1f9
        :pswitch_20a
        :pswitch_211
        :pswitch_218
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_229
        :pswitch_239
        :pswitch_240
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_25c
        :pswitch_2be
        :pswitch_2ca
        :pswitch_2e0
        :pswitch_464
        :pswitch_373
        :pswitch_33f
        :pswitch_359
        :pswitch_2e7
        :pswitch_420
        :pswitch_315
        :pswitch_481
        :pswitch_48d
        :pswitch_452
        :pswitch_499
        :pswitch_4c0
        :pswitch_4f8
        :pswitch_51d
        :pswitch_535
        :pswitch_38d
        :pswitch_3a7
        :pswitch_3e6
        :pswitch_53c
    .end packed-switch
.end method

.method public isAutomationSuppressed()Z
    .registers 2

    .prologue
    .line 1246
    iget-boolean v0, p0, Lcom/swype/android/connect/ConnectClient;->suppressAutomation:Z

    return v0
.end method

.method public isDataCollectionPermitted()Z
    .registers 4

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getReportingStatus()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1266
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ENABLE_DATA_COLLECTION_PREF"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1269
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isDataConnectionPermitted()Z
    .registers 4

    .prologue
    .line 1194
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ENABLE_DATA_CONNECTION_PREF"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/swype/android/connect/util/FilePreference;->readBoolPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .registers 2

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectManager:Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectManager;->isOnline()Z

    move-result v0

    return v0
.end method

.method public managerStartComplete(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 958
    iget v0, p0, Lcom/swype/android/connect/ConnectClient;->managerStartStep:I

    if-nez v0, :cond_11

    .line 960
    iget v0, p0, Lcom/swype/android/connect/ConnectClient;->managerStartStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swype/android/connect/ConnectClient;->managerStartStep:I

    .line 961
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectManager:Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectManager;->start()V

    .line 1009
    :cond_10
    :goto_10
    return-void

    .line 962
    :cond_11
    const-class v0, Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 968
    iget v0, p0, Lcom/swype/android/connect/ConnectClient;->devicePropertiesRecieved:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_49

    .line 970
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 971
    const-string v1, "DeviceFirstTimeStartup"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 973
    if-nez v0, :cond_43

    .line 977
    iget v0, p0, Lcom/swype/android/connect/ConnectClient;->defaultLoadDelay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/swype/android/connect/manager/DeviceManager;->convertSecondsToTimeStamp(J)J

    move-result-wide v0

    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_43

    .line 979
    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/ConnectClient;->setStartAlarm(J)V

    .line 986
    :goto_40
    iput v4, p0, Lcom/swype/android/connect/ConnectClient;->devicePropertiesRecieved:I

    goto :goto_10

    .line 984
    :cond_43
    const-string v0, "FIRST_TIME_STARTUP_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    goto :goto_40

    .line 988
    :cond_49
    iget v0, p0, Lcom/swype/android/connect/ConnectClient;->devicePropertiesRecieved:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swype/android/connect/ConnectClient;->devicePropertiesRecieved:I

    goto :goto_10

    .line 991
    :cond_50
    const-string v0, "FIRST_TIME_STARTUP_COMPLETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 992
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->start()V

    goto :goto_10

    .line 993
    :cond_5e
    const-class v0, Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 994
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->start()V

    goto :goto_10

    .line 995
    :cond_70
    const-class v0, Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 996
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager;->start()V

    .line 997
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->systemManager:Lcom/swype/android/connect/manager/SystemManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SystemManager;->start()V

    .line 998
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->reportManager:Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/ReportingManager;->start()V

    .line 999
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager;->start()V

    .line 1000
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/MessageManager;->start()V

    .line 1001
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager;->start()V

    goto/16 :goto_10

    .line 1003
    :cond_9c
    const-class v0, Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1005
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->postStart()V

    .line 1006
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager;->upgrade()V

    .line 1007
    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(I)V

    goto/16 :goto_10
.end method

.method public notifyPossibleUpgrade()V
    .registers 2

    .prologue
    .line 917
    const-string v0, "ConnectClient.notifyPossibleUpgrade()"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager;->possibleSwypeUpgrade()V

    .line 919
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "i"

    .prologue
    .line 863
    const-string v1, "CONNECTION_TYPE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, connection:Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "CONNECTION_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 865
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/connect/ConnectClient;->suppressAutomation:Z

    .line 866
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->connectBinder:Landroid/os/IBinder;

    .line 868
    :goto_15
    return-object v1

    :cond_16
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->messenger:Landroid/os/Messenger;

    invoke-virtual {v1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_15
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 874
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/connect/ConnectClient;->managerStartStep:I

    .line 876
    new-instance v0, Lcom/swype/android/connect/security/ConnectConfiguration;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/security/ConnectConfiguration;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

    .line 877
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->overrideTimerValues()V

    .line 878
    new-instance v0, Lcom/swype/android/connect/util/BuildProperties;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/util/BuildProperties;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->buildProperties:Lcom/swype/android/connect/util/BuildProperties;

    .line 881
    const-string v0, "SwypeConnect"

    const-string v1, "LOGGING"

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/swype/android/connect/util/Logger;->configure(Ljava/lang/String;I)V

    .line 883
    new-instance v0, Lcom/swype/android/connect/manager/PreferencesManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->prefManager:Lcom/swype/android/connect/manager/PreferencesManager;

    .line 884
    new-instance v0, Lcom/swype/android/connect/ConnectManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/ConnectManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectManager:Lcom/swype/android/connect/ConnectManager;

    .line 885
    new-instance v0, Lcom/swype/android/connect/manager/DeviceManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/DeviceManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    .line 886
    new-instance v0, Lcom/swype/android/connect/manager/SessionManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/SessionManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    .line 887
    new-instance v0, Lcom/swype/android/connect/manager/LicenseManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/LicenseManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    .line 888
    new-instance v0, Lcom/swype/android/connect/manager/SystemManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/SystemManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->systemManager:Lcom/swype/android/connect/manager/SystemManager;

    .line 889
    new-instance v0, Lcom/swype/android/connect/manager/ReportingManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/ReportingManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->reportManager:Lcom/swype/android/connect/manager/ReportingManager;

    .line 890
    new-instance v0, Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/UpgradeManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    .line 891
    new-instance v0, Lcom/swype/android/connect/manager/MessageManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/MessageManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    .line 892
    new-instance v0, Lcom/swype/android/connect/manager/LanguageManager;

    invoke-direct {v0, p0}, Lcom/swype/android/connect/manager/LanguageManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    .line 894
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

    const-string v1, "INITIAL_LOADTIME"

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/security/ConnectConfiguration;->getIntProperty(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/swype/android/connect/ConnectClient;->defaultLoadDelay:I

    .line 895
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 896
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->stop()V

    .line 1098
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

    invoke-virtual {v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->destroy()V

    .line 1099
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->languageManager:Lcom/swype/android/connect/manager/LanguageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LanguageManager;->destroy()V

    .line 1100
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->messageManager:Lcom/swype/android/connect/manager/MessageManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/MessageManager;->destroy()V

    .line 1101
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager;->destroy()V

    .line 1102
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->systemManager:Lcom/swype/android/connect/manager/SystemManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SystemManager;->destroy()V

    .line 1103
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->reportManager:Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/ReportingManager;->destroy()V

    .line 1104
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->licenseManager:Lcom/swype/android/connect/manager/LicenseManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/LicenseManager;->destroy()V

    .line 1105
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->destroy()V

    .line 1106
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->deviceManager:Lcom/swype/android/connect/manager/DeviceManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/DeviceManager;->destroy()V

    .line 1107
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectManager:Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectManager;->destroy()V

    .line 1108
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1109
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 1013
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/ConnectClient;->handleCommand(Landroid/content/Intent;)V

    .line 1014
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1018
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/ConnectClient;->handleCommand(Landroid/content/Intent;)V

    .line 1022
    const/4 v0, 0x1

    return v0
.end method

.method public overrideTimerValues()V
    .registers 5

    .prologue
    .line 1323
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1324
    const-string v1, "DEFAULT_DELAY"

    const-string v2, "DEFAULT_DELAY"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string v1, "POLLING_FREQUENCY"

    const-string v2, "POLLING_FREQUENCY"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string v1, "REPORTING_FREQUENCY"

    const-string v2, "REPORTING_FREQUENCY"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/swype/android/connect/ConnectClient;->getEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/security/ConnectConfiguration;->overrideValues(Ljava/util/Map;)V

    .line 1328
    return-void
.end method

.method public performTask(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->isAutomationSuppressed()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1298
    const-string v0, "MESSAGE_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1299
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    .line 1310
    :cond_13
    :goto_13
    return-void

    .line 1300
    :cond_14
    const-string v0, "UDPATE_LICENSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1301
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->postMessage(I)V

    goto :goto_13

    .line 1302
    :cond_22
    const-string v0, "UPGRADE_AVAILABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1303
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->upgradeManager:Lcom/swype/android/connect/manager/UpgradeManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/UpgradeManager;->checkForUpgrade()V

    goto :goto_13

    .line 1307
    :cond_30
    const-string v0, "SEND_REPORTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1308
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->reportManager:Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/ReportingManager;->sendReportingNow()V

    goto :goto_13
.end method

.method public postMessage(I)V
    .registers 4
    .parameter

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1113
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1114
    return-void
.end method

.method public postMessage(Landroid/os/Message;)V
    .registers 3
    .parameter

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1118
    return-void
.end method

.method public postMessageDelayed(IJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1126
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    return-void
.end method

.method public postMessageDelayed(Landroid/os/Message;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1122
    return-void
.end method

.method public registerResponseListener(Lcom/swype/android/connect/ConnectClient$ResponseListener;)V
    .registers 3
    .parameter "l"

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectManager:Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/ConnectManager;->registerResponseListener(Lcom/swype/android/connect/ConnectClient$ResponseListener;)V

    .line 1145
    return-void
.end method

.method public saveEncryptedPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1172
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1173
    invoke-static {p2}, Lcom/swype/android/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1175
    return-void
.end method

.method public saveStringPreference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1198
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1199
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1201
    return-void
.end method

.method public sendCommand(Lcom/swype/android/connect/util/Command;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectManager:Lcom/swype/android/connect/ConnectManager;

    invoke-virtual {v0, p1}, Lcom/swype/android/connect/ConnectManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 1141
    return-void
.end method

.method public sendMessageToHost(I)V
    .registers 4
    .parameter "what"

    .prologue
    .line 828
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 829
    .local v0, send:Landroid/os/Message;
    invoke-direct {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 830
    return-void
.end method

.method public sendMessageToHost(ILandroid/os/Bundle;)V
    .registers 5
    .parameter "what"
    .parameter "b"

    .prologue
    .line 841
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 842
    .local v0, send:Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 843
    invoke-direct {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 844
    return-void
.end method

.method public sendMessageToHost(ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 833
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 834
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 835
    const-string v2, "DEFAULT_KEY"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 837
    invoke-direct {p0, v0}, Lcom/swype/android/connect/ConnectClient;->sendMessageToHost(Landroid/os/Message;)V

    .line 838
    return-void
.end method

.method public sendStatus(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/swype/android/connect/ConnectClient;->msgHandler:Lcom/swype/android/connect/ConnectClient$MessageHandler;

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/ConnectClient$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1131
    .local v0, send:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1132
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->postMessage(Landroid/os/Message;)V

    .line 1133
    return-void
.end method

.method public setConnectSettings(Ljava/lang/String;)V
    .registers 4
    .parameter "settings"

    .prologue
    .line 1260
    new-instance v0, Lcom/swype/android/connect/security/ConnectConfiguration;

    invoke-direct {v0, p0, p1}, Lcom/swype/android/connect/security/ConnectConfiguration;-><init>(Landroid/app/Service;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/swype/android/connect/ConnectClient;->connectConfiguration:Lcom/swype/android/connect/security/ConnectConfiguration;

    .line 1261
    const-string v0, "SwypeConnect"

    const-string v1, "LOGGING"

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/swype/android/connect/util/Logger;->configure(Ljava/lang/String;I)V

    .line 1262
    return-void
.end method

.method public setDebugResponse(Ljava/lang/String;)V
    .registers 2
    .parameter "responseCode"

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/swype/android/connect/ConnectClient;->debugResponse:Ljava/lang/String;

    .line 1214
    return-void
.end method

.method public setDeviceIdState(Lcom/swype/android/connect/ConnectClient$DeviceState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/swype/android/connect/ConnectClient;->deviceIdState:Lcom/swype/android/connect/ConnectClient$DeviceState;

    .line 1157
    return-void
.end method

.method public setSessionState(Lcom/swype/android/connect/ConnectClient$SessionState;)V
    .registers 2
    .parameter "state"

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/swype/android/connect/ConnectClient;->curSessionState:Lcom/swype/android/connect/ConnectClient$SessionState;

    .line 1161
    return-void
.end method

.method public setSwypeVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/swype/android/connect/ConnectClient;->swypeVersion:Ljava/lang/String;

    .line 1227
    return-void
.end method

.method public startClientAfterAlarm()V
    .registers 4

    .prologue
    .line 925
    const-string v0, "Alarm Complete, starting Connect"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->i(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 928
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 929
    const-string v1, "DeviceFirstTimeStartup"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 930
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 932
    const-string v0, "FIRST_TIME_STARTUP_COMPLETE"

    invoke-virtual {p0, v0}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 933
    return-void
.end method

.method public systemInvalidate()V
    .registers 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    if-eqz v0, :cond_9

    .line 1318
    iget-object v0, p0, Lcom/swype/android/connect/ConnectClient;->sessionManager:Lcom/swype/android/connect/manager/SessionManager;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/SessionManager;->systemInvalidateSession()V

    .line 1320
    :cond_9
    return-void
.end method
