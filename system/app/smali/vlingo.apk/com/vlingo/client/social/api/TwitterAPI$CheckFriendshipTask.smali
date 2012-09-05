.class Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;
.super Landroid/os/AsyncTask;
.source "TwitterAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckFriendshipTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/api/TwitterAPI;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;)V
    .registers 2
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "params"

    .prologue
    .line 337
    const/4 v3, 0x0

    .line 339
    .local v3, response:Ljava/lang/String;
    :try_start_1
    const-string v6, "twitter_username"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    .local v5, username:Ljava/lang/String;
    const-string v4, "http://api.twitter.com:80/1/friendships/exists.json?user_a={userA}&user_b={userB}"

    .line 341
    .local v4, twitterUrl:Ljava/lang/String;
    const-string v6, "{userA}"

    invoke-static {v5}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/vlingo/client/core/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 342
    const-string v6, "{userB}"

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v7}, Lcom/vlingo/client/core/util/UrlUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/vlingo/client/core/util/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 347
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 348
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->access$1000(Lcom/vlingo/client/social/api/TwitterAPI;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    new-instance v7, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-interface {v6, v2, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_39
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_39} :catch_3a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_39} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_39} :catch_44

    .line 356
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v4           #twitterUrl:Ljava/lang/String;
    .end local v5           #username:Ljava/lang/String;
    :goto_39
    return-object v3

    .line 349
    :catch_3a
    move-exception v1

    .line 350
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_39

    .line 351
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3f
    move-exception v1

    .line 352
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_39

    .line 353
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_44
    move-exception v1

    .line 354
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 333
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 7
    .parameter "response"

    .prologue
    const/4 v4, 0x0

    .line 360
    if-eqz p1, :cond_14

    .line 361
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v4, v1, v2}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onVlingoFriendshipExists(IZLjava/lang/String;)V

    .line 365
    :goto_13
    return-void

    .line 363
    :cond_14
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI$CheckFriendshipTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/vlingo/client/social/api/TwitterAPI;->access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v4, v2}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onVlingoFriendshipExists(IZLjava/lang/String;)V

    goto :goto_13
.end method
