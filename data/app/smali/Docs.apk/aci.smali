.class Laci;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lach;


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Laci;->a:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Laci;->a:Lorg/apache/http/HttpEntity;

    .line 91
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 5
    .parameter

    .prologue
    .line 94
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 95
    iget-object v1, p0, Laci;->a:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 96
    const-string v1, "X-HTTP-Method-Override"

    iget-object v2, p0, Laci;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_10
    iget-object v1, p0, Laci;->a:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 99
    return-object v0
.end method
