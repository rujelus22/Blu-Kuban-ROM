.class Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;
.super Landroid/os/AsyncTask;
.source "TokenAuthAuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->getUberToken(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field private mException:Ljava/io/IOException;

.field final synthetic this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

.field final synthetic val$httpClient:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;

.field final synthetic val$lsid:Ljava/lang/String;

.field final synthetic val$sid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    iput-object p2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->val$sid:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->val$lsid:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->val$httpClient:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->mException:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 7
    .parameter "args"

    .prologue
    .line 168
    invoke-static {}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$400()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "SID"

    iget-object v4, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->val$sid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "LSID"

    iget-object v4, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->val$lsid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, url:Ljava/lang/String;
    :try_start_20
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->val$httpClient:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;

    invoke-interface {v2, v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;->getResponseBody(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_27

    move-result-object v2

    .line 178
    :goto_26
    return-object v2

    .line 173
    :catch_27
    move-exception v0

    .line 174
    .local v0, e:Ljava/io/IOException;
    iput-object v0, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->mException:Ljava/io/IOException;

    .line 175
    const-string v2, "TokenAuthHelper"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 176
    const-string v2, "TokenAuthHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO error while acquiring token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4b
    const/4 v2, 0x0

    goto :goto_26
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 163
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 5
    .parameter "token"

    .prologue
    .line 184
    if-eqz p1, :cond_10

    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->uriForToken(Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v1, p1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$500(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 185
    .local v0, uri:Landroid/net/Uri;
    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->this$0:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;

    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;->mException:Ljava/io/IOException;

    #calls: Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->deliverResult(Landroid/net/Uri;Ljava/lang/Exception;)V
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->access$600(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 186
    return-void

    .line 184
    .end local v0           #uri:Landroid/net/Uri;
    :cond_10
    const/4 v0, 0x0

    goto :goto_8
.end method
