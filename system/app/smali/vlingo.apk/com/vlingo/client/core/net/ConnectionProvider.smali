.class public abstract Lcom/vlingo/client/core/net/ConnectionProvider;
.super Ljava/lang/Object;
.source "ConnectionProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConnection(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .registers 6
    .parameter "url"
    .parameter "mode"
    .parameter "timeouts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/vlingo/client/core/net/ConnectionProvider;->getConnectionWithDetails(Ljava/lang/String;IZ)Lcom/vlingo/client/core/net/ConnectionResult;

    move-result-object v0

    .line 19
    .local v0, result:Lcom/vlingo/client/core/net/ConnectionResult;
    iget-object v1, v0, Lcom/vlingo/client/core/net/ConnectionResult;->connection:Ljavax/microedition/io/Connection;

    return-object v1
.end method

.method public abstract getConnectionWithDetails(Ljava/lang/String;IZ)Lcom/vlingo/client/core/net/ConnectionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
