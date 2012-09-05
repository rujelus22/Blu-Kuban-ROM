.class public Lcom/facebook/android/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/Facebook$DialogListener;
    }
.end annotation


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://success/?error_reason=user_denied"

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field public static GRAPH_BASE_URL:Ljava/lang/String; = null

.field private static final LOGIN:Ljava/lang/String; = "login"

.field public static OAUTH_ENDPOINT:Ljava/lang/String; = null

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field public static RESTSERVER_URL:Ljava/lang/String; = null

.field public static final TOKEN:Ljava/lang/String; = "access_token"

.field public static UI_SERVER:Ljava/lang/String;


# instance fields
.field private mAccessExpires:J

.field private mAccessToken:Ljava/lang/String;

.field private mFBDialog:Lcom/facebook/android/FbDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-string v0, "https://graph.facebook.com/oauth/authorize"

    sput-object v0, Lcom/facebook/android/Facebook;->OAUTH_ENDPOINT:Ljava/lang/String;

    .line 52
    const-string v0, "https://www.facebook.com/connect/uiserver.php"

    sput-object v0, Lcom/facebook/android/Facebook;->UI_SERVER:Ljava/lang/String;

    .line 54
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    .line 56
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/android/Facebook;->mAccessToken:Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/android/Facebook;->mAccessExpires:J

    .line 464
    return-void
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .registers 8
    .parameter "context"
    .parameter "applicationId"
    .parameter "permissions"
    .parameter "listener"

    .prologue
    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "client_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    array-length v1, p3

    if-lez v1, :cond_18

    .line 109
    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_18
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 112
    const-string v1, "login"

    new-instance v2, Lcom/facebook/android/Facebook$1;

    invoke-direct {v2, p0, p4}, Lcom/facebook/android/Facebook$1;-><init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$DialogListener;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)Lcom/facebook/android/FbDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    .line 144
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)Lcom/facebook/android/FbDialog;
    .registers 10
    .parameter "context"
    .parameter "action"
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, dialog:Lcom/facebook/android/FbDialog;
    const-string v3, "login"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 376
    sget-object v1, Lcom/facebook/android/Facebook;->OAUTH_ENDPOINT:Ljava/lang/String;

    .line 377
    .local v1, endpoint:Ljava/lang/String;
    const-string v3, "type"

    const-string v4, "user_agent"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v3, "redirect_uri"

    const-string v4, "fbconnect://success"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_19
    const-string v3, "display"

    const-string v4, "touch"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 386
    const-string v3, "access_token"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Lcom/facebook/android/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 389
    .local v2, url:Ljava/lang/String;
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_69

    .line 391
    const-string v3, "Error"

    const-string v4, "Application requires permission to access the Internet"

    invoke-static {p1, v3, v4}, Lcom/facebook/android/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_59
    return-object v0

    .line 380
    .end local v1           #endpoint:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_5a
    sget-object v1, Lcom/facebook/android/Facebook;->UI_SERVER:Ljava/lang/String;

    .line 381
    .restart local v1       #endpoint:Ljava/lang/String;
    const-string v3, "method"

    invoke-virtual {p3, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v3, "next"

    const-string v4, "fbconnect://success"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 394
    .restart local v2       #url:Ljava/lang/String;
    :cond_69
    new-instance v0, Lcom/facebook/android/FbDialog;

    .end local v0           #dialog:Lcom/facebook/android/FbDialog;
    invoke-direct {v0, p1, v2, p4}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 395
    .restart local v0       #dialog:Lcom/facebook/android/FbDialog;
    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->show()V

    goto :goto_59
.end method

.method public dismissDialogs()V
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    if-eqz v0, :cond_11

    .line 159
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 160
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->dismiss()V

    .line 163
    :cond_11
    return-void
.end method

.method public getAccessExpires()J
    .registers 3

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->mAccessExpires:J

    return-wide v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .registers 5

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    invoke-static {p1}, Lcom/facebook/android/Util;->clearCookies(Landroid/content/Context;)V

    .line 196
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "method"

    const-string v3, "auth.expireSession"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v0}, Lcom/facebook/android/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, response:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 200
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 201
    return-object v1
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 4
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_10
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 321
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :cond_16
    if-eqz p1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, url:Ljava/lang/String;
    :goto_2b
    invoke-static {v0, p3, p2}, Lcom/facebook/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 323
    .end local v0           #url:Ljava/lang/String;
    :cond_30
    sget-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    goto :goto_2b
.end method

.method public setAccessExpires(J)V
    .registers 3
    .parameter "time"

    .prologue
    .line 444
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->mAccessExpires:J

    .line 445
    return-void
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .registers 6
    .parameter "expiresIn"

    .prologue
    .line 453
    if-eqz p1, :cond_19

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 457
    :cond_19
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 2
    .parameter "token"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/facebook/android/Facebook;->mAccessToken:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public showDialogs()V
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    if-eqz v0, :cond_11

    .line 170
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_11

    .line 171
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->show()V

    .line 174
    :cond_11
    return-void
.end method

.method public updateDialog()V
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    if-eqz v0, :cond_11

    .line 148
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 149
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mFBDialog:Lcom/facebook/android/FbDialog;

    invoke-virtual {v0}, Lcom/facebook/android/FbDialog;->updateView()V

    .line 152
    :cond_11
    return-void
.end method
