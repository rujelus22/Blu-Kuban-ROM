.class public interface abstract Ljavax/microedition/io/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFile()Ljava/lang/String;
.end method

.method public abstract getHeaderField(I)Ljava/lang/String;
.end method

.method public abstract getHeaderFieldKey(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLength()I
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract openDataInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openDataOutputStream()Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setRequestMethod(Ljava/lang/String;)V
.end method

.method public abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startRequest(Lcom/vlingo/client/core/http/custom/HttpRequest;)V
.end method

.method public abstract startResponse(Lcom/vlingo/client/core/http/custom/HttpResponse;)V
.end method
