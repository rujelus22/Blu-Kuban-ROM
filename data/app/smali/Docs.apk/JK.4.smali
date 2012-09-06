.class LJK;
.super Ljava/lang/Object;
.source "HttpIssuerBase.java"


# instance fields
.field private final a:LJO;

.field private final a:Ljava/io/IOException;

.field private final a:Lorg/apache/http/client/methods/HttpUriRequest;

.field private a:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;LJO;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, LJK;->a:Z

    .line 38
    iput-object p1, p0, LJK;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 39
    iput-object p2, p0, LJK;->a:LJO;

    .line 40
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    iput-object v0, p0, LJK;->a:Ljava/io/IOException;

    .line 41
    return-void
.end method


# virtual methods
.method public a()LJO;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, LJK;->a:LJO;

    return-object v0
.end method

.method public a()Ljava/io/IOException;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, LJK;->a:Ljava/io/IOException;

    return-object v0
.end method

.method public a()Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, LJK;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, LJK;->a:Z

    .line 62
    return-void
.end method

.method protected finalize()V
    .registers 5

    .prologue
    .line 66
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 67
    iget-boolean v0, p0, LJK;->a:Z

    if-nez v0, :cond_1d

    .line 68
    const-string v0, "HttpIssuerBase"

    const-string v1, "HttpIssuer request NOT closed."

    new-instance v2, Ljava/io/IOException;

    const-string v3, "HttpIsser request leak."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LJK;->a()Ljava/io/IOException;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    :cond_1d
    return-void
.end method
