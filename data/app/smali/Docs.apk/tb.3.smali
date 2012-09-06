.class public Ltb;
.super Ljava/lang/Object;
.source "DocsUploaderImpl.java"

# interfaces
.implements Lta;


# instance fields
.field private final a:LFX;

.field private final a:LIL;

.field private final a:LtI;

.field a:LtJ;


# direct methods
.method public constructor <init>(LIL;LtI;LFX;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Ltb;->a:LIL;

    .line 506
    iput-object p2, p0, Ltb;->a:LtI;

    .line 507
    iput-object p3, p0, Ltb;->a:LFX;

    .line 508
    return-void
.end method

.method static synthetic a(Ltb;)LFX;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Ltb;->a:LFX;

    return-object v0
.end method

.method static synthetic a(Ltb;)LIL;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Ltb;->a:LIL;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 519
    :try_start_0
    iget-object v0, p0, Ltb;->a:LIL;

    invoke-interface {v0, p1, p2}, LIL;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_29
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_5} :catch_4b
    .catch LJi; {:try_start_0 .. :try_end_5} :catch_6d

    move-result-object v0

    return-object v0

    .line 520
    :catch_7
    move-exception v0

    .line 521
    new-instance v1, LtH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client protocol error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 522
    :catch_29
    move-exception v0

    .line 523
    new-instance v1, LtK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in transmission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LtK;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 525
    :catch_4b
    move-exception v0

    .line 526
    new-instance v1, LtH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 527
    :catch_6d
    move-exception v0

    .line 528
    new-instance v1, LtH;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication problem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LtH;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic a(Ltb;Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ltb;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ltb;)LtI;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Ltb;->a:LtI;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;LtZ;Lua;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    new-instance v0, Ltc;

    invoke-direct {v0, p0, p1, p2, p3}, Ltc;-><init>(Ltb;Ljava/lang/String;LtZ;Lua;)V

    iput-object v0, p0, Ltb;->a:LtJ;

    .line 546
    iget-object v0, p0, Ltb;->a:LtJ;

    invoke-interface {v0}, LtJ;->a()V

    .line 547
    return-void
.end method
