.class public final Lcom/google/api/client/googleapis/json/JsonCContent;
.super Lcom/google/api/client/http/json/JsonHttpContent;
.source "JsonCContent.java"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V
    .registers 3
    .parameter "jsonFactory"
    .parameter "data"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/http/json/JsonHttpContent;-><init>(Lcom/google/api/client/json/JsonFactory;Ljava/lang/Object;)V

    .line 69
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/JsonCContent;->getJsonFactory()Lcom/google/api/client/json/JsonFactory;

    move-result-object v1

    sget-object v2, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    invoke-virtual {v1, p1, v2}, Lcom/google/api/client/json/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lcom/google/api/client/json/JsonEncoding;)Lcom/google/api/client/json/JsonGenerator;

    move-result-object v0

    .line 74
    .local v0, generator:Lcom/google/api/client/json/JsonGenerator;
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->writeStartObject()V

    .line 75
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/google/api/client/googleapis/json/JsonCContent;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/client/json/JsonGenerator;->serialize(Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->writeEndObject()V

    .line 78
    invoke-virtual {v0}, Lcom/google/api/client/json/JsonGenerator;->flush()V

    .line 79
    return-void
.end method
