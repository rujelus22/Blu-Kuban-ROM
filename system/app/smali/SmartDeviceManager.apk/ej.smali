.class public final Lej;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lei;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lei",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lei;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lei",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lej;->a:Lei;

    .line 28
    return-void
.end method


# virtual methods
.method public final handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p1}, Li;->a(Lorg/apache/http/HttpResponse;)V

    .line 35
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_64

    .line 42
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_21

    .line 45
    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 51
    :cond_21
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    sparse-switch v0, :sswitch_data_6a

    new-instance v2, Ldl;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Ldl;-><init>(ILjava/lang/String;B)V

    move-object v0, v2

    :goto_3b
    throw v0
    :try_end_3c
    .catch Leq; {:try_start_3 .. :try_end_3c} :catch_3c

    .line 53
    :catch_3c
    move-exception v0

    .line 54
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v1, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 40
    :pswitch_43
    :try_start_43
    iget-object v0, p0, Lej;->a:Lei;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lei;->a([Lorg/apache/http/Header;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 51
    :sswitch_56
    new-instance v0, Ldl$b;

    invoke-direct {v0, v1}, Ldl$b;-><init>(Ljava/lang/String;)V

    goto :goto_3b

    :sswitch_5c
    new-instance v2, Ldl$a;

    invoke-direct {v2, v0, v1}, Ldl$a;-><init>(ILjava/lang/String;)V
    :try_end_61
    .catch Leq; {:try_start_43 .. :try_end_61} :catch_3c

    move-object v0, v2

    goto :goto_3b

    .line 35
    nop

    :pswitch_data_64
    .packed-switch 0xc8
        :pswitch_43
    .end packed-switch

    .line 51
    :sswitch_data_6a
    .sparse-switch
        0x190 -> :sswitch_5c
        0x191 -> :sswitch_56
        0x194 -> :sswitch_5c
        0x195 -> :sswitch_5c
        0x196 -> :sswitch_5c
        0x19f -> :sswitch_5c
    .end sparse-switch
.end method
