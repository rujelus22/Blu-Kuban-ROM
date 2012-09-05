.class public Lcom/google/android/apps/plus/phone/InstantUpload;
.super Ljava/lang/Object;
.source "InstantUpload.java"


# static fields
.field private static final INSTANT_UPLOAD_PROJECTION:[Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/phone/InstantUpload;->sHandler:Landroid/os/Handler;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "auto_upload_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/InstantUpload;->INSTANT_UPLOAD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableInstantUpload(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 113
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_3c

    .line 114
    const-string v2, "auto_upload_account_name"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v2, "auto_upload_account_type"

    const-string v3, "com.google"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_1c
    const-string v3, "auto_upload_enabled"

    if-eqz p2, :cond_47

    const/4 v2, 0x1

    :goto_21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    if-eqz p2, :cond_38

    .line 125
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/InstantUpload;->ensureSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 127
    :cond_38
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->startMonitoring(Landroid/content/Context;)V

    .line 128
    return-void

    .line 118
    :cond_3c
    const-string v2, "auto_upload_account_name"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 119
    const-string v2, "auto_upload_account_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1c

    .line 121
    :cond_47
    const/4 v2, 0x0

    goto :goto_21
.end method

.method private static ensureSyncEnabled(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/AccountsUtil;->newAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 171
    .local v1, systemAccount:Landroid/accounts/Account;
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 172
    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 39
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v1

    .line 40
    .local v1, settingsUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 43
    .local v6, autoUploadEnabled:I
    sget-object v2, Lcom/google/android/apps/plus/phone/InstantUpload;->INSTANT_UPLOAD_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 45
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_27

    .line 47
    :try_start_19
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 48
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_2b

    move-result v6

    .line 51
    :cond_24
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_27
    if-eqz v6, :cond_30

    const/4 v2, 0x1

    :goto_2a
    return v2

    .line 51
    :catchall_2b
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_30
    move v2, v8

    .line 54
    goto :goto_2a
.end method

.method public static setOnBatterySetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_22

    const/4 v1, 0x1

    .line 99
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_on_battery"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    return-void

    .line 98
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_22
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static setPhotoWiFiOnlySetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 62
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_22

    const/4 v1, 0x1

    .line 63
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_on_wifi_only"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    return-void

    .line 62
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_22
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static setRoamingUploadSetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_22

    const/4 v1, 0x1

    .line 87
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "sync_on_roaming"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 91
    return-void

    .line 86
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_22
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static setVideoWiFiOnlySetting(Landroid/content/Context;Z)V
    .registers 8
    .parameter "context"
    .parameter "enable"

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 74
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_22

    const/4 v1, 0x1

    .line 75
    .local v1, systemValue:I
    :goto_8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 77
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "video_upload_wifi_only"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    invoke-static {p0}, Lcom/google/android/picasasync/PicasaFacade;->get(Landroid/content/Context;)Lcom/google/android/picasasync/PicasaFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/picasasync/PicasaFacade;->getSettingsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 79
    return-void

    .line 74
    .end local v1           #systemValue:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_22
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static startMonitoring(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/google/android/apps/plus/phone/InstantUpload;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 135
    .local v0, start:Z
    if-nez v0, :cond_7

    .line 162
    :goto_6
    return-void

    .line 140
    :cond_7
    sget-object v1, Lcom/google/android/apps/plus/phone/InstantUpload;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/plus/phone/InstantUpload$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/plus/phone/InstantUpload$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method
