.class public interface abstract Lcom/googlex/common/io/HttpConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/io/ConnectionFactory;


# virtual methods
.method public abstract createConnection(Ljava/lang/String;Z)Lcom/googlex/common/io/GoogleHttpConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method
