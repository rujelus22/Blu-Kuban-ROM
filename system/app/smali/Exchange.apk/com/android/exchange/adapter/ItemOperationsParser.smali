.class public Lcom/android/exchange/adapter/ItemOperationsParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ItemOperationsParser.java"


# instance fields
.field private final mAttachmentLoader:Lcom/android/exchange/adapter/AttachmentLoader;

.field private final mAttachmentOutputStream:Ljava/io/OutputStream;

.field private final mAttachmentSize:I

.field private mStatusCode:I


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/AttachmentLoader;Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 6
    .parameter "loader"
    .parameter "in"
    .parameter "out"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    .line 34
    iput-object p1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentLoader:Lcom/android/exchange/adapter/AttachmentLoader;

    .line 35
    iput-object p3, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentOutputStream:Ljava/io/OutputStream;

    .line 36
    iput p4, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentSize:I

    .line 37
    return-void
.end method

.method private parseFetch()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    :goto_0
    const/16 v0, 0x506

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 58
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v1, 0x50b

    if-ne v0, v1, :cond_13

    .line 59
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->parseProperties()V

    goto :goto_0

    .line 61
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 64
    :cond_17
    return-void
.end method

.method private parseProperties()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    :goto_0
    const/16 v1, 0x50b

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_26

    .line 45
    iget v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x50c

    if-ne v1, v2, :cond_22

    .line 47
    new-instance v0, Lcom/android/exchange/adapter/Base64InputStream;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getInput()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    .local v0, bis:Lcom/android/exchange/adapter/Base64InputStream;
    iget-object v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentLoader:Lcom/android/exchange/adapter/AttachmentLoader;

    iget-object v2, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentOutputStream:Ljava/io/OutputStream;

    iget v3, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mAttachmentSize:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/exchange/adapter/AttachmentLoader;->readChunked(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    .line 51
    .end local v0           #bis:Lcom/android/exchange/adapter/Base64InputStream;
    :cond_22
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 54
    :cond_26
    return-void
.end method

.method private parseResponse()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    :goto_0
    const/16 v0, 0x50e

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 68
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v1, 0x506

    if-ne v0, v1, :cond_13

    .line 69
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->parseFetch()V

    goto :goto_0

    .line 71
    :cond_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_0

    .line 74
    :cond_17
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    return v0
.end method

.method public parse()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/16 v2, 0x505

    if-eq v1, v2, :cond_10

    .line 80
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 82
    :cond_10
    :goto_10
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/ItemOperationsParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_32

    .line 83
    iget v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x50d

    if-ne v1, v2, :cond_24

    .line 85
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->getValueInt()I

    move-result v1

    iput v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->mStatusCode:I

    goto :goto_10

    .line 86
    :cond_24
    iget v1, p0, Lcom/android/exchange/adapter/ItemOperationsParser;->tag:I

    const/16 v2, 0x50e

    if-ne v1, v2, :cond_2e

    .line 87
    invoke-direct {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->parseResponse()V

    goto :goto_10

    .line 89
    :cond_2e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ItemOperationsParser;->skipTag()V

    goto :goto_10

    .line 92
    :cond_32
    return v0
.end method
