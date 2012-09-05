.class Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;
.super Landroid/os/AsyncTask;
.source "TwitterAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowVlingoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
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
    .line 288
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 11
    .parameter "params"

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 293
    .local v1, jso:Lorg/json/JSONObject;
    :try_start_1
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v6, "http://api.twitter.com:80/1/friendships/create/vlingo.json"

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 294
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 295
    .local v3, out:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "follow"

    const-string v8, "true"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v3, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 297
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 298
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v6

    invoke-interface {v6, v4}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 299
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->access$1000(Lcom/vlingo/client/social/api/TwitterAPI;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    new-instance v7, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-interface {v6, v4, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 300
    .local v5, response:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_4b} :catch_4d
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_1 .. :try_end_4b} :catch_52
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_1 .. :try_end_4b} :catch_57
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_1 .. :try_end_4b} :catch_5c
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_4b} :catch_61
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4b} :catch_66
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4b} :catch_6b

    .end local v1           #jso:Lorg/json/JSONObject;
    .local v2, jso:Lorg/json/JSONObject;
    move-object v1, v2

    .line 316
    .end local v2           #jso:Lorg/json/JSONObject;
    .end local v3           #out:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v4           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #response:Ljava/lang/String;
    .restart local v1       #jso:Lorg/json/JSONObject;
    :goto_4c
    return-object v1

    .line 301
    :catch_4d
    move-exception v0

    .line 302
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4c

    .line 303
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_52
    move-exception v0

    .line 304
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    goto :goto_4c

    .line 305
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_57
    move-exception v0

    .line 306
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_4c

    .line 307
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_5c
    move-exception v0

    .line 308
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_4c

    .line 309
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_61
    move-exception v0

    .line 310
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_4c

    .line 311
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_66
    move-exception v0

    .line 312
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 313
    .end local v0           #e:Ljava/io/IOException;
    :catch_6b
    move-exception v0

    .line 314
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 288
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 6
    .parameter "jso"

    .prologue
    .line 320
    if-eqz p1, :cond_e

    .line 321
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onFollowVlingoComplete(ILjava/lang/String;)V

    .line 325
    :goto_d
    return-void

    .line 323
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI$FollowVlingoTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/vlingo/client/social/api/TwitterAPI;->access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onFollowVlingoComplete(ILjava/lang/String;)V

    goto :goto_d
.end method
