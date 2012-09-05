.class public Lcom/google/api/client/googleapis/services/GoogleClient$Builder;
.super Lcom/google/api/client/http/json/JsonHttpClient$Builder;
.source "GoogleClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/services/GoogleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V
    .registers 4
    .parameter "transport"
    .parameter "jsonFactory"
    .parameter "baseUrl"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/google/api/client/http/json/JsonHttpClient$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/GenericUrl;)V

    .line 147
    return-void
.end method
