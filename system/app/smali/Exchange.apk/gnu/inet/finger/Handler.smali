.class public Lgnu/inet/finger/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .registers 2

    .prologue
    .line 57
    const/16 v0, 0x4f

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lgnu/inet/finger/FingerURLConnection;

    invoke-direct {v0, p1}, Lgnu/inet/finger/FingerURLConnection;-><init>(Ljava/net/URL;)V

    return-object v0
.end method