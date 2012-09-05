.class Lcom/vlingo/client/social/api/TwitterAPI$PostTask;
.super Landroid/os/AsyncTask;
.source "TwitterAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostTask"
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
    .line 373
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 373
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 13
    .parameter "params"

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 378
    .local v1, jso:Lorg/json/JSONObject;
    :try_start_1
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v8, "http://api.twitter.com:80/1/statuses/update.json"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 379
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 380
    .local v3, out:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "status"

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v8, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "UTF-8"

    invoke-direct {v8, v3, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 382
    iget-object v8, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v8}, Lcom/vlingo/client/social/api/TwitterAPI;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 383
    iget-object v8, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v8}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v8

    invoke-interface {v8, v4}, Loauth/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Loauth/signpost/http/HttpRequest;

    .line 384
    iget-object v8, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mClient:Lorg/apache/http/client/HttpClient;
    invoke-static {v8}, Lcom/vlingo/client/social/api/TwitterAPI;->access$1000(Lcom/vlingo/client/social/api/TwitterAPI;)Lorg/apache/http/client/HttpClient;

    move-result-object v8

    new-instance v9, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v9}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    invoke-interface {v8, v4, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 385
    .local v6, response:Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_4c} :catch_4e
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_1 .. :try_end_4c} :catch_53
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_1 .. :try_end_4c} :catch_58
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_1 .. :try_end_4c} :catch_5d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_4c} :catch_62
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4c} :catch_67
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4c} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_71

    .end local v1           #jso:Lorg/json/JSONObject;
    .local v2, jso:Lorg/json/JSONObject;
    move-object v1, v2

    .line 408
    .end local v2           #jso:Lorg/json/JSONObject;
    .end local v3           #out:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v4           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #response:Ljava/lang/String;
    .restart local v1       #jso:Lorg/json/JSONObject;
    :goto_4d
    return-object v1

    .line 386
    :catch_4e
    move-exception v0

    .line 387
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4d

    .line 388
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_53
    move-exception v0

    .line 389
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    goto :goto_4d

    .line 390
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_58
    move-exception v0

    .line 391
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_4d

    .line 392
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_5d
    move-exception v0

    .line 393
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_4d

    .line 394
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_62
    move-exception v0

    .line 395
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_4d

    .line 396
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_67
    move-exception v0

    .line 397
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .line 398
    .end local v0           #e:Ljava/io/IOException;
    :catch_6c
    move-exception v0

    .line 399
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4d

    .line 400
    .end local v0           #e:Lorg/json/JSONException;
    :catch_71
    move-exception v0

    .line 402
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 403
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 404
    .local v7, sw:Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 405
    .local v5, pw:Ljava/io/PrintWriter;
    invoke-virtual {v0, v5}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 406
    const-string v8, "VLG_TwitterAPI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\r"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 373
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .registers 8
    .parameter "jso"

    .prologue
    const v5, 0x7f0903de

    const/4 v4, 0x0

    .line 412
    if-eqz p1, :cond_37

    .line 413
    const-string v1, "error"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 415
    :try_start_e
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "error"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onUpdateComplete(ILjava/lang/String;)V
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_1e} :catch_1f

    .line 425
    :goto_1e
    return-void

    .line 417
    :catch_1f
    move-exception v0

    .line 418
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 421
    .end local v0           #e:Lorg/json/JSONException;
    :cond_23
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/vlingo/client/social/api/TwitterAPI;->access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onUpdateComplete(ILjava/lang/String;)V

    goto :goto_1e

    .line 423
    :cond_37
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI$PostTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterAPI;->access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onUpdateComplete(ILjava/lang/String;)V

    goto :goto_1e
.end method
