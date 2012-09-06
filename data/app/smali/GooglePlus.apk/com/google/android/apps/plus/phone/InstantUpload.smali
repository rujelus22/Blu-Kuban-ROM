.class public Lcom/google/android/apps/plus/phone/InstantUpload;
.super Ljava/lang/Object;
.source "InstantUpload.java"


# static fields
.field private static final INSTANT_SHARE_PROJECTION:[Ljava/lang/String;

.field private static final INSTANT_UPLOAD_PROJECTION:[Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/phone/InstantUpload;->sHandler:Landroid/os/Handler;

    .line 31
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "auto_upload_enabled"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/phone/InstantUpload;->INSTANT_UPLOAD_PROJECTION:[Ljava/lang/String;

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "instant_share_eventid"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/plus/phone/InstantUpload;->INSTANT_SHARE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static cancelAllUploads(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 202
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadAllUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 204
    .local v0, uploadAllUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public static enableInstantUpload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_1c

    .line 148
    const-string v2, "auto_upload_account_name"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "auto_upload_account_type"

    const-string v3, "com.google"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1c
    const-string v3, "auto_upload_enabled"

    if-eqz p2, :cond_36

    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    sget-object v2, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    if-eqz p2, :cond_32

    .line 156
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/InstantUpload;->ensureSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 158
    :cond_32
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->startMonitoring(Landroid/content/Context;)V

    .line 159
    return-void

    .line 152
    :cond_36
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public static ensureSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 211
    const-string v0, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    .line 212
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 214
    .local v1, systemAccount:Landroid/accounts/Account;
    const-string v2, "com.google.android.apps.plus.iu.EsGoogleIuProvider"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public static getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 74
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    .line 75
    .local v1, settingsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/google/android/apps/plus/phone/InstantUpload;->INSTANT_SHARE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    .line 81
    :try_start_11
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 82
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_24

    move-result-object v3

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_1f
    :goto_1f
    return-object v3

    .line 85
    :cond_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    :catchall_24
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 43
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    .line 44
    .local v1, settingsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 47
    .local v6, autoUploadEnabled:I
    sget-object v2, Lcom/google/android/apps/plus/phone/InstantUpload;->INSTANT_UPLOAD_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 49
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_21

    .line 51
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 52
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_25

    move-result v6

    .line 55
    :cond_1e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_21
    if-eqz v6, :cond_2a

    const/4 v2, 0x1

    :goto_24
    return v2

    .line 55
    :catchall_25
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2a
    move v2, v8

    .line 58
    goto :goto_24
.end method

.method public static isInstantShareEnabled(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->getInstantShareEventId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setOnBatterySetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 132
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    .line 133
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_on_battery"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    return-void

    .line 132
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static setPhotoWiFiOnlySetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    .line 97
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_on_wifi_only"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 101
    return-void

    .line 96
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static setRoamingUploadSetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    .line 121
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 123
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_on_roaming"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    return-void

    .line 120
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static setVideoWiFiOnlySetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    .line 109
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "video_upload_wifi_only"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    sget-object v3, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    return-void

    .line 108
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static startMonitoring(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 165
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->isInstantShareEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_c
    const/4 v0, 0x1

    .line 168
    .local v0, start:Z
    :goto_d
    sget-object v1, Lcom/google/android/apps/plus/phone/InstantUpload;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/plus/phone/InstantUpload$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/phone/InstantUpload$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void

    .line 165
    .end local v0           #start:Z
    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method
