.class public Lorg/columba/ristretto/pop3/POP3MultiLineStream;
.super Ljava/io/FilterInputStream;
.source "POP3MultiLineStream.java"


# instance fields
.field private eof:Z

.field private newLine:Z

.field private readCount:I

.field private size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "in"
    .parameter "size"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    iput p2, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->size:I

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->eof:Z

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->newLine:Z

    .line 68
    return-void
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget v0, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->size:I

    iget v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->readCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 76
    iget-boolean v4, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->eof:Z

    if-eqz v4, :cond_9

    move v0, v3

    .line 101
    :goto_8
    return v0

    .line 79
    :cond_9
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 82
    .local v0, read:I
    const/16 v4, 0x2e

    if-ne v0, v4, :cond_33

    iget-boolean v4, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->newLine:Z

    if-eqz v4, :cond_33

    .line 83
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 84
    const/16 v4, 0xd

    if-ne v0, v4, :cond_2a

    .line 86
    iput-boolean v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->eof:Z

    .line 89
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move v0, v3

    .line 91
    goto :goto_8

    .line 94
    :cond_2a
    iget v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->readCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->readCount:I

    .line 95
    iput-boolean v2, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->newLine:Z

    goto :goto_8

    .line 99
    :cond_33
    const/16 v3, 0xa

    if-ne v0, v3, :cond_40

    :goto_37
    iput-boolean v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->newLine:Z

    .line 100
    iget v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->readCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->readCount:I

    goto :goto_8

    :cond_40
    move v1, v2

    .line 99
    goto :goto_37
.end method

.method public read([BII)I
    .registers 9
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 111
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3MultiLineStream;->read()I

    move-result v1

    .line 112
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 113
    if-nez v0, :cond_d

    move v0, v2

    .line 121
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 119
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 121
    goto :goto_d
.end method
