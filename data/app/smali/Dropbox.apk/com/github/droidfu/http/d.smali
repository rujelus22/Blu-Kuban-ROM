.class public final Lcom/github/droidfu/http/d;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private a:Lorg/apache/http/HttpResponse;

.field private b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 4
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/github/droidfu/http/d;->a:Lorg/apache/http/HttpResponse;

    .line 34
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_16

    .line 36
    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v1}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/github/droidfu/http/d;->b:Ljava/io/InputStream;

    .line 38
    :cond_16
    return-void
.end method
