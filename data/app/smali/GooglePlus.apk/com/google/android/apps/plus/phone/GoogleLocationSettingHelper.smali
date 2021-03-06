.class public Lcom/google/android/apps/plus/phone/GoogleLocationSettingHelper;
.super Ljava/lang/Object;
.source "GoogleLocationSettingHelper.java"


# static fields
.field private static final GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/phone/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getUseLocationForServices(Landroid/content/Context;)I
    .registers 13
    .parameter "context"

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 80
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 82
    .local v9, stringValue:Ljava/lang/String;
    :try_start_6
    sget-object v1, Lcom/google/android/apps/plus/phone/GoogleLocationSettingHelper;->GOOGLE_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "use_location_for_services"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 85
    if-eqz v6, :cond_2c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 86
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_43
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_2b} :catch_35

    move-result-object v9

    .line 91
    :cond_2c
    if-eqz v6, :cond_31

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_31
    :goto_31
    if-nez v9, :cond_4a

    .line 96
    const/4 v10, 0x2

    .line 104
    :goto_34
    return v10

    .line 88
    :catch_35
    move-exception v7

    .line 89
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_36
    const-string v1, "GoogleLocationSettingHelper"

    const-string v2, "Failed to get \'Use My Location\' setting"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_43

    .line 91
    if-eqz v6, :cond_31

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_31

    .line 91
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catchall_43
    move-exception v1

    if-eqz v6, :cond_49

    .line 92
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_49
    throw v1

    .line 100
    :cond_4a
    :try_start_4a
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_4d} :catch_4f

    move-result v10

    .local v10, value:I
    goto :goto_34

    .line 101
    .end local v10           #value:I
    :catch_4f
    move-exception v8

    .line 102
    .local v8, nfe:Ljava/lang/NumberFormatException;
    const/4 v10, 0x2

    .restart local v10       #value:I
    goto :goto_34
.end method
