.class Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;
.super Landroid/os/AsyncTask;
.source "TwitterAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetCredentialsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
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
    .line 434
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 434
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/json/JSONObject;
    .registers 12
    .parameter "arg0"

    .prologue
    .line 437
    const/4 v2, 0x0

    .line 439
    .local v2, jso:Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    const-string v7, "http://api.twitter.com:80/1/account/verify_credentials.json"

    invoke-direct {v1, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 440
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    iget-object v7, p0, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v7}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v7

    invoke-interface {v7, v1}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 441
    iget-object v7, p0, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v7}, Lcom/vlingo/client/social/api/TwitterAPI;->access$1000(Lcom/vlingo/client/social/api/TwitterAPI;)Lorg/apache/http/client/HttpClient;

    move-result-object v7

    new-instance v8, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v8}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-interface {v7, v1, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 442
    .local v5, response:Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_27
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_1 .. :try_end_27} :catch_29
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_1 .. :try_end_27} :catch_2e
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_1 .. :try_end_27} :catch_33
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_27} :catch_38
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_27} :catch_3d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_27} :catch_42
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_47

    .end local v2           #jso:Lorg/json/JSONObject;
    .local v3, jso:Lorg/json/JSONObject;
    move-object v2, v3

    .line 466
    .end local v1           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #jso:Lorg/json/JSONObject;
    .end local v5           #response:Ljava/lang/String;
    .restart local v2       #jso:Lorg/json/JSONObject;
    :goto_28
    return-object v2

    .line 446
    :catch_29
    move-exception v0

    .line 447
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    goto :goto_28

    .line 448
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_2e
    move-exception v0

    .line 449
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_28

    .line 450
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_33
    move-exception v0

    .line 451
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_28

    .line 452
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_38
    move-exception v0

    .line 453
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_28

    .line 454
    .end local v0           #e:Lorg/json/JSONException;
    :catch_3d
    move-exception v0

    .line 455
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_28

    .line 456
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_42
    move-exception v0

    .line 457
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    .line 458
    .end local v0           #e:Ljava/io/IOException;
    :catch_47
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 462
    .local v6, sw:Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 463
    .local v4, pw:Ljava/io/PrintWriter;
    invoke-virtual {v0, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 464
    const-string v7, "VLG_TwitterAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n\r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 434
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 9
    .parameter "jso"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 470
    if-eqz p1, :cond_35

    .line 471
    const-string v3, "name"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, name:Ljava/lang/String;
    const-string v3, "screen_name"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 473
    .local v2, screen_name:Ljava/lang/String;
    const-string v3, "profile_image_url"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, pictureURL:Ljava/lang/String;
    const-string v3, "twitter_username"

    invoke-static {v3, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v3, "twitter_account_name"

    invoke-static {v3, v0}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v3, "twitter_picture_url"

    invoke-static {v3, v1}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v3, "twitter_account"

    invoke-static {v3, v6}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 480
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onVerifyComplete(ILjava/lang/String;)V

    .line 485
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #pictureURL:Ljava/lang/String;
    .end local v2           #screen_name:Ljava/lang/String;
    :goto_34
    return-void

    .line 483
    :cond_35
    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI$GetCredentialsTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/vlingo/client/social/api/TwitterAPI;->access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903de

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onVerifyComplete(ILjava/lang/String;)V

    goto :goto_34
.end method
