.class final Lcom/googlex/masf/services/RlzService$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/masf/protocol/Request$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlex/masf/services/RlzService;->updateRlz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestCompleted(Lcom/googlex/masf/protocol/Request;Lcom/googlex/masf/protocol/Response;)V
    .registers 5

    invoke-virtual {p2}, Lcom/googlex/masf/protocol/Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_18

    :try_start_8
    invoke-virtual {p2}, Lcom/googlex/masf/protocol/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/masf/services/RlzService;->setRlz(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_19

    :cond_18
    :goto_18
    return-void

    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method public requestFailed(Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method
