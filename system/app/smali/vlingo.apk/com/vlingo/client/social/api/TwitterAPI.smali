.class public Lcom/vlingo/client/social/api/TwitterAPI;
.super Ljava/lang/Object;
.source "TwitterAPI.java"

# interfaces
.implements Lcom/vlingo/client/social/api/TwitterDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/social/api/TwitterAPI$1;,
        Lcom/vlingo/client/social/api/TwitterAPI$Complete;,
        Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;,
        Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;,
        Lcom/vlingo/client/social/api/TwitterAPI$PostTask;,
        Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;,
        Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;,
        Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;
    }
.end annotation


# static fields
.field public static final CALLBACK_URI:Landroid/net/Uri; = null

.field public static final RESULT_CANCELLED:I = 0x5

.field public static final RESULT_FAIL:I = 0x1

.field public static final RESULT_FAIL_AUTH:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final TWITTER_ACCESS_TOKEN_URL:Ljava/lang/String; = "http://twitter.com/oauth/access_token"

.field public static final TWITTER_AUTHORIZE_URL:Ljava/lang/String; = "http://twitter.com/oauth/authorize"

.field public static final TWITTER_CONSUMER_KEY:Ljava/lang/String; = "AIOSWX2WLG6g8LnvV215Q"

.field public static final TWITTER_CONSUMER_SECRET:Ljava/lang/String; = "Vpcu3aCveK0oVpAYvnlpB9nqOJoi96fPFcOL3jYA"

.field public static final TWITTER_REQUEST_TOKEN_URL:Ljava/lang/String; = "http://twitter.com/oauth/request_token"

.field public static final URL_TWITTER_CREATE:Ljava/lang/String; = "http://api.twitter.com:80/1/friendships/create/vlingo.json"

.field public static final URL_TWITTER_FRIENDSHIP:Ljava/lang/String; = "http://api.twitter.com:80/1/friendships/exists.json?user_a={userA}&user_b={userB}"

.field public static final URL_TWITTER_UPDATE:Ljava/lang/String; = "http://api.twitter.com:80/1/statuses/update.json"

.field public static final URL_TWITTER_VERIFY:Ljava/lang/String; = "http://api.twitter.com:80/1/account/verify_credentials.json"


# instance fields
.field private final callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

.field private context:Landroid/content/Context;

.field private mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

.field private mClient:Lorg/apache/http/client/HttpClient;

.field private mConsumer:Loauth/signpost/OAuthConsumer;

.field private mProvider:Loauth/signpost/OAuthProvider;

.field private mSecret:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

.field private res:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    const-string v0, "http://m.vlingo.com/twitterCallback"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/social/api/TwitterAPI;->CALLBACK_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;)V
    .registers 9
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    .line 116
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    .line 117
    iput-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;

    .line 119
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;

    .line 121
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 122
    .local v0, parameters:Lorg/apache/http/params/HttpParams;
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 123
    const-string v3, "ISO-8859-1"

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 124
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 125
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 126
    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 128
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 129
    .local v1, schReg:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 130
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 131
    .local v2, tsccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mClient:Lorg/apache/http/client/HttpClient;

    .line 133
    new-instance v3, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    const-string v4, "AIOSWX2WLG6g8LnvV215Q"

    const-string v5, "Vpcu3aCveK0oVpAYvnlpB9nqOJoi96fPFcOL3jYA"

    invoke-direct {v3, v4, v5}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;

    .line 135
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterAPI;->refreshCredentials()V

    .line 136
    return-void
.end method

.method static synthetic access$1000(Lcom/vlingo/client/social/api/TwitterAPI;)Lorg/apache/http/client/HttpClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    return-object v0
.end method

.method public static resetSettings()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/android/Util;->clearCookies(Landroid/content/Context;)V

    .line 140
    const-string v0, "twitter_account_name"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "twitter_request_secret"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "twitter_request_token"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "twitter_user_secret"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "twitter_user_token"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v0, "twitter_picture_url"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "twitter_picture"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 147
    const-string v0, "twitter_account"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 148
    return-void
.end method


# virtual methods
.method public checkFriendshipWithUser(Ljava/lang/String;)V
    .registers 5
    .parameter "user"

    .prologue
    .line 214
    new-instance v0, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 215
    return-void
.end method

.method public dismissDialogs()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    if-eqz v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterDialog;->dismissDialogs()V

    .line 224
    :cond_9
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1d

    .line 225
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->cancel(Z)Z

    .line 228
    :cond_1d
    return-void
.end method

.method public followVlingo()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 210
    new-instance v1, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;

    invoke-direct {v1, p0, v0}, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 3

    .prologue
    .line 512
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 514
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 515
    return-object v0
.end method

.method public onCancel()V
    .registers 5

    .prologue
    .line 524
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onLoginComplete(IZLjava/lang/String;)V

    .line 525
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 10
    .parameter "values"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 575
    const-string v4, "twitter_request_token"

    invoke-static {v4, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, token:Ljava/lang/String;
    const-string v4, "twitter_request_secret"

    invoke-static {v4, v6}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, secret:Ljava/lang/String;
    if-eqz v2, :cond_17

    if-eqz v1, :cond_17

    .line 578
    iget-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;

    invoke-interface {v4, v2, v1}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_17
    const-string v4, "oauth_token"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, otoken:Ljava/lang/String;
    const-string v4, "oauth_verifier"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, verifier:Ljava/lang/String;
    if-eqz v0, :cond_3b

    if-eqz v3, :cond_3b

    .line 584
    new-instance v4, Lcom/vlingo/client/social/api/TwitterAPI$Complete;

    invoke-direct {v4, p0, v6}, Lcom/vlingo/client/social/api/TwitterAPI$Complete;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 593
    :goto_3a
    return-void

    .line 589
    :cond_3b
    iget-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v7, v6}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onLoginComplete(IZLjava/lang/String;)V

    goto :goto_3a
.end method

.method public onError(Ljava/lang/String;)V
    .registers 8
    .parameter "err"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;

    const v5, 0x7f0903d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onLoginComplete(IZLjava/lang/String;)V

    .line 597
    return-void
.end method

.method public onTwitterError(Ljava/lang/String;)V
    .registers 8
    .parameter "err"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;

    const v5, 0x7f0903dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onLoginComplete(IZLjava/lang/String;)V

    .line 601
    return-void
.end method

.method public refreshCredentials()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 152
    const-string v0, "twitter_user_token"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mToken:Ljava/lang/String;

    .line 153
    const-string v0, "twitter_user_secret"

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mSecret:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mSecret:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 155
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;

    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mSecret:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Loauth/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_22
    return-void
.end method

.method public showDialogs()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    if-eqz v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterDialog;->showDialogs()V

    .line 237
    :cond_9
    return-void
.end method

.method public shutdown()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    if-eqz v0, :cond_c

    .line 161
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterDialog;->dismissDialogs()V

    .line 162
    iput-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    .line 164
    :cond_c
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_20

    .line 165
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->cancel(Z)Z

    .line 167
    :cond_20
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 168
    iput-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;

    .line 169
    iput-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    .line 170
    return-void
.end method

.method public startLoginFlow(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 173
    iput-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;

    .line 174
    iput-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    .line 175
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI;->context:Landroid/content/Context;

    .line 176
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    const-string v1, "http://twitter.com/oauth/request_token"

    const-string v2, "http://twitter.com/oauth/access_token"

    const-string v3, "http://twitter.com/oauth/authorize"

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;

    .line 181
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;

    invoke-interface {v0, v5}, Loauth/signpost/OAuthProvider;->setOAuth10a(Z)V

    .line 183
    new-instance v0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    invoke-direct {v0, p0, v4}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V

    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    .line 184
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mAuthTask:Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;

    new-array v1, v5, [Lcom/vlingo/client/social/api/TwitterAPI;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 185
    return-void
.end method

.method public updateDialog()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    if-eqz v0, :cond_11

    .line 189
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 190
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/TwitterDialog;->updateView()V

    .line 193
    :cond_11
    return-void
.end method

.method public updateStatus(Ljava/lang/String;)V
    .registers 5
    .parameter "message"

    .prologue
    .line 204
    if-nez p1, :cond_4

    .line 205
    const-string p1, ""

    .line 206
    :cond_4
    new-instance v0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    return-void
.end method

.method public verifyCredentials()V
    .registers 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/vlingo/client/social/api/TwitterAPI;->refreshCredentials()V

    .line 197
    new-instance v0, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method

.method public verifyCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 201
    return-void
.end method
