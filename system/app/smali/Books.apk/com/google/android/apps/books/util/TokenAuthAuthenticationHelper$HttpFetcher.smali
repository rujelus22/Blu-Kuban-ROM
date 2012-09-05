.class public interface abstract Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper$HttpFetcher;
.super Ljava/lang/Object;
.source "TokenAuthAuthenticationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/TokenAuthAuthenticationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpFetcher"
.end annotation


# virtual methods
.method public abstract getResponseBody(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
