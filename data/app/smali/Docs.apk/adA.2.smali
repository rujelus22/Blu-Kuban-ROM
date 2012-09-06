.class final LadA;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPatch.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 24
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, LadA;->setURI(Ljava/net/URI;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    const-string v0, "PATCH"

    return-object v0
.end method
