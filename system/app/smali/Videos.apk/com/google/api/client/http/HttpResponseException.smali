.class public final Lcom/google/api/client/http/HttpResponseException;
.super Ljava/io/IOException;
.source "HttpResponseException.java"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field public final response:Lcom/google/api/client/http/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpResponse;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 36
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessage(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    .line 38
    return-void
.end method

.method public static computeMessage(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/String;
    .registers 6
    .parameter "response"

    .prologue
    .line 42
    iget-object v2, p0, Lcom/google/api/client/http/HttpResponse;->statusMessage:Ljava/lang/String;

    .line 43
    .local v2, statusMessage:Ljava/lang/String;
    iget v1, p0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    .line 44
    .local v1, statusCode:I
    if-nez v2, :cond_b

    .line 45
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    :goto_a
    return-object v3

    .line 47
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
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

    goto :goto_a
.end method
