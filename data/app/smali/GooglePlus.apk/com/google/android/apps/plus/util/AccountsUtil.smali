.class public Lcom/google/android/apps/plus/util/AccountsUtil;
.super Ljava/lang/Object;
.source "AccountsUtil.java"


# direct methods
.method public static addAccount(Landroid/app/Activity;)V
    .registers 9
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v4, options:Landroid/os/Bundle;
    const-string v0, "allowSkip"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    const-string v0, "introMessage"

    const v1, 0x7f080041

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 81
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "webupdates"

    move-object v5, p0

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 83
    return-void
.end method

.method public static getAccountName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "index"

    .prologue
    .line 245
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 246
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 247
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v2, v0

    if-ge p1, v2, :cond_12

    .line 248
    aget-object v2, v0, p1

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 250
    :goto_11
    return-object v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public static getAccounts(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v2, Lcom/google/android/apps/plus/util/Property;->AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 188
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 189
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/AccountsUtil;->removeYouTubeAccounts([Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v2

    .line 191
    .end local v1           #am:Landroid/accounts/AccountManager;
    :goto_1a
    return-object v2

    :cond_1b
    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, v0, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_1a
.end method

.method public static getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "context"
    .parameter "accountName"
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/AuthenticatorException;,
            Lcom/google/android/apps/plus/network/NetworkException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 118
    sget-object v8, Lcom/google/android/apps/plus/util/Property;->AUTH_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, url:Ljava/lang/String;
    sget-object v8, Lcom/google/android/apps/plus/util/Property;->AUTH_EMAIL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, email:Ljava/lang/String;
    sget-object v8, Lcom/google/android/apps/plus/util/Property;->AUTH_PASSWORD:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, password:Ljava/lang/String;
    if-eqz v7, :cond_2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    if-eqz v6, :cond_2a

    .line 123
    :try_start_1c
    invoke-static {v7, v3, v6, p2}, Lcom/google/android/apps/plus/util/AccountsUtil;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    move-result-object v2

    .line 139
    :cond_20
    return-object v2

    .line 124
    :catch_21
    move-exception v4

    .line 125
    .local v4, ex:Ljava/io/IOException;
    new-instance v8, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v9, "Cannot get auth token"

    invoke-direct {v8, v9, v4}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 130
    .end local v4           #ex:Ljava/io/IOException;
    :cond_2a
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 131
    .local v1, am:Landroid/accounts/AccountManager;
    const-string v8, "com.google"

    invoke-virtual {v1, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 132
    .local v0, accounts:[Landroid/accounts/Account;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_35
    array-length v8, v0

    if-ge v5, v8, :cond_5f

    .line 133
    aget-object v8, v0, v5

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 135
    :try_start_42
    aget-object v8, v0, v5

    const/4 v9, 0x1

    invoke-virtual {v1, v8, p2, v9}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, authToken:Ljava/lang/String;
    if-nez v2, :cond_20

    .line 137
    new-instance v8, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v9, "Cannot get auth token"

    invoke-direct {v8, v9}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_53} :catch_53

    .line 140
    .end local v2           #authToken:Ljava/lang/String;
    :catch_53
    move-exception v4

    .line 141
    .restart local v4       #ex:Ljava/io/IOException;
    new-instance v8, Lcom/google/android/apps/plus/network/NetworkException;

    const-string v9, "Cannot get auth token"

    invoke-direct {v8, v9, v4}, Lcom/google/android/apps/plus/network/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 132
    .end local v4           #ex:Ljava/io/IOException;
    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 146
    :cond_5f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Account not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static getChooseAccountIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 9
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2e

    .line 93
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v7, options:Landroid/os/Bundle;
    const-string v1, "allowSkip"

    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    const-string v1, "introMessage"

    const v2, 0x7f080041

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 98
    new-array v2, v3, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v4

    const-string v5, "webupdates"

    move-object v1, v0

    move-object v4, v0

    move-object v6, v0

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    .end local v7           #options:Landroid/os/Bundle;
    :cond_2e
    return-object v0
.end method

.method public static getNumAccounts(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 233
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 234
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    return v1
.end method

.method public static invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "token"

    .prologue
    .line 156
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static isRestrictedCircleForAccount(Lcom/google/android/apps/plus/content/EsAccount;I)Z
    .registers 3
    .parameter "account"
    .parameter "circleType"

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EsAccount;->isChild()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x9

    if-eq p1, v0, :cond_d

    const/4 v0, 0x7

    if-ne p1, v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static isYouTubeAccount(Landroid/accounts/Account;)Z
    .registers 3
    .parameter "account"

    .prologue
    .line 160
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@youtube.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter "uri"
    .parameter "email"
    .parameter "password"
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v2, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "Email"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "Passwd"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "accountType"

    const-string v6, "GOOGLE"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "service"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 267
    .local v1, form:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-static {p0, v1}, Lcom/google/android/apps/plus/util/AccountsUtil;->post(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Ljava/util/Properties;

    move-result-object v3

    .line 268
    .local v3, response:Ljava/util/Properties;
    const-string v4, "Error"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_46

    .line 270
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 272
    :cond_46
    const-string v4, "Auth"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static newAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 3
    .parameter "accountName"

    .prologue
    .line 67
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static post(Ljava/lang/String;Lorg/apache/http/client/entity/UrlEncodedFormEntity;)Ljava/util/Properties;
    .registers 11
    .parameter "uri"
    .parameter "form"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 280
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 281
    .local v0, connection:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 282
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 283
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v6, "Content-Length"

    invoke-virtual {p1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->getContentLength()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_27
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 287
    .local v2, out:Ljava/io/OutputStream;
    invoke-virtual {p1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 288
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 289
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 290
    .local v4, responseCode:I
    const/16 v6, 0xc8

    if-ne v4, v6, :cond_4e

    .line 291
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 292
    .local v3, properties:Ljava/util/Properties;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 293
    .local v1, in:Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_67

    .line 299
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    .line 296
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #properties:Ljava/util/Properties;
    :cond_4e
    :try_start_4e
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected HTTP response code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_67
    .catchall {:try_start_4e .. :try_end_67} :catchall_67

    .line 299
    .end local v2           #out:Ljava/io/OutputStream;
    .end local v4           #responseCode:I
    :catchall_67
    move-exception v6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
.end method

.method private static removeYouTubeAccounts([Landroid/accounts/Account;)Ljava/util/List;
    .registers 7
    .parameter "accounts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v1, p0

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_19

    aget-object v0, v1, v2

    .line 172
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/plus/util/AccountsUtil;->isYouTubeAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 173
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 176
    .end local v0           #account:Landroid/accounts/Account;
    :cond_19
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method
