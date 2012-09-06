.class Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpClientCookieProvider;
.super Ljava/lang/Object;
.source "FetchResponse.java"

# interfaces
.implements Lcom/google/android/apps/unveil/env/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpClientCookieProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/unveil/env/Provider",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final client:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .registers 2
    .parameter "client"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpClientCookieProvider;->client:Lorg/apache/http/client/HttpClient;

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpClientCookieProvider;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/fetch/FetchResponse$HttpClientCookieProvider;->client:Lorg/apache/http/client/HttpClient;

    invoke-static {v0}, Lcom/google/android/apps/unveil/network/fetch/FetchResponse;->extractCookiesFromClient(Lorg/apache/http/client/HttpClient;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
