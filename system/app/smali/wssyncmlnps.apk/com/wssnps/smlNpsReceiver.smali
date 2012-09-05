.class public Lcom/wssnps/smlNpsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "smlNpsReceiver.java"


# static fields
.field public static bEbookScaning:Z

.field public static kies_status:I

.field public static usb_connected:Z

.field public static wifi_connected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/wssnps/smlNpsReceiver;->bEbookScaning:Z

    .line 37
    sput-boolean v0, Lcom/wssnps/smlNpsReceiver;->usb_connected:Z

    .line 38
    sput-boolean v0, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static get_kiesStatus()I
    .registers 1

    .prologue
    .line 226
    sget v0, Lcom/wssnps/smlNpsReceiver;->kies_status:I

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intent.action.KIES_WSSERVICE_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 45
    const-string v0, "KIES_WSSERVICE_START"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 46
    sput-boolean v7, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    .line 47
    sput-boolean v5, Lcom/wssnps/smlNpsReceiver;->usb_connected:Z

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssnps/smlNpsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssnps/smlNpsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    const-string v0, "mount"

    invoke-static {v0}, Lcom/wssnps/smlModelDefine;->MountAsUsbStorage(Ljava/lang/String;)V

    .line 52
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intent.action.KIES_WSSERVICE_START_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 54
    const-string v0, "KIES_WSSERVICE_START_WIFI"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 55
    sput-boolean v7, Lcom/wssnps/smlNpsReceiver;->usb_connected:Z

    .line 56
    sput-boolean v5, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssnps/smlNpsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssnps/smlNpsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 59
    const-string v0, "mount"

    invoke-static {v0}, Lcom/wssnps/smlModelDefine;->MountAsUsbStorage(Ljava/lang/String;)V

    .line 62
    :cond_62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 64
    const-string v0, "KIES_WSSERVICE_STOP"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.action.EBOOK_SCAN_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    sget-boolean v0, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    if-ne v0, v5, :cond_ad

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    :cond_ad
    sput-boolean v7, Lcom/wssnps/smlNpsReceiver;->usb_connected:Z

    .line 73
    sput-boolean v7, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wssnps/smlNpsService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 75
    const-string v0, "unmount"

    invoke-static {v0}, Lcom/wssnps/smlModelDefine;->MountAsUsbStorage(Ljava/lang/String;)V

    .line 78
    :cond_c0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SET_KIES_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 80
    const-string v0, "SET_KIES_STATUS"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 81
    const-string v0, "android.intent.action.SET_KIES_STATUS"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/wssnps/smlNpsReceiver;->kies_status:I

    .line 83
    :cond_d9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 85
    const-string v0, "ACTION_DEVICE_STORAGE_LOW"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 86
    sput-boolean v5, Lcom/wssnps/smlNpsHandler;->SML_SYNC_DBFULL:Z

    .line 90
    :cond_ec
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.intent.action.EBOOK_SCAN_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 92
    const-string v0, "EBOOK_SCAN_COMPLETED"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 93
    sput-boolean v7, Lcom/wssnps/smlNpsReceiver;->bEbookScaning:Z

    .line 97
    :cond_ff
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHECK_USB_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 99
    const-string v0, "CHECK_USB_CONNECTED"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb_connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssnps/smlNpsReceiver;->usb_connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 101
    sget-boolean v0, Lcom/wssnps/smlNpsReceiver;->usb_connected:Z

    if-eqz v0, :cond_218

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USB_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    :cond_139
    :goto_139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CHECK_WIFI_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 118
    const-string v0, "CHECK_WIFI_CONNECTED"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wifi_connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 120
    sget-boolean v0, Lcom/wssnps/smlNpsReceiver;->wifi_connected:Z

    if-eqz v0, :cond_227

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 135
    :cond_173
    :goto_173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.mms.action.BACKUP_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 137
    const-string v0, "Message BACKUP_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 140
    :try_start_184
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMessageCompress()V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_187} :catch_236

    .line 147
    :goto_187
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_BACKUP_FINISH:Z

    .line 149
    :cond_189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.mms.action.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 151
    const-string v0, "Message RESTORE_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 153
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->MESSAGE_RESTORE_FINISH:Z

    .line 157
    :cond_19c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.email.service.BACKUP_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b2

    .line 159
    const-string v0, "EMAIL BACKUP_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 162
    :try_start_1ad
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBREmailCompress()V
    :try_end_1b0
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1b0} :catch_253

    .line 169
    :goto_1b0
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_BACKUP_FINISH:Z

    .line 171
    :cond_1b2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.email.service.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 173
    const-string v0, "EMAIL RESTORE_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 175
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->EMAIL_RESTORE_FINISH:Z

    .line 179
    :cond_1c5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.fm.BACKUP_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 181
    const-string v0, "FM BACKUP_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 184
    :try_start_1d6
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRNetworkCompress()V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1d6 .. :try_end_1d9} :catch_270

    .line 191
    :goto_1d9
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->FM_BACKUP_FINISH:Z

    .line 193
    :cond_1db
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.fm.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 195
    const-string v0, "FM RESTORE_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 197
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->FM_RESTORE_FINISH:Z

    .line 201
    :cond_1ee
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.minidiary.service.BACKUP_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_204

    .line 203
    const-string v0, "Mini Diary BACKUP_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 206
    :try_start_1ff
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRMiniDiaryCompress()V
    :try_end_202
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_202} :catch_28d

    .line 213
    :goto_202
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_BACKUP_FINISH:Z

    .line 215
    :cond_204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.minidiary.service.RESTORE_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_217

    .line 217
    const-string v0, "Mini Diary RESTORE_FINISH"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 219
    sput-boolean v5, Lcom/wssnps/database/smlBackupRestoreItem;->DIARY_RESTORE_FINISH:Z

    .line 222
    :cond_217
    return-void

    .line 109
    :cond_218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USB_NOT_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_139

    .line 128
    :cond_227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_NOT_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_173

    .line 142
    :catch_236
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlBRMessageCompress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_187

    .line 164
    :catch_253
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlBREmailCompress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_1b0

    .line 186
    :catch_270
    move-exception v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlBRNetworkCompress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_1d9

    .line 208
    :catch_28d
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlBRMiniDiaryCompress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_202
.end method
