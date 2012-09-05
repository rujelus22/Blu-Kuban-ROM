.class public Lorg/columba/ristretto/auth/mechanism/PlainMechanism;
.super Ljava/lang/Object;
.source "PlainMechanism.java"

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
    .registers 10
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
    const/4 v5, 0x0

    .line 59
    invoke-interface {p1}, Lorg/columba/ristretto/auth/AuthenticationServer;->authReceive()[B

    .line 61
    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 62
    .local v2, userBytes:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>([C)V

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 63
    .local v1, passwordBytes:[B
    array-length v3, v2

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 65
    .local v0, command:[B
    aput-byte v5, v0, v5

    .line 66
    const/4 v3, 0x1

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    aput-byte v5, v0, v3

    .line 68
    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    array-length v4, v1

    invoke-static {v1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-interface {p1, v0}, Lorg/columba/ristretto/auth/AuthenticationServer;->authSend([B)V

    .line 71
    return-void
.end method
