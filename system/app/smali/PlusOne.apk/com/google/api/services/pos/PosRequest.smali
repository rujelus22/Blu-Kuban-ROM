.class public Lcom/google/api/services/pos/PosRequest;
.super Lcom/google/api/client/http/json/JsonHttpRequest;
.source "PosRequest.java"


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private userIp:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "client"
    .parameter "method"
    .parameter "uriTemplate"
    .parameter "content"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/client/http/json/JsonHttpRequest;-><init>(Lcom/google/api/client/http/json/JsonHttpClient;Lcom/google/api/client/http/HttpMethod;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    return-void
.end method


# virtual methods
.method public setKey(Ljava/lang/String;)Lcom/google/api/services/pos/PosRequest;
    .registers 2
    .parameter "key"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/api/services/pos/PosRequest;->key:Ljava/lang/String;

    .line 144
    return-object p0
.end method
