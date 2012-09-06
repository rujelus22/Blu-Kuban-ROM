.class public final Lcom/twitter/android/network/h;
.super Lcom/twitter/android/network/c;


# instance fields
.field private f:Lorg/apache/http/client/methods/HttpGet;

.field private final g:Lcom/twitter/android/network/a;


# direct methods
.method public constructor <init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpGet;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)V
    .registers 5

    invoke-direct {p0, p1, p2, p4}, Lcom/twitter/android/network/c;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    iput-object p2, p0, Lcom/twitter/android/network/h;->f:Lorg/apache/http/client/methods/HttpGet;

    iput-object p3, p0, Lcom/twitter/android/network/h;->g:Lcom/twitter/android/network/a;

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/network/h;->g:Lcom/twitter/android/network/a;

    iget-object v1, p0, Lcom/twitter/android/network/h;->f:Lorg/apache/http/client/methods/HttpGet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/twitter/android/network/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;JLorg/apache/http/HttpEntity;)V

    return-void
.end method
