.class public Lorg/columba/ristretto/auth/mechanism/LoginMechanism;
.super Ljava/lang/Object;
.source "LoginMechanism.java"

# interfaces
.implements Lorg/columba/ristretto/auth/AuthenticationMechanism;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/columba/ristretto/auth/AuthenticationServer;Ljava/lang/String;[C)V
    .registers 6
    .parameter "server"
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Lorg/columba/ristretto/auth/AuthenticationServer;->authReceive()[B

    .line 61
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/columba/ristretto/auth/AuthenticationServer;->authSend([B)V

    .line 63
    invoke-interface {p1}, Lorg/columba/ristretto/auth/AuthenticationServer;->authReceive()[B

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>([C)V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/columba/ristretto/auth/AuthenticationServer;->authSend([B)V

    .line 66
    return-void
.end method
