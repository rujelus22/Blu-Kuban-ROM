.class public final Lcom/google/api/client/http/HttpResponseException;
.super Ljava/io/IOException;
.source "HttpResponseException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field public final response:Lcom/google/api/client/http/HttpResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpResponse;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessage(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    .line 52
    return-void
.end method

.method public static computeMessage(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .registers 6
    .parameter "response"

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, statusMessage:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    .line 58
    .local v1, statusCode:I
    if-nez v2, :cond_f

    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    :goto_e
    return-object v3

    .line 61
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e
.end method


# virtual methods
.method public getResponse()Lcom/google/api/client/http/HttpResponse;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    return-object v0
.end method
