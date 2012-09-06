.class Lacr;
.super Lacs;
.source "GoogleHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field final synthetic a:Laco;

.field private a:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method private constructor <init>(Laco;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lacr;->a:Laco;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lacs;-><init>(Laco;Lorg/apache/http/conn/scheme/SocketFactory;Lacp;)V

    iput-object p2, p0, Lacr;->a:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method

.method synthetic constructor <init>(Laco;Lorg/apache/http/conn/scheme/LayeredSocketFactory;Lacp;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lacr;-><init>(Laco;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

    return-void
.end method


# virtual methods
.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lacr;->a:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
