.class public Lcom/google/android/apps/plus/hangout/HangoutNotifications;
.super Ljava/lang/Object;
.source "HangoutNotifications.java"


# direct methods
.method static synthetic access$000(Landroid/content/Context;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->hasDingtone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->setDingtone(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private static copyResourceToFile(ILandroid/content/Context;)Ljava/io/File;
    .registers 12
    .parameter "resource"
    .parameter "context"

    .prologue
    .line 131
    sget-object v7, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 133
    .local v5, path:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v7, "hangout_dingtone.m4a"

    invoke-direct {v2, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v2, file:Ljava/io/File;
    :try_start_d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 137
    const-string v7, "ExternalStorageUtils"

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 138
    const-string v7, "ExternalStorageUtils"

    const-string v8, "Notification sound already present"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_23
    :goto_23
    return-object v2

    .line 144
    :cond_24
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 146
    const-string v7, "ExternalStorageUtils"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 147
    const-string v7, "ExternalStorageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copy notification to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 153
    .local v4, is:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v6

    .line 155
    .local v6, size:I
    new-array v0, v6, [B

    .line 156
    .local v0, data:[B
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    .line 157
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 160
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 162
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 163
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_6e} :catch_6f

    goto :goto_23

    .line 164
    .end local v0           #data:[B
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #size:I
    :catch_6f
    move-exception v1

    .line 166
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ExternalStorageUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method public static getDingtone(Landroid/content/Context;)Landroid/net/Uri;
    .registers 7
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    .line 79
    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, key:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, uriString:Ljava/lang/String;
    if-eqz v2, :cond_38

    .line 84
    const-string v3, "ExternalStorageUtils"

    invoke-static {v3, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 85
    const-string v3, "ExternalStorageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hangout dingtone; uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_33
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 93
    :cond_37
    :goto_37
    return-object v3

    .line 90
    :cond_38
    const-string v4, "ExternalStorageUtils"

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 91
    const-string v4, "ExternalStorageUtils"

    const-string v5, "Hangout dingtone not set"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public static getRingtone(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6
    .parameter "context"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 104
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, defValue:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 109
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method private static hasDingtone(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 200
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->getDingtone(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static registerHangoutSounds(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 42
    const v1, 0x7f060001

    invoke-static {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications;->copyResourceToFile(ILandroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 45
    .local v0, file:Ljava/io/File;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/apps/plus/hangout/HangoutNotifications$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/hangout/HangoutNotifications$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 60
    return-void
.end method

.method private static setDingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 180
    const v3, 0x7f080012

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, key:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 182
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    const-string v3, "ExternalStorageUtils"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 188
    const-string v3, "ExternalStorageUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hangout dingtone set; uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_3a
    return-void
.end method

.method public static shouldNotify(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 64
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0c0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 67
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 69
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method

.method public static shouldVibrate(Landroid/content/Context;)Z
    .registers 6
    .parameter "context"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 114
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, key:Ljava/lang/String;
    const v4, 0x7f0c0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 117
    .local v0, defValue:Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 119
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    return v4
.end method
