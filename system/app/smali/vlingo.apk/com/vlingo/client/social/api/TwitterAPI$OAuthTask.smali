.class Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;
.super Landroid/os/AsyncTask;
.source "TwitterAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/TwitterAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/vlingo/client/social/api/TwitterAPI;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private authUrl:Ljava/lang/String;

.field private parent:Lcom/vlingo/client/social/api/TwitterAPI;

.field final synthetic this$0:Lcom/vlingo/client/social/api/TwitterAPI;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 239
    iput-object p1, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 240
    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->authUrl:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->parent:Lcom/vlingo/client/social/api/TwitterAPI;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;-><init>(Lcom/vlingo/client/social/api/TwitterAPI;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/vlingo/client/social/api/TwitterAPI;)Ljava/lang/Boolean;
    .registers 7
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 245
    aget-object v1, p1, v4

    iput-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->parent:Lcom/vlingo/client/social/api/TwitterAPI;

    .line 247
    :try_start_5
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mProvider:Loauth/signpost/OAuthProvider;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterAPI;->access$600(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v2}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/social/api/TwitterAPI;->CALLBACK_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Loauth/signpost/OAuthProvider;->retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->authUrl:Ljava/lang/String;

    .line 248
    const-string v1, "twitter_request_token"

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v2}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v2

    invoke-interface {v2}, Loauth/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v1, "twitter_request_secret"

    iget-object v2, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mConsumer:Loauth/signpost/OAuthConsumer;
    invoke-static {v2}, Lcom/vlingo/client/social/api/TwitterAPI;->access$500(Lcom/vlingo/client/social/api/TwitterAPI;)Loauth/signpost/OAuthConsumer;

    move-result-object v2

    invoke-interface {v2}, Loauth/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3f
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_5 .. :try_end_3f} :catch_41
    .catch Loauth/signpost/exception/OAuthNotAuthorizedException; {:try_start_5 .. :try_end_3f} :catch_4a
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_5 .. :try_end_3f} :catch_4f
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_5 .. :try_end_3f} :catch_54
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_59

    move-result-object v1

    .line 263
    :goto_40
    return-object v1

    .line 251
    :catch_41
    move-exception v0

    .line 252
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    .line 263
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :goto_45
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_40

    .line 253
    :catch_4a
    move-exception v0

    .line 254
    .local v0, e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthNotAuthorizedException;->printStackTrace()V

    goto :goto_45

    .line 255
    .end local v0           #e:Loauth/signpost/exception/OAuthNotAuthorizedException;
    :catch_4f
    move-exception v0

    .line 256
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    goto :goto_45

    .line 257
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_54
    move-exception v0

    .line 258
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    goto :goto_45

    .line 259
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_59
    move-exception v0

    .line 260
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "VLG_"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 239
    check-cast p1, [Lcom/vlingo/client/social/api/TwitterAPI;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->doInBackground([Lcom/vlingo/client/social/api/TwitterAPI;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 9
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 268
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 270
    :try_start_7
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    new-instance v2, Lcom/vlingo/client/social/api/TwitterDialog;

    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->parent:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-virtual {v3}, Lcom/vlingo/client/social/api/TwitterAPI;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->authUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->parent:Lcom/vlingo/client/social/api/TwitterAPI;

    invoke-direct {v2, v3, v4, v5}, Lcom/vlingo/client/social/api/TwitterDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/vlingo/client/social/api/TwitterDialogListener;)V

    #setter for: Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;
    invoke-static {v1, v2}, Lcom/vlingo/client/social/api/TwitterAPI;->access$702(Lcom/vlingo/client/social/api/TwitterAPI;Lcom/vlingo/client/social/api/TwitterDialog;)Lcom/vlingo/client/social/api/TwitterDialog;

    .line 271
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->mTwitterDialog:Lcom/vlingo/client/social/api/TwitterDialog;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterAPI;->access$700(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/social/api/TwitterDialog;->show()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_45

    .line 277
    :cond_24
    :goto_24
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_44

    .line 278
    invoke-static {}, Lcom/vlingo/client/social/api/TwitterAPI;->resetSettings()V

    .line 279
    iget-object v1, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->callback:Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;
    invoke-static {v1}, Lcom/vlingo/client/social/api/TwitterAPI;->access$900(Lcom/vlingo/client/social/api/TwitterAPI;)Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->this$0:Lcom/vlingo/client/social/api/TwitterAPI;

    #getter for: Lcom/vlingo/client/social/api/TwitterAPI;->res:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/vlingo/client/social/api/TwitterAPI;->access$800(Lcom/vlingo/client/social/api/TwitterAPI;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v6, v3}, Lcom/vlingo/client/social/api/TwitterAPI$TwitterCallback;->onLoginComplete(IZLjava/lang/String;)V

    .line 281
    :cond_44
    return-void

    .line 273
    :catch_45
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_24
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 239
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/vlingo/client/social/api/TwitterAPI$OAuthTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
