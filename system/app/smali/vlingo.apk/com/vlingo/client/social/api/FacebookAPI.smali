.class public Lcom/vlingo/client/social/api/FacebookAPI;
.super Ljava/lang/Object;
.source "FacebookAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/social/api/FacebookAPI$1;,
        Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;,
        Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;,
        Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "39010226174"

.field private static final PERMISSIONS:[Ljava/lang/String;


# instance fields
.field private final callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

.field private final fb:Lcom/facebook/android/Facebook;

.field private final runner:Lcom/facebook/android/AsyncFacebookRunner;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/social/api/FacebookAPI;->PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    .line 40
    new-instance v0, Lcom/facebook/android/Facebook;

    invoke-direct {v0}, Lcom/facebook/android/Facebook;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    .line 41
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->runner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 42
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/FacebookAPI;->restore()Z

    .line 43
    return-void
.end method

.method static synthetic access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/facebook/android/FacebookError;
        }
    .end annotation

    .prologue
    .line 28
    invoke-static {p0}, Lcom/vlingo/client/social/api/FacebookAPI;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/facebook/android/FacebookError;
        }
    .end annotation

    .prologue
    .line 227
    const-string v2, "false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 228
    new-instance v2, Lcom/facebook/android/FacebookError;

    const-string v3, "request failed"

    invoke-direct {v2, v3}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_10
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 231
    const-string p0, "{value : true}"

    .line 233
    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, json:Lorg/json/JSONObject;
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 238
    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 239
    .local v0, error:Lorg/json/JSONObject;
    new-instance v2, Lcom/facebook/android/FacebookError;

    const-string v3, "message"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 241
    .end local v0           #error:Lorg/json/JSONObject;
    :cond_40
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 242
    new-instance v2, Lcom/facebook/android/FacebookError;

    const-string v3, "error_msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 244
    :cond_68
    const-string v2, "error_code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 245
    new-instance v2, Lcom/facebook/android/FacebookError;

    const-string v3, "request failed"

    const-string v4, ""

    const-string v5, "error_code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 247
    :cond_84
    const-string v2, "error_msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 248
    new-instance v2, Lcom/facebook/android/FacebookError;

    const-string v3, "error_msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_98
    const-string v2, "error_reason"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 251
    new-instance v2, Lcom/facebook/android/FacebookError;

    const-string v3, "error_reason"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_ac
    return-object v1
.end method

.method public static resetSettings()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/android/Util;->clearCookies(Landroid/content/Context;)V

    .line 67
    const-string v0, "facebook_account_name"

    invoke-static {v0, v3}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "facebook_token"

    invoke-static {v0, v3}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "facebook_expires"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/settings/Settings;->setLong(Ljava/lang/String;J)V

    .line 70
    const-string v0, "facebook_account"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 71
    const-string v0, "facebook_picture"

    invoke-static {v0, v3}, Lcom/vlingo/client/settings/Settings;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 72
    const-string v0, "facebook_picture_url"

    invoke-static {v0, v3}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public dismissDialogs()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->dismissDialogs()V

    .line 88
    return-void
.end method

.method public fetchUserData()V
    .registers 7

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, parameters:Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "picture,name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI;->runner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v2, "me"

    new-instance v3, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;

    const-string v4, "me"

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;-><init>(Lcom/vlingo/client/social/api/FacebookAPI;Ljava/lang/String;Lcom/vlingo/client/social/api/FacebookAPI$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 118
    return-void
.end method

.method public getFacebook()Lcom/facebook/android/Facebook;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method public login(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    const-string v1, "39010226174"

    sget-object v2, Lcom/vlingo/client/social/api/FacebookAPI;->PERMISSIONS:[Ljava/lang/String;

    new-instance v3, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;-><init>(Lcom/vlingo/client/social/api/FacebookAPI;Lcom/vlingo/client/social/api/FacebookAPI$1;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/facebook/android/Facebook;->authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 77
    return-void
.end method

.method public logout(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/FacebookAPI;->dismissDialogs()V

    .line 100
    :try_start_3
    iget-object v2, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v2, p1}, Lcom/facebook/android/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_14

    .line 106
    :goto_8
    return-void

    .line 101
    :catch_9
    move-exception v1

    .line 102
    .local v1, me:Ljava/net/MalformedURLException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 103
    .end local v1           #me:Ljava/net/MalformedURLException;
    :catch_14
    move-exception v0

    .line 104
    .local v0, io:Ljava/io/IOException;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public restore()Z
    .registers 5

    .prologue
    .line 58
    const-string v0, "facebook_account"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 59
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    const-string v1, "facebook_token"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    const-string v1, "facebook_expires"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/settings/Settings;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 62
    :cond_22
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method public save()V
    .registers 4

    .prologue
    .line 51
    const-string v0, "facebook_token"

    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "facebook_expires"

    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/settings/Settings;->setLong(Ljava/lang/String;J)V

    .line 54
    const-string v0, "facebook_account"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method

.method public showDialogs()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->showDialogs()V

    .line 95
    return-void
.end method

.method public updateDialog()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI;->fb:Lcom/facebook/android/Facebook;

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->updateDialog()V

    .line 81
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .registers 9
    .parameter "status"

    .prologue
    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v0, parameters:Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI;->runner:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v2, "me/feed"

    const-string v3, "POST"

    new-instance v4, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;

    const-string v5, "stream.publish"

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v6}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;-><init>(Lcom/vlingo/client/social/api/FacebookAPI;Ljava/lang/String;Lcom/vlingo/client/social/api/FacebookAPI$1;)V

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 112
    return-void
.end method
