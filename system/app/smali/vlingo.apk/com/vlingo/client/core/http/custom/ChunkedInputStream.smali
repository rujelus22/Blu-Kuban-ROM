.class public Lcom/vlingo/client/core/http/custom/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# static fields
.field private static final READ_BYTE:I = 0x0

.field private static final READ_CR:I = 0x1

.field private static final READ_EOF:I = -0x1

.field private static final READ_LF:I = 0x2


# instance fields
.field private currChunkRead:I

.field private currChunkSize:I

.field private ivIn:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkSize:I

    .line 23
    iput-object p1, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->ivIn:Ljava/io/InputStream;

    .line 24
    return-void
.end method

.method private ensureChunkAvailable()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget v3, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkSize:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    iget v3, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkRead:I

    iget v4, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkSize:I

    if-lt v3, v4, :cond_38

    .line 43
    :cond_d
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, sizeStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f

    .line 45
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Missing chunk header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1f
    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkSize:I

    .line 48
    iput v2, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkRead:I

    .line 50
    iget v3, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkSize:I

    if-nez v3, :cond_34

    .line 52
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->readLine()Ljava/lang/String;

    .line 54
    :cond_34
    iget v3, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkSize:I

    if-lez v3, :cond_39

    .line 56
    .end local v0           #sizeStr:Ljava/lang/String;
    :cond_38
    :goto_38
    return v1

    .restart local v0       #sizeStr:Ljava/lang/String;
    :cond_39
    move v1, v2

    .line 54
    goto :goto_38
.end method

.method private readLine()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v1, buff:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 68
    .local v2, state:I
    :cond_6
    iget-object v3, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->ivIn:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 69
    .local v0, b:I
    sparse-switch v0, :sswitch_data_2c

    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 90
    :goto_13
    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 92
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 71
    :sswitch_1e
    if-nez v2, :cond_27

    .line 72
    const/4 v2, 0x1

    .line 77
    :goto_21
    :sswitch_21
    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 78
    const/4 v2, 0x2

    .line 83
    :goto_25
    :sswitch_25
    const/4 v2, -0x1

    .line 84
    goto :goto_13

    .line 74
    :cond_27
    const/4 v2, 0x0

    goto :goto_21

    .line 80
    :cond_29
    const/4 v2, 0x0

    goto :goto_25

    .line 69
    nop

    :sswitch_data_2c
    .sparse-switch
        -0x1 -> :sswitch_25
        0xa -> :sswitch_21
        0xd -> :sswitch_1e
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->ivIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 98
    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->ensureChunkAvailable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 28
    const/4 v0, -0x1

    .line 32
    :goto_7
    return v0

    .line 30
    :cond_8
    iget-object v1, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->ivIn:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 31
    .local v0, b:I
    iget v1, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vlingo/client/core/http/custom/ChunkedInputStream;->currChunkRead:I

    goto :goto_7
.end method
