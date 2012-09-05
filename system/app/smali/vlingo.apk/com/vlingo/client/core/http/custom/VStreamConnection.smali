.class public interface abstract Lcom/vlingo/client/core/http/custom/VStreamConnection;
.super Ljava/lang/Object;
.source "VStreamConnection.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getConnectionDetails()Lcom/vlingo/client/core/net/ConnectionResult;
.end method

.method public abstract getInputStream()Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getOutputStream()Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public abstract startRequest(Lcom/vlingo/client/core/http/custom/HttpRequest;)V
.end method

.method public abstract startResponse(Lcom/vlingo/client/core/http/custom/HttpResponse;)V
.end method
