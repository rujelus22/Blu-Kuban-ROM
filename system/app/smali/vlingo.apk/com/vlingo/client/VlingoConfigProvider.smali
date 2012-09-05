.class public Lcom/vlingo/client/VlingoConfigProvider;
.super Landroid/content/ContentProvider;
.source "VlingoConfigProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.vlingo.client.vlingoconfigprovider"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.vlingo.client.vlingoconfigprovider"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final PATH_READBACK_ENABLED:Ljava/lang/String; = "readback_enabled"

.field public static final PATH_SMS_BODY_ENABLED:Ljava/lang/String; = "sms_body_enabled"

.field public static final PATH_TOS_ACCEPTED:Ljava/lang/String; = "tos_accepted"

.field private static final READBACK_ENABLED:I = 0x2

.field private static final SMS_BODY_ENABLED:I = 0x3

.field private static final TOS_ACCEPTED:I = 0x1

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addRowToCursor(Ljava/lang/String;Landroid/database/MatrixCursor;)V
    .registers 6
    .parameter "configName"
    .parameter "mc"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/vlingo/client/VlingoConfigProvider;->getConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, configValue:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 111
    .local v1, row:[Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method private getConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "configItem"

    .prologue
    .line 115
    const-string v0, ""

    .line 117
    .local v0, value:Ljava/lang/String;
    :try_start_2
    const-string v1, "tos_accepted"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 118
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTOSAccepted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_12
    :goto_12
    return-object v0

    .line 120
    :cond_13
    const-string v1, "readback_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 121
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    .line 123
    :cond_24
    const-string v1, "sms_body_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 124
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isReadMessageBody()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_33} :catch_35

    move-result-object v0

    goto :goto_12

    .line 127
    :catch_35
    move-exception v1

    goto :goto_12
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 53
    iget-object v1, p0, Lcom/vlingo/client/VlingoConfigProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 54
    .local v0, match:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 55
    const-string v1, "vnd.android.cursor.item/vnd.vlingo.config"

    .line 61
    :goto_b
    return-object v1

    .line 57
    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_19

    .line 58
    const-string v1, "vnd.android.cursor.dir/vnd.vlingo.config"

    goto :goto_b

    .line 61
    :cond_19
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 70
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/vlingo/client/VlingoConfigProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 71
    iget-object v0, p0, Lcom/vlingo/client/VlingoConfigProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.vlingoconfigprovider"

    const-string v2, "tos_accepted"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    iget-object v0, p0, Lcom/vlingo/client/VlingoConfigProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.vlingoconfigprovider"

    const-string v2, "readback_enabled"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/vlingo/client/VlingoConfigProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.vlingo.client.vlingoconfigprovider"

    const-string v2, "sms_body_enabled"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return v4
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 78
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 80
    .local v0, c:Landroid/database/MatrixCursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    .line 81
    const-string v2, "tos_accepted"

    invoke-direct {p0, v2, v0}, Lcom/vlingo/client/VlingoConfigProvider;->addRowToCursor(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    .line 82
    const-string v2, "readback_enabled"

    invoke-direct {p0, v2, v0}, Lcom/vlingo/client/VlingoConfigProvider;->addRowToCursor(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    .line 83
    const-string v2, "sms_body_enabled"

    invoke-direct {p0, v2, v0}, Lcom/vlingo/client/VlingoConfigProvider;->addRowToCursor(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    .line 101
    :goto_2b
    return-object v0

    .line 86
    :cond_2c
    iget-object v2, p0, Lcom/vlingo/client/VlingoConfigProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 87
    .local v1, match:I
    packed-switch v1, :pswitch_data_48

    goto :goto_2b

    .line 89
    :pswitch_36
    const-string v2, "tos_accepted"

    invoke-direct {p0, v2, v0}, Lcom/vlingo/client/VlingoConfigProvider;->addRowToCursor(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    goto :goto_2b

    .line 92
    :pswitch_3c
    const-string v2, "readback_enabled"

    invoke-direct {p0, v2, v0}, Lcom/vlingo/client/VlingoConfigProvider;->addRowToCursor(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    goto :goto_2b

    .line 95
    :pswitch_42
    const-string v2, "sms_body_enabled"

    invoke-direct {p0, v2, v0}, Lcom/vlingo/client/VlingoConfigProvider;->addRowToCursor(Ljava/lang/String;Landroid/database/MatrixCursor;)V

    goto :goto_2b

    .line 87
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3c
        :pswitch_42
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method
