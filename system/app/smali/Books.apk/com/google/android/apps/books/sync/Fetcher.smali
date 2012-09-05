.class public interface abstract Lcom/google/android/apps/books/sync/Fetcher;
.super Ljava/lang/Object;
.source "Fetcher.java"


# virtual methods
.method public abstract fetch(Landroid/net/Uri;Landroid/accounts/Account;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isAlreadyFetched(Landroid/accounts/Account;Landroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
