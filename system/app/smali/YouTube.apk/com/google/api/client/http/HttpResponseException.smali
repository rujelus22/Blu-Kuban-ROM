.class public final Lcom/google/api/client/http/HttpResponseException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field public final response:Lcom/google/api/client/http/o;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/o;)V
    .registers 3
    .parameter

    .prologue
    .line 50
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessage(Lcom/google/api/client/http/o;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/o;

    .line 52
    return-void
.end method

.method public static computeMessage(Lcom/google/api/client/http/o;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/api/client/http/o;->f:Ljava/lang/String;

    .line 57
    iget v1, p0, Lcom/google/api/client/http/o;->e:I

    .line 58
    if-nez v0, :cond_b

    .line 59
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_a
    return-object v0

    .line 61
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public final getResponse()Lcom/google/api/client/http/o;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/o;

    return-object v0
.end method
