.class Lacg;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lach;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public a(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 3
    .parameter

    .prologue
    .line 80
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 81
    return-object v0
.end method