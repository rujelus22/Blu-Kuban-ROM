.class Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/gdata/AndroidGDataClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostRequestCreator"
.end annotation


# instance fields
.field private final mEntity:Lorg/apache/http/HttpEntity;

.field private final mMethodOverride:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .registers 3
    .parameter "methodOverride"
    .parameter "entity"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    .line 86
    return-void
.end method


# virtual methods
.method public createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 5
    .parameter "uri"

    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 90
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    iget-object v1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 91
    const-string v1, "X-HTTP-Method-Override"

    iget-object v2, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mMethodOverride:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_10
    iget-object v1, p0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;->mEntity:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 94
    return-object v0
.end method
