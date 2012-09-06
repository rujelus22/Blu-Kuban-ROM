.class public LJM;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "HttpIssuerEntity.java"


# instance fields
.field private a:LJN;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 3
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, LJM;->a:LJN;

    .line 25
    return-void
.end method

.method private b()LJN;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, LJM;->a:LJN;

    if-nez v0, :cond_7

    .line 41
    invoke-virtual {p0}, LJM;->a()LJN;

    .line 43
    :cond_7
    iget-object v0, p0, LJM;->a:LJN;

    return-object v0
.end method


# virtual methods
.method public a()LJN;
    .registers 3

    .prologue
    .line 29
    new-instance v0, LJN;

    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, LJN;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, LJM;->a:LJN;

    .line 30
    iget-object v0, p0, LJM;->a:LJN;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LJM;->a:LJN;

    if-eqz v0, :cond_b

    .line 52
    iget-object v0, p0, LJM;->a:LJN;

    invoke-virtual {v0}, LJN;->a()Z

    move-result v0

    .line 54
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public consumeContent()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, LJM;->b()LJN;

    move-result-object v1

    .line 61
    :try_start_4
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 62
    if-eqz v1, :cond_c

    .line 63
    invoke-virtual {v1}, LJN;->b()V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_12

    .line 66
    :cond_c
    if-eqz v1, :cond_11

    .line 67
    invoke-virtual {v1}, LJN;->a()V

    .line 70
    :cond_11
    return-void

    .line 66
    :catchall_12
    move-exception v0

    if-eqz v1, :cond_18

    .line 67
    invoke-virtual {v1}, LJN;->a()V

    :cond_18
    throw v0
.end method

.method public synthetic getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, LJM;->a()LJN;

    move-result-object v0

    return-object v0
.end method
