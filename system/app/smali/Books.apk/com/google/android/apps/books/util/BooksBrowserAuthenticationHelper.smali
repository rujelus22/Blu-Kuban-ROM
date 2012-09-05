.class public Lcom/google/android/apps/books/util/BooksBrowserAuthenticationHelper;
.super Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;
.source "BooksBrowserAuthenticationHelper.java"


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "client"
    .parameter "accountName"
    .parameter "continuationUrl"

    .prologue
    .line 19
    const-string v0, "print"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;-><init>(Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$TokenAuthClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
