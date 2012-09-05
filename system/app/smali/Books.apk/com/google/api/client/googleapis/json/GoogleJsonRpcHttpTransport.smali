.class public final Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;
.super Ljava/lang/Object;
.source "GoogleJsonRpcHttpTransport.java"


# instance fields
.field public accept:Ljava/lang/String;

.field public contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "application/json-rpc"

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonRpcHttpTransport;->accept:Ljava/lang/String;

    return-void
.end method
