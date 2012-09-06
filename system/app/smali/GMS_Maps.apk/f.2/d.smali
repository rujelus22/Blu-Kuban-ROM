.class Lf/d;
.super Lf/e;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# instance fields
.field final synthetic a:Lf/a;

.field private c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# direct methods
.method private constructor <init>(Lf/a;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lf/d;->a:Lf/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lf/e;-><init>(Lf/a;Lorg/apache/http/conn/scheme/SocketFactory;Lf/b;)V

    iput-object p2, p0, Lf/d;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    return-void
.end method

.method synthetic constructor <init>(Lf/a;Lorg/apache/http/conn/scheme/LayeredSocketFactory;Lf/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lf/d;-><init>(Lf/a;Lorg/apache/http/conn/scheme/LayeredSocketFactory;)V

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
    .line 159
    iget-object v0, p0, Lf/d;->c:Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
