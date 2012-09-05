.class public abstract Lcom/google/wireless/gdata/client/GDataServiceClient;
.super Ljava/lang/Object;
.source "GDataServiceClient.java"


# instance fields
.field private final gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

.field private final gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;


# direct methods
.method public constructor <init>(Lcom/google/wireless/gdata/client/GDataClient;Lcom/google/wireless/gdata/client/GDataParserFactory;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    .line 25
    iput-object p2, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    .line 26
    return-void
.end method

.method private parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 201
    :try_start_1
    iget-object v1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {v1, p1, p2}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_11

    move-result-object v0

    .line 202
    :try_start_7
    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/GDataParser;->parseStandaloneEntry()Lcom/google/wireless/gdata/data/Entry;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_1b

    move-result-object v1

    .line 204
    if-eqz v0, :cond_10

    .line 205
    invoke-interface {v0}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_10
    return-object v1

    .line 204
    :catchall_11
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_15
    if-eqz v1, :cond_1a

    .line 205
    invoke-interface {v1}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_1a
    throw v0

    .line 204
    :catchall_1b
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_15
.end method


# virtual methods
.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {v0, p3}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/wireless/gdata/client/GDataClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v0

    .line 113
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v0}, Lcom/google/wireless/gdata/client/GDataClient;->createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;

    move-result-object v0

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v0, p1, p2}, Lcom/google/wireless/gdata/client/GDataClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/google/wireless/gdata/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 130
    invoke-direct {p0, p1, v0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method protected getGDataClient()Lcom/google/wireless/gdata/client/GDataClient;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    return-object v0
.end method

.method protected getGDataParserFactory()Lcom/google/wireless/gdata/client/GDataParserFactory;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    return-object v0
.end method

.method public getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v0, p1, p2}, Lcom/google/wireless/gdata/client/GDataClient;->getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v0, p2, p3}, Lcom/google/wireless/gdata/client/GDataClient;->getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {v1, p1, v0}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createParser(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v0

    return-object v0
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 150
    new-instance v0, Lcom/google/wireless/gdata/parser/ParseException;

    const-string v1, "No edit URI -- cannot update."

    invoke-direct {v0, v1}, Lcom/google/wireless/gdata/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_12
    iget-object v1, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataParserFactory:Lcom/google/wireless/gdata/client/GDataParserFactory;

    invoke-interface {v1, p1}, Lcom/google/wireless/gdata/client/GDataParserFactory;->createSerializer(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/serializer/GDataSerializer;

    move-result-object v1

    .line 154
    iget-object v2, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v2, v0, p2, v1}, Lcom/google/wireless/gdata/client/GDataClient;->updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public updateMediaEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/MediaEntry;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata/client/HttpException;,
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No edit URI -- cannot update."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_e
    iget-object v0, p0, Lcom/google/wireless/gdata/client/GDataServiceClient;->gDataClient:Lcom/google/wireless/gdata/client/GDataClient;

    invoke-interface {v0, p1, p4, p2, p3}, Lcom/google/wireless/gdata/client/GDataClient;->updateMediaEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 181
    const-class v1, Lcom/google/wireless/gdata/data/MediaEntry;

    invoke-direct {p0, v1, v0}, Lcom/google/wireless/gdata/client/GDataServiceClient;->parseEntry(Ljava/lang/Class;Ljava/io/InputStream;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p0

    check-cast p0, Lcom/google/wireless/gdata/data/MediaEntry;

    return-object p0
.end method
