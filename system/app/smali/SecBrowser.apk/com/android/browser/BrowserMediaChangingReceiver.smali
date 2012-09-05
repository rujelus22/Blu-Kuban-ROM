.class public Lcom/android/browser/BrowserMediaChangingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserMediaChangingReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 61
    const-string v11, "BrowserMediaChangingReceiver"

    const-string v12, "BrowserMediaChangingReceiver : onReceive"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, strAction:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, strData:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mContext:Landroid/content/Context;

    .line 66
    iget-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    iput-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 67
    iget-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "download_default_storyage"

    const-string v13, "PHONE"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, storage_type:Ljava/lang/String;
    const/4 v0, 0x0

    .line 69
    .local v0, bSdCardMounted:Z
    const/4 v5, 0x0

    .line 71
    .local v5, status:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v11, :cond_39

    .line 72
    iget-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mContext:Landroid/content/Context;

    const-string v12, "storage"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/storage/StorageManager;

    iput-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 76
    :cond_39
    iget-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v11}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 77
    .local v6, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v2, v6

    .line 78
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_41
    if-ge v1, v2, :cond_9b

    .line 79
    aget-object v3, v6, v1

    .line 80
    .local v3, mStorageVolumes:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, subsystem:Ljava/lang/String;
    if-eqz v10, :cond_7e

    .line 82
    const-string v11, "sd"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7e

    .line 83
    iget-object v11, p0, Lcom/android/browser/BrowserMediaChangingReceiver;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 84
    const-string v11, "mounted"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_81

    .line 85
    const-string v11, "BrowserMediaChangingReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive : mounted = %s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v0, 0x1

    .line 78
    :cond_7e
    :goto_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 89
    :cond_81
    const-string v11, "BrowserMediaChangingReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive : false mounted = %s "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x0

    goto :goto_7e

    .line 96
    .end local v3           #mStorageVolumes:Landroid/os/storage/StorageVolume;
    .end local v10           #subsystem:Ljava/lang/String;
    :cond_9b
    if-eqz v0, :cond_e9

    .line 97
    const-string v11, "MEMORY_CARD"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c7

    .line 98
    const-string v11, "BrowserMediaChangingReceiver"

    const-string v12, "onReceive : ACTION_MEDIA_MOUNTED, STORAGE_MEMORYCARD"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 101
    .local v4, prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "download_default_storyage"

    const-string v12, "MEMORY_CARD"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, p1, v12}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 138
    .end local v4           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_c6
    :goto_c6
    return-void

    .line 107
    :cond_c7
    const-string v11, "BrowserMediaChangingReceiver"

    const-string v12, "onReceive : ACTION_MEDIA_MOUNTED, STORAGE_PHONE"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 110
    .restart local v4       #prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "download_default_storyage"

    const-string v12, "PHONE"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, p1, v12}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto :goto_c6

    .line 115
    .end local v4           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_e9
    if-nez v0, :cond_10d

    .line 116
    const-string v11, "BrowserMediaChangingReceiver"

    const-string v12, "onReceive : ACTION_MEDIA_UNMOUNTED"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 119
    .restart local v4       #prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "download_default_storyage"

    const-string v12, "PHONE"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, p1, v12}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto :goto_c6

    .line 124
    .end local v4           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_10d
    const-string v11, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c6

    .line 125
    if-nez v0, :cond_139

    .line 126
    const-string v11, "BrowserMediaChangingReceiver"

    const-string v12, "onReceive : ACTION_BOOT_COMPLETED, STORAGE_PHONE"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 129
    .restart local v4       #prefEditor:Landroid/content/SharedPreferences$Editor;
    const-string v11, "download_default_storyage"

    const-string v12, "PHONE"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, p1, v12}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto :goto_c6

    .line 135
    .end local v4           #prefEditor:Landroid/content/SharedPreferences$Editor;
    :cond_139
    const-string v11, "BrowserMediaChangingReceiver"

    const-string v12, "onReceive : ACTION_BOOT_COMPLETED, sdcard"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6
.end method
