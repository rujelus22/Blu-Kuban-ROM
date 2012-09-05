.class public interface abstract Lorg/columba/ristretto/auth/AuthenticationMechanism;
.super Ljava/lang/Object;
.source "AuthenticationMechanism.java"


# virtual methods
.method public abstract authenticate(Lorg/columba/ristretto/auth/AuthenticationServer;Ljava/lang/String;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/auth/AuthenticationException;
        }
    .end annotation
.end method
