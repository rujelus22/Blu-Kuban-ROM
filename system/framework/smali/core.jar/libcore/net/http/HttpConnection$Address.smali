.class public final Llibcore/net/http/HttpConnection$Address;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Address"
.end annotation


# instance fields
.field private final proxy:Ljava/net/Proxy;

.field private final requiresTunnel:Z

.field private final socketHost:Ljava/lang/String;

.field private final socketPort:I

.field private final uriHost:Ljava/lang/String;

.field private final uriPort:I


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 295
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    .line 298
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v0

    iput v0, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    .line 300
    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iput-object v0, p0, Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 301
    iget v0, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    iput v0, p0, Llibcore/net/http/HttpConnection$Address;->socketPort:I

    .line 302
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/Proxy;Z)V
    .registers 9
    .parameter "uri"
    .parameter "proxy"
    .parameter "requiresTunnel"

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    .line 312
    iput-boolean p3, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    .line 313
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Ljava/net/URI;->getEffectivePort()I

    move-result v2

    iput v2, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    .line 316
    invoke-virtual {p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    .line 317
    .local v0, proxyAddress:Ljava/net/SocketAddress;
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_38

    .line 318
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Proxy.address() is not an InetSocketAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_38
    move-object v1, v0

    .line 321
    check-cast v1, Ljava/net/InetSocketAddress;

    .line 322
    .local v1, proxySocketAddress:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    .line 323
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Llibcore/net/http/HttpConnection$Address;->socketPort:I

    .line 324
    return-void
.end method

.method static synthetic access$000(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 287
    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->socketHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Llibcore/net/http/HttpConnection$Address;)Ljava/net/Proxy;
    .registers 2
    .parameter "x0"

    .prologue
    .line 287
    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic access$200(Llibcore/net/http/HttpConnection$Address;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 287
    iget v0, p0, Llibcore/net/http/HttpConnection$Address;->socketPort:I

    return v0
.end method

.method static synthetic access$300(Llibcore/net/http/HttpConnection$Address;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 287
    iget-boolean v0, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    return v0
.end method

.method static synthetic access$400(Llibcore/net/http/HttpConnection$Address;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 287
    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Llibcore/net/http/HttpConnection$Address;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 287
    iget v0, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    return v0
.end method


# virtual methods
.method public connect(I)Llibcore/net/http/HttpConnection;
    .registers 4
    .parameter "connectTimeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Llibcore/net/http/HttpConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Llibcore/net/http/HttpConnection;-><init>(Llibcore/net/http/HttpConnection$Address;ILlibcore/net/http/HttpConnection$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 331
    instance-of v2, p1, Llibcore/net/http/HttpConnection$Address;

    if-eqz v2, :cond_29

    move-object v0, p1

    .line 332
    check-cast v0, Llibcore/net/http/HttpConnection$Address;

    .line 333
    .local v0, that:Llibcore/net/http/HttpConnection$Address;
    iget-object v2, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    iget-object v3, v0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    iget v3, v0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    if-ne v2, v3, :cond_29

    iget-boolean v2, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    iget-boolean v3, v0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-ne v2, v3, :cond_29

    const/4 v1, 0x1

    .line 338
    .end local v0           #that:Llibcore/net/http/HttpConnection$Address;
    :cond_29
    return v1
.end method

.method public getProxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 342
    const/16 v0, 0x11

    .line 343
    .local v0, result:I
    iget-object v1, p0, Llibcore/net/http/HttpConnection$Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 344
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Llibcore/net/http/HttpConnection$Address;->uriPort:I

    add-int v0, v1, v3

    .line 345
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_29

    iget-object v1, p0, Llibcore/net/http/HttpConnection$Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_1d
    add-int v0, v3, v1

    .line 346
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v3, p0, Llibcore/net/http/HttpConnection$Address;->requiresTunnel:Z

    if-eqz v3, :cond_26

    const/4 v2, 0x1

    :cond_26
    add-int v0, v1, v2

    .line 347
    return v0

    :cond_29
    move v1, v2

    .line 345
    goto :goto_1d
.end method
