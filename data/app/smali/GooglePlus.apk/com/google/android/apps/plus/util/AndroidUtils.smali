.class public final Lcom/google/android/apps/plus/util/AndroidUtils;
.super Ljava/lang/Object;
.source "AndroidUtils.java"


# static fields
.field private static final ANDROID_ID_PROJECTION:[Ljava/lang/String;

.field private static final GSERVICES_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/util/AndroidUtils;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/util/AndroidUtils;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)J
    .registers 12
    .parameter "context"

    .prologue
    .line 29
    const-wide/16 v6, 0x0

    .line 30
    .local v6, androidId:J
    const/4 v8, 0x0

    .line 32
    .local v8, c:Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/plus/util/AndroidUtils;->GSERVICES_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/apps/plus/util/AndroidUtils;->ANDROID_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 34
    if-eqz v8, :cond_25

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 35
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_32

    move-result-object v10

    .line 37
    .local v10, value:Ljava/lang/String;
    if-eqz v10, :cond_2b

    :try_start_21
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_32
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_24} :catch_2e

    move-result-wide v6

    .line 43
    .end local v10           #value:Ljava/lang/String;
    :cond_25
    :goto_25
    if-eqz v8, :cond_2a

    .line 44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 47
    :cond_2a
    return-wide v6

    .line 37
    .restart local v10       #value:Ljava/lang/String;
    :cond_2b
    const-wide/16 v6, 0x0

    goto :goto_25

    .line 38
    :catch_2e
    move-exception v9

    .line 39
    .local v9, e:Ljava/lang/NumberFormatException;
    const-wide/16 v6, 0x0

    goto :goto_25

    .line 43
    .end local v9           #e:Ljava/lang/NumberFormatException;
    .end local v10           #value:Ljava/lang/String;
    :catchall_32
    move-exception v0

    if-eqz v8, :cond_38

    .line 44
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_38
    throw v0
.end method

.method public static getNetworkId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 57
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 60
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_13

    .line 62
    :try_start_a
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_f

    move-result-object v2

    .line 67
    :goto_e
    return-object v2

    .line 63
    :catch_f
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "none"

    goto :goto_e

    .line 67
    .end local v0           #e:Ljava/lang/Exception;
    :cond_13
    const-string v2, "none"

    goto :goto_e
.end method

.method private static getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .registers 2
    .parameter "context"

    .prologue
    .line 79
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static hasTelephony(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AndroidUtils;->getTelephonyManager(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
