.class public abstract Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelperClient;
.super Ljava/lang/Object;
.source "BooksBrowserAuthenticationHelperClient.java"

# interfaces
.implements Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract finished(Landroid/content/Intent;Ljava/lang/Exception;)V
.end method

.method public finished(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 5
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 27
    if-eqz p1, :cond_12

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 29
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    :goto_e
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelperClient;->finished(Landroid/content/Intent;Ljava/lang/Exception;)V

    .line 34
    return-void

    .line 31
    .end local v0           #intent:Landroid/content/Intent;
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_e
.end method

.method public getHttpFetcher()Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/apps/books/util/BooksHttpFetcher;

    invoke-virtual {p0}, Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelperClient;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/util/BooksHttpFetcher;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
