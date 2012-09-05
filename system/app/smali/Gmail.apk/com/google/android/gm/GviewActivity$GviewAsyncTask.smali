.class Lcom/google/android/gm/GviewActivity$GviewAsyncTask;
.super Landroid/os/AsyncTask;
.source "GviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/GviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GviewAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private final mActivity:Landroid/app/Activity;

.field private mLoading:Z

.field private final mUrl:Ljava/lang/String;

.field private final mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/google/android/gm/GviewActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/GviewActivity;Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter "activity"
    .parameter "account"
    .parameter "webView"
    .parameter "url"

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->this$0:Lcom/google/android/gm/GviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    .line 179
    iput-object p3, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mAccount:Ljava/lang/String;

    .line 180
    iput-object p4, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mWebView:Landroid/webkit/WebView;

    .line 181
    iput-object p5, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mUrl:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mLoading:Z

    .line 183
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 17
    .parameter "params"

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, entity:Lorg/apache/http/HttpEntity;
    const/4 v5, 0x0

    .line 196
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    new-instance v0, Landroid/accounts/Account;

    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mAccount:Ljava/lang/String;

    const-string v11, "com.google"

    invoke-direct {v0, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v0, account:Landroid/accounts/Account;
    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "SID"

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, sid:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "LSID"

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 204
    .local v4, lsid:Ljava/lang/String;
    new-instance v3, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v10, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    const-string v11, "Android-Gview/0.1"

    const/4 v12, 0x1

    invoke-direct {v3, v10, v11, v12}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 205
    .local v3, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "SID"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v9, v11, v12

    const/4 v12, 0x2

    const-string v13, "LSID"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/gm/provider/Urls;->buildUri(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 207
    .local v7, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {v3, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 208
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 210
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v6, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_5f
    .catchall {:try_start_2 .. :try_end_5f} :catchall_d4
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_5f} :catch_78
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5f} :catch_96
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_5f} :catch_b5

    .line 211
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    :try_start_5f
    invoke-interface {v2, v6}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 213
    const-string v10, "UTF-8"

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_5f .. :try_end_6b} :catchall_f0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_5f .. :try_end_6b} :catch_f9
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6b} :catch_f6
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5f .. :try_end_6b} :catch_f3

    move-result-object v10

    .line 221
    if-eqz v2, :cond_71

    .line 223
    :try_start_6e
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_e0

    .line 226
    :cond_71
    :goto_71
    if-eqz v6, :cond_76

    .line 228
    :try_start_73
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_e2

    :cond_76
    :goto_76
    move-object v5, v6

    .line 232
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #lsid:Ljava/lang/String;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #sid:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :goto_77
    return-object v10

    .line 214
    :catch_78
    move-exception v1

    .line 215
    .local v1, e:Landroid/accounts/AuthenticatorException;
    :goto_79
    :try_start_79
    const-string v10, "Gview"

    const-string v11, "Exception caught while loading Gview: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_8a
    .catchall {:try_start_79 .. :try_end_8a} :catchall_d4

    .line 221
    if-eqz v2, :cond_8f

    .line 223
    :try_start_8c
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_e4

    .line 226
    :cond_8f
    :goto_8f
    if-eqz v5, :cond_94

    .line 228
    :try_start_91
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_e6

    .line 232
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :cond_94
    :goto_94
    const/4 v10, 0x0

    goto :goto_77

    .line 216
    :catch_96
    move-exception v1

    .line 217
    .local v1, e:Ljava/io/IOException;
    :goto_97
    :try_start_97
    const-string v10, "Gview"

    const-string v11, "Exception caught while loading Gview: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a8
    .catchall {:try_start_97 .. :try_end_a8} :catchall_d4

    .line 221
    if-eqz v2, :cond_ad

    .line 223
    :try_start_aa
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_e8

    .line 226
    :cond_ad
    :goto_ad
    if-eqz v5, :cond_94

    .line 228
    :try_start_af
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_94

    .line 229
    :catch_b3
    move-exception v10

    goto :goto_94

    .line 218
    .end local v1           #e:Ljava/io/IOException;
    :catch_b5
    move-exception v1

    .line 219
    .local v1, e:Landroid/accounts/OperationCanceledException;
    :goto_b6
    :try_start_b6
    const-string v10, "Gview"

    const-string v11, "Exception caught while loading Gview: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_c7
    .catchall {:try_start_b6 .. :try_end_c7} :catchall_d4

    .line 221
    if-eqz v2, :cond_cc

    .line 223
    :try_start_c9
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_ea

    .line 226
    :cond_cc
    :goto_cc
    if-eqz v5, :cond_94

    .line 228
    :try_start_ce
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    goto :goto_94

    .line 229
    :catch_d2
    move-exception v10

    goto :goto_94

    .line 221
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catchall_d4
    move-exception v10

    :goto_d5
    if-eqz v2, :cond_da

    .line 223
    :try_start_d7
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_ec

    .line 226
    :cond_da
    :goto_da
    if-eqz v5, :cond_df

    .line 228
    :try_start_dc
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_ee

    .line 229
    :cond_df
    :goto_df
    throw v10

    .line 224
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v3       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #lsid:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #sid:Ljava/lang/String;
    :catch_e0
    move-exception v11

    goto :goto_71

    .line 229
    :catch_e2
    move-exception v11

    goto :goto_76

    .line 224
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v4           #lsid:Ljava/lang/String;
    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #sid:Ljava/lang/String;
    .local v1, e:Landroid/accounts/AuthenticatorException;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    :catch_e4
    move-exception v10

    goto :goto_8f

    .line 229
    :catch_e6
    move-exception v10

    goto :goto_94

    .line 224
    .local v1, e:Ljava/io/IOException;
    :catch_e8
    move-exception v10

    goto :goto_ad

    .local v1, e:Landroid/accounts/OperationCanceledException;
    :catch_ea
    move-exception v10

    goto :goto_cc

    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_ec
    move-exception v11

    goto :goto_da

    .line 229
    :catch_ee
    move-exception v11

    goto :goto_df

    .line 221
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v3       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v4       #lsid:Ljava/lang/String;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #sid:Ljava/lang/String;
    :catchall_f0
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_d5

    .line 218
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :catch_f3
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_b6

    .line 216
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :catch_f6
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_97

    .line 214
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #out:Ljava/io/ByteArrayOutputStream;
    :catch_f9
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_79
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mLoading:Z

    return v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 170
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 9
    .parameter "uberAuthToken"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 255
    :goto_b
    return-void

    .line 245
    :cond_c
    iput-boolean v4, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mLoading:Z

    .line 246
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->dismissDialog(I)V

    .line 247
    if-eqz p1, :cond_33

    .line 250
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://www.google.com/accounts/TokenAuth?service=writely&source=gmail"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "auth"

    aput-object v3, v2, v4

    aput-object p1, v2, v5

    const-string v3, "continue"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/Urls;->buildUri(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_b

    .line 253
    :cond_33
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v6}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_b
.end method
