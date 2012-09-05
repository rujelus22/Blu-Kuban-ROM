.class public Lcom/google/api/client/http/json/JsonHttpContent;
.super Ljava/lang/Object;
.source "JsonHttpContent.java"

# interfaces
.implements Lcom/google/api/client/http/HttpContent;


# instance fields
.field public contentType:Ljava/lang/String;

.field public data:Ljava/lang/Object;

.field public jsonFactory:Lcom/google/api/client/json/JsonFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "application/json"

    iput-object v0, p0, Lcom/google/api/client/http/json/JsonHttpContent;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .registers 3

    .prologue
    .line 63
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "application/json"

    return-object v0
.end method

.method public retrySupported()Z
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpContent;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    sget-object v2, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/google/api/client/json/JsonEncoding;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    .line 76
    .local v0, generator:Lcom/google/api/client/json/JsonGenerator;
    iget-object v1, p0, Lcom/google/api/client/http/json/JsonHttpContent;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->flush()V

    .line 78
    return-void
.end method
