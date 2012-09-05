.class final Lcom/a/a/a/a/d/c;
.super Lcom/a/a/a/a/b/h;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/a/a/a/b/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/a/a/a/a/d/c;->a(I)V

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v0, "src"

    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_7
.end method
