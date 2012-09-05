.class public Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;
.super Landroid/accounts/AbstractAccountAuthenticator;
.source "SnsAccountTwAuthenticatorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwitterAccountAuthenticator"
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;

    .line 160
    invoke-direct {p0, p2}, Landroid/accounts/AbstractAccountAuthenticator;-><init>(Landroid/content/Context;)V

    .line 161
    iput-object p2, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->mAppContext:Landroid/content/Context;

    .line 162
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/sec/android/app/snsaccounttw/util/SnsAccountTwUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 169
    const-string v0, "SnsAccountTw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwitterAuthenticatorService : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 178
    if-eqz p5, :cond_83

    const-string v1, "username"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 180
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "username"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 185
    const-string v3, "password"

    invoke-virtual {p5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 187
    const-string v1, "authAccount"

    const-string v2, "username"

    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "accountType"

    const-string v2, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_69
    :goto_69
    return-object v0

    .line 172
    :cond_6a
    const-string v0, "SnsAccountTw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwitterAuthenticatorService : accountType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 194
    :cond_83
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwInformationActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    const-string v2, "accountAuthenticatorResponse"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    const-string v2, "ViaAccountAndSync"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 197
    const-string v2, "manageAccount"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_69
.end method

.method public confirmCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6
    .parameter "response"
    .parameter "account"
    .parameter "options"

    .prologue
    .line 207
    const-string v0, "SnsAccountTw"

    const-string v1, "TwitterAuthenticatorService : confirmCredentials"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public editProperties(Landroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "response"
    .parameter "accountType"

    .prologue
    .line 213
    const-string v0, "SnsAccountTw"

    const-string v1, "TwitterAuthenticatorService : editProperties"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAccountRemovalAllowed(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;)Landroid/os/Bundle;
    .registers 14
    .parameter "response"
    .parameter "account"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 219
    const-string v4, "SnsAccountTw"

    const-string v5, "TwitterAuthenticatorService : getAccountRemovalAllowed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v1, result:Landroid/os/Bundle;
    const-string v4, "booleanResult"

    invoke-virtual {v1, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    new-instance v4, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;-><init>(Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;)V

    invoke-virtual {v4}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator$1;->start()V

    .line 244
    iget-object v4, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->mAppContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    move-object v0, v4

    check-cast v0, Landroid/app/NotificationManager;

    .line 246
    .local v0, notiMgr:Landroid/app/NotificationManager;
    const-string v4, "SnsAccountTw"

    const-string v5, "getAccountRemovalAllowed : Cancel Noti SpType =2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 250
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 251
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "time"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    iget-object v4, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;

    invoke-virtual {v4}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$PollingCycle;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "synctype = ?"

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "message"

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 257
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 258
    .local v3, values2:Landroid/content/ContentValues;
    const-string v4, "requestid"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    iget-object v4, p0, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService$TwitterAccountAuthenticator;->this$0:Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;

    invoke-virtual {v4}, Lcom/sec/android/app/snsaccounttw/twitter/SnsAccountTwAuthenticatorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$PreviousRequestId;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "synctype = ?"

    new-array v7, v10, [Ljava/lang/String;

    const-string v8, "message"

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    return-object v1
.end method

.method public getAuthToken(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 270
    const-string v0, "SnsAccountTw"

    const-string v1, "TwitterAuthenticatorService : getAuthToken"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "authTokenType"

    .prologue
    .line 276
    const-string v0, "SnsAccountTw"

    const-string v1, "TwitterAuthenticatorService : getAuthTokenLabel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasFeatures(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "response"
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 283
    const-string v0, "SnsAccountTw"

    const-string v1, "TwitterAuthenticatorService : hasFeatures"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateCredentials(Landroid/accounts/AccountAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "loginOptions"

    .prologue
    .line 290
    const-string v0, "SnsAccountTw"

    const-string v1, "TwitterAuthenticatorService : updateCredentials"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v0, 0x0

    return-object v0
.end method
