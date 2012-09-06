.class public final Lcom/twitter/android/network/i;
.super Lcom/twitter/android/network/c;


# instance fields
.field private final f:Lorg/apache/http/client/methods/HttpPost;

.field private final g:Lcom/twitter/android/network/a;


# direct methods
.method public constructor <init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/network/i;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;Lcom/twitter/android/network/l;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpPost;Lcom/twitter/android/network/a;Ljava/io/OutputStream;Lcom/twitter/android/network/l;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/twitter/android/network/c;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;Lcom/twitter/android/network/l;)V

    iput-object p2, p0, Lcom/twitter/android/network/i;->f:Lorg/apache/http/client/methods/HttpPost;

    iput-object p3, p0, Lcom/twitter/android/network/i;->g:Lcom/twitter/android/network/a;

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/network/i;->g:Lcom/twitter/android/network/a;

    iget-object v1, p0, Lcom/twitter/android/network/i;->f:Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/twitter/android/network/i;->f:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/twitter/android/network/a;->a(Lorg/apache/http/client/methods/HttpRequestBase;JLorg/apache/http/HttpEntity;)V

    return-void
.end method
