.class public Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;
.super Lcom/google/android/plus1/util/BrowserAuthenticationHelper;
.source "TokenAuthAuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$LsidTokenHandler;,
        Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;,
        Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;,
        Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/plus1/util/BrowserAuthenticationHelper",
        "<",
        "Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;",
        ">;"
    }
.end annotation


# static fields
.field private static final ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

.field private static final TOKEN_AUTH_URL:Landroid/net/Uri;


# instance fields
.field protected final mContinuationUrl:Ljava/lang/String;

.field protected final mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string v0, "https://www.google.com/accounts/IssueAuthToken?service=gaia&Session=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    .line 65
    const-string v0, "https://www.google.com/accounts/TokenAuth?"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->TOKEN_AUTH_URL:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "client"
    .parameter "accountName"
    .parameter "continuationUrl"
    .parameter "serviceName"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/plus1/util/BrowserAuthenticationHelper;-><init>(Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;)V

    .line 88
    iput-object p3, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mContinuationUrl:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mServiceName:Ljava/lang/String;

    .line 90
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->getSidToken(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private abort()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0, v0}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->deliverResult(Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->abort()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->getUberToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->ISSUE_AUTH_TOKEN_URL:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->uriForToken(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->deliverResult(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method private deliverResult(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 4
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    check-cast v0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;->finished(Landroid/net/Uri;Ljava/lang/Exception;)V

    .line 206
    :cond_b
    return-void
.end method

.method private getSidToken(Ljava/lang/String;)V
    .registers 9
    .parameter "accountName"

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v1, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, p1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .local v1, account:Landroid/accounts/Account;
    new-instance v5, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;-><init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Landroid/accounts/Account;)V

    .line 96
    .local v5, callback:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$SidTokenHandler;
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    check-cast v2, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;

    invoke-interface {v2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 97
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v2, "SID"

    iget-object v4, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    check-cast v4, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;

    invoke-interface {v4}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 98
    return-void
.end method

.method private getUberToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sid"
    .parameter "lsid"

    .prologue
    .line 157
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    if-nez v2, :cond_5

    .line 191
    :cond_4
    :goto_4
    return-void

    .line 161
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mClient:Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;

    check-cast v2, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;

    invoke-interface {v2}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;->getHttpFetcher()Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;

    move-result-object v0

    .line 162
    .local v0, httpClient:Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;
    if-eqz v0, :cond_4

    .line 163
    new-instance v1, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$1;-><init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;)V

    .line 189
    .local v1, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4
.end method

.method private uriForToken(Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter "token"

    .prologue
    .line 194
    sget-object v1, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->TOKEN_AUTH_URL:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "auth"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "continue"

    iget-object v3, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mContinuationUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "service"

    iget-object v3, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "source"

    iget-object v3, p0, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 199
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
