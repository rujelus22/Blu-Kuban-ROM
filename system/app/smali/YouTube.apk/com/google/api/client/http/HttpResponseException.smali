.class public Lcom/google/api/client/http/HttpResponseException;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x1a083fdabb32a37bL


# instance fields
.field private final transient headers:Lcom/google/api/client/http/j;

.field private final transient response:Lcom/google/api/client/http/p;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/p;)V
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageWithContent(Lcom/google/api/client/http/p;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/p;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/p;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->d()I

    move-result v0

    iput v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    .line 71
    invoke-virtual {p1}, Lcom/google/api/client/http/p;->b()Lcom/google/api/client/http/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->headers:Lcom/google/api/client/http/j;

    .line 72
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/p;

    .line 73
    return-void
.end method

.method public static computeMessage(Lcom/google/api/client/http/p;)Ljava/lang/String;
    .registers 2
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 110
    invoke-static {p0}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/p;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeMessageBuffer(Lcom/google/api/client/http/p;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->d()I

    move-result v1

    .line 139
    if-eqz v1, :cond_e

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    :cond_e
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->e()Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_1e

    .line 144
    if-eqz v1, :cond_1b

    .line 145
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_1e
    return-object v0
.end method

.method private static computeMessageWithContent(Lcom/google/api/client/http/p;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 117
    invoke-static {p0}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/p;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    const-string v0, ""

    .line 120
    :try_start_6
    invoke-virtual {p0}, Lcom/google/api/client/http/p;->h()Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_1e

    move-result-object v0

    .line 125
    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_19

    .line 126
    sget-object v2, Lcom/google/api/client/util/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 121
    :catch_1e
    move-exception v2

    .line 123
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a
.end method


# virtual methods
.method public getHeaders()Lcom/google/api/client/http/j;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->headers:Lcom/google/api/client/http/j;

    return-object v0
.end method

.method public final getResponse()Lcom/google/api/client/http/p;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/p;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    return v0
.end method

.method public isSuccessStatusCode()Z
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/q;->a(I)Z

    move-result v0

    return v0
.end method
