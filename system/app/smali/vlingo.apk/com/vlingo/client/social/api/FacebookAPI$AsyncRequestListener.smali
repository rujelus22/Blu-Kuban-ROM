.class Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;
.super Ljava/lang/Object;
.source "FacebookAPI.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/FacebookAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRequestListener"
.end annotation


# instance fields
.field private final method:Ljava/lang/String;

.field final synthetic this$0:Lcom/vlingo/client/social/api/FacebookAPI;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/social/api/FacebookAPI;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "method"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->method:Ljava/lang/String;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/FacebookAPI;Ljava/lang/String;Lcom/vlingo/client/social/api/FacebookAPI$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;-><init>(Lcom/vlingo/client/social/api/FacebookAPI;Ljava/lang/String;)V

    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .registers 7
    .parameter "errMessage"

    .prologue
    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "method"

    iget-object v2, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->method:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    #getter for: Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    invoke-static {v1}, Lcom/vlingo/client/social/api/FacebookAPI;->access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    const/16 v3, 0x386

    iget-object v4, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->method:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;->onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 222
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .registers 10
    .parameter "response"

    .prologue
    .line 163
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v3, params:Landroid/os/Bundle;
    const-string v4, "response"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v4, "method"

    iget-object v5, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->method:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, json:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 170
    .local v1, err:Ljava/lang/String;
    :try_start_13
    #calls: Lcom/vlingo/client/social/api/FacebookAPI;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/vlingo/client/social/api/FacebookAPI;->access$300(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 171
    iget-object v4, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->method:Ljava/lang/String;

    const-string v5, "me"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 172
    const-string v4, "name"

    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "picture"

    const-string v5, "picture"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_37
    const-string v4, "error"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_54

    .line 176
    iget-object v4, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    #getter for: Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FacebookAPI;->access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    const/16 v6, 0x385

    iget-object v7, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->method:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v3}, Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;->onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_4e} :catch_6f
    .catch Lcom/facebook/android/FacebookError; {:try_start_13 .. :try_end_4e} :catch_78

    .line 191
    :goto_4e
    if-eqz v1, :cond_53

    .line 192
    invoke-direct {p0, v1}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->onError(Ljava/lang/String;)V

    .line 194
    :cond_53
    return-void

    .line 179
    :cond_54
    :try_start_54
    const-string v4, "error"

    const-string v5, "error"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v4, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    #getter for: Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    invoke-static {v4}, Lcom/vlingo/client/social/api/FacebookAPI;->access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    move-result-object v4

    iget-object v5, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    const/16 v6, 0x386

    iget-object v7, p0, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->method:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v3}, Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;->onFacebookAPIMethod(Lcom/vlingo/client/social/api/FacebookAPI;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_6e} :catch_6f
    .catch Lcom/facebook/android/FacebookError; {:try_start_54 .. :try_end_6e} :catch_78

    goto :goto_4e

    .line 183
    :catch_6f
    move-exception v0

    .line 184
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 185
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 189
    goto :goto_4e

    .line 186
    .end local v0           #e:Lorg/json/JSONException;
    :catch_78
    move-exception v0

    .line 187
    .local v0, e:Lcom/facebook/android/FacebookError;
    invoke-virtual {v0}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    .line 188
    invoke-virtual {v0}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_4e
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    .line 199
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->onError(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 204
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->onError(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 208
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->onError(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 213
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 214
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vlingo/client/social/api/FacebookAPI$AsyncRequestListener;->onError(Ljava/lang/String;)V

    .line 215
    return-void
.end method
