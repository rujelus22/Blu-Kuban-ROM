.class public Lcom/google/android/apps/books/net/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;,
        Lcom/google/android/apps/books/net/HttpHelper$DownloadLimitWarning;,
        Lcom/google/android/apps/books/net/HttpHelper$TokenExpiredException;,
        Lcom/google/android/apps/books/net/HttpHelper$AuthIoException;,
        Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;,
        Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;,
        Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;,
        Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;,
        Lcom/google/android/apps/books/net/HttpHelper$WrappedIoException;
    }
.end annotation


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;Landroid/accounts/AccountManager;)V
    .registers 3
    .parameter "connectivityManager"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "accountManager"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/books/net/HttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 66
    iput-object p2, p0, Lcom/google/android/apps/books/net/HttpHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 67
    return-void
.end method

.method private static blockingGetAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManager;Z)Ljava/lang/String;
    .registers 12
    .parameter "account"
    .parameter "manager"
    .parameter "notifyAuthFailure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p0, :cond_32

    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v5, 0x0

    .line 78
    .local v5, handler:Landroid/os/Handler;
    :try_start_4
    const-string v2, "print"

    move-object v0, p1

    move-object v1, p0

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v7

    .line 80
    .local v7, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v7}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 81
    .local v8, result:Landroid/os/Bundle;
    const-string v0, "authtoken"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 82
    const-string v0, "authtoken"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .end local v4           #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5           #handler:Landroid/os/Handler;
    .end local v7           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v8           #result:Landroid/os/Bundle;
    :goto_21
    return-object v0

    .line 84
    .restart local v4       #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local v5       #handler:Landroid/os/Handler;
    .restart local v7       #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .restart local v8       #result:Landroid/os/Bundle;
    :cond_22
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unauthorized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4 .. :try_end_2a} :catch_2a
    .catch Landroid/accounts/OperationCanceledException; {:try_start_4 .. :try_end_2a} :catch_34

    .line 87
    .end local v7           #future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    .end local v8           #result:Landroid/os/Bundle;
    :catch_2a
    move-exception v6

    .line 88
    .local v6, e:Landroid/accounts/AuthenticatorException;
    const-string v0, "HttpHelper"

    const-string v1, "Authentication error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v4           #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .end local v5           #handler:Landroid/os/Handler;
    .end local v6           #e:Landroid/accounts/AuthenticatorException;
    :cond_32
    :goto_32
    const/4 v0, 0x0

    goto :goto_21

    .line 89
    .restart local v4       #callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    .restart local v5       #handler:Landroid/os/Handler;
    :catch_34
    move-exception v6

    .line 90
    .local v6, e:Landroid/accounts/OperationCanceledException;
    const-string v0, "HttpHelper"

    const-string v1, "Authentication canceled"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method public static wrapException(Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;
    .registers 4
    .parameter "e"
    .parameter "requestString"

    .prologue
    .line 190
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_a

    .line 191
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 204
    :goto_9
    return-object v0

    .line 192
    :cond_a
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_14

    .line 193
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 194
    :cond_14
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1e

    .line 195
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 196
    :cond_1e
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_28

    .line 198
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 199
    :cond_28
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_32

    .line 200
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 201
    :cond_32
    instance-of v0, p0, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v0, :cond_3d

    .line 202
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_9

    .line 204
    :cond_3d
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;

    invoke-direct {v0, p1, p0}, Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method public static wrapExceptionBasedOnStatus(ILjava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;
    .registers 6
    .parameter "status"
    .parameter "msg"
    .parameter "cause"

    .prologue
    .line 220
    packed-switch p0, :pswitch_data_46

    .line 233
    :pswitch_3
    div-int/lit8 v0, p0, 0x64

    .line 234
    .local v0, statusClass:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 239
    const-string v1, "HttpHelper"

    invoke-static {v1, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    const/4 v1, 0x0

    .line 273
    .end local v0           #statusClass:I
    :goto_e
    return-object v1

    .line 227
    :pswitch_f
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 244
    .restart local v0       #statusClass:I
    :cond_15
    sparse-switch p0, :sswitch_data_54

    .line 260
    packed-switch v0, :pswitch_data_66

    .line 273
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 247
    :sswitch_21
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$TokenExpiredException;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$TokenExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 250
    :sswitch_27
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$AuthIoException;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$AuthIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 252
    :sswitch_2d
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 254
    :sswitch_33
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 269
    :pswitch_39
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_e

    .line 271
    :pswitch_40
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    invoke-direct {v1, p1, p2}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 220
    :pswitch_data_46
    .packed-switch 0xca
        :pswitch_f
        :pswitch_3
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 244
    :sswitch_data_54
    .sparse-switch
        0x191 -> :sswitch_21
        0x193 -> :sswitch_27
        0x1a1 -> :sswitch_2d
        0x1f7 -> :sswitch_33
    .end sparse-switch

    .line 260
    :pswitch_data_66
    .packed-switch 0x4
        :pswitch_39
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public getAccountManager()Landroid/accounts/AccountManager;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/books/net/HttpHelper;->mAccountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 6
    .parameter "account"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 165
    if-nez p1, :cond_5

    move-object v0, v1

    .line 178
    :cond_4
    :goto_4
    return-object v0

    .line 168
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/books/net/HttpHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "missing account manager"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v2, p0, Lcom/google/android/apps/books/net/HttpHelper;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/google/android/apps/books/net/HttpHelper;->blockingGetAuthToken(Landroid/accounts/Account;Landroid/accounts/AccountManager;Z)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, authToken:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 175
    const-string v2, "HttpHelper"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 176
    const-string v2, "HttpHelper"

    const-string v3, "null auth token"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    move-object v0, v1

    .line 178
    goto :goto_4
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/books/net/HttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_6

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/books/net/HttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/net/ConnectivityManager;)Z

    move-result v0

    goto :goto_5
.end method

.method public shouldSkipRetry(Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;
    .registers 7
    .parameter "e"
    .parameter "requestString"

    .prologue
    const/4 v3, 0x3

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/HttpHelper;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device offline, skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, msg:Ljava/lang/String;
    const-string v1, "HttpHelper"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 120
    const-string v1, "HttpHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_27
    new-instance v1, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/apps/books/net/HttpHelper$OfflineIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 131
    .end local v0           #msg:Ljava/lang/String;
    .end local p1
    :cond_2d
    :goto_2d
    return-object p1

    .line 124
    .restart local p1
    :cond_2e
    instance-of v1, p1, Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;

    if-nez v1, :cond_3f

    instance-of v1, p1, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;

    if-eqz v1, :cond_4f

    move-object v1, p1

    check-cast v1, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;

    invoke-virtual {v1}, Lcom/google/android/apps/books/net/HttpHelper$ClientIoException;->shouldRetry()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 126
    :cond_3f
    const-string v1, "HttpHelper"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 127
    const-string v1, "HttpHelper"

    const-string v2, "Skipping retry for"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    .line 131
    :cond_4f
    const/4 p1, 0x0

    goto :goto_2d
.end method

.method public sleep()V
    .registers 4

    .prologue
    .line 140
    const-wide/16 v1, 0x3e8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 144
    :goto_5
    return-void

    .line 141
    :catch_6
    move-exception v0

    .line 142
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v1, "HttpHelper"

    const-string v2, "Interrupted while waiting to retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
