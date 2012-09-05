.class public Lcom/google/android/voicesearch/util/GoogleSettingsUtil;
.super Ljava/lang/Object;
.source "GoogleSettingsUtil.java"


# static fields
.field private static final PARTNER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/util/GoogleSettingsUtil;->PARTNER_URI:Landroid/net/Uri;

    .line 34
    const-class v0, Lcom/google/android/voicesearch/util/GoogleSettingsUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/voicesearch/util/GoogleSettingsUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGooglePartnerString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "cr"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/voicesearch/util/GoogleSettingsUtil;->PARTNER_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1, p2}, Lcom/google/android/voicesearch/util/GoogleSettingsUtil;->getSettingString(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSettingString(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "uri"
    .parameter "cr"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 65
    const/4 v7, 0x0

    .line 67
    .local v7, value:Ljava/lang/String;
    const/4 v6, 0x0

    .line 69
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "value"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    if-eqz v6, :cond_3d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 73
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_4c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3c} :catch_45

    move-result-object v7

    .line 82
    :cond_3d
    if-eqz v6, :cond_42

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_42
    :goto_42
    if-eqz v7, :cond_53

    .end local v7           #value:Ljava/lang/String;
    :goto_44
    return-object v7

    .line 75
    .restart local v7       #value:Ljava/lang/String;
    :catch_45
    move-exception v0

    .line 82
    if-eqz v6, :cond_42

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_42

    .line 82
    :catchall_4c
    move-exception v0

    if-eqz v6, :cond_52

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v0

    :cond_53
    move-object v7, p3

    .line 94
    goto :goto_44
.end method
