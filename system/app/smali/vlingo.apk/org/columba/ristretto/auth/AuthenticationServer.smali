.class public interface abstract Lorg/columba/ristretto/auth/AuthenticationServer;
.super Ljava/lang/Object;
.source "AuthenticationServer.java"


# virtual methods
.method public abstract authReceive()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract authSend([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHostName()Ljava/lang/String;
.end method

.method public abstract getService()Ljava/lang/String;
.end method
