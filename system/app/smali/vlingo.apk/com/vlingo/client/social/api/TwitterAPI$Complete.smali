.class Lcom/vlingo/client/social/api/TwitterAPI$Complete;
.super Landroid/os/AsyncTask;
.source "TwitterAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
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
    .line 527
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$Complete;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 13
    .parameter "params"

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 531
    aget-object v4, p1, v10

    .line 532
    .local v4, token:Ljava/lang/String;
    aget-object v2, p1, v6

    .line 533
    .local v2, secret:Ljava/lang/String;
    const/4 v6, 0x2

    aget-object v5, p1, v6

    .line 537
    .local v5, verifier:Ljava/lang/String;
    :try_start_9
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;
    invoke-static {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->access$600(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthProvider;

    move-result-object v6

    iget-object v7, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v7}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Loauth/signpost/OAuthProvider;->retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)V

    .line 538
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v6

    invoke-interface {v6}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 539
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v6

    invoke-interface {v6}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    .line 540
    const-string v6, "twitter_user_token"

    invoke-static {v6, v4}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v6, "twitter_user_secret"

    invoke-static {v6, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v6, "twitter_request_token"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v6, "twitter_request_secret"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v6, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v6}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onLoginComplete(IZLjava/lang/String;)V

    .line 546
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_52
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_9 .. :try_end_52} :catch_54
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_9 .. :try_end_52} :catch_5d
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_9 .. :try_end_52} :catch_62
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_9 .. :try_end_52} :catch_67
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_52} :catch_6c

    move-result-object v6

    .line 563
    :goto_53
    return-object v6

    .line 547
    :catch_54
    move-exception v0

    .line 548
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    .line 563
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :goto_58
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_53

    .line 549
    :catch_5d
    move-exception v0

    .line 550
    .local v0, e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthNotAuthorizedException;->printStackTrace()V

    goto :goto_58

    .line 551
    .end local v0           #e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catch_62
    move-exception v0

    .line 552
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_58

    .line 553
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_67
    move-exception v0

    .line 554
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_58

    .line 555
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_6c
    move-exception v0

    .line 556
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 557
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 558
    .local v3, sw:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 559
    .local v1, pw:Ljava/io/PrintWriter;
    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 560
    const-string v6, "VLG_TwitterAPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\r"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 527
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 567
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 568
    iget-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterAPI;->access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onLoginComplete(IZLjava/lang/String;)V

    .line 570
    :cond_1e
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 527
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$Complete;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
