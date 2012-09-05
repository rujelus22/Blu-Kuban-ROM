.class public Lorg/columba/ristretto/io/SourceInputStream;
.super Ljava/io/InputStream;
.source "SourceInputStream.java"


# instance fields
.field private pos:I

.field private source:Lorg/columba/ristretto/io/Source;


# direct methods
.method public constructor <init>(Lorg/columba/ristretto/io/Source;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/columba/ristretto/io/SourceInputStream;->source:Lorg/columba/ristretto/io/Source;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/io/SourceInputStream;->pos:I

    .line 60
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
    .line 93
    iget-object v0, p0, Lorg/columba/ristretto/io/SourceInputStream;->source:Lorg/columba/ristretto/io/Source;

    invoke-interface {v0}, Lorg/columba/ristretto/io/Source;->length()I

    move-result v0

    iget v1, p0, Lorg/columba/ristretto/io/SourceInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/columba/ristretto/io/SourceInputStream;->source:Lorg/columba/ristretto/io/Source;

    invoke-interface {v0}, Lorg/columba/ristretto/io/Source;->close()V

    .line 101
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget v0, p0, Lorg/columba/ristretto/io/SourceInputStream;->pos:I

    iget-object v1, p0, Lorg/columba/ristretto/io/SourceInputStream;->source:Lorg/columba/ristretto/io/Source;

    invoke-interface {v1}, Lorg/columba/ristretto/io/Source;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, -0x1

    .line 67
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lorg/columba/ristretto/io/SourceInputStream;->source:Lorg/columba/ristretto/io/Source;

    iget v1, p0, Lorg/columba/ristretto/io/SourceInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/columba/ristretto/io/SourceInputStream;->pos:I

    invoke-interface {v0, v1}, Lorg/columba/ristretto/io/Source;->charAt(I)C

    move-result v0

    goto :goto_b
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

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 76
    invoke-virtual {p0}, Lorg/columba/ristretto/io/SourceInputStream;->read()I

    move-result v1

    .line 77
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 78
    if-nez v0, :cond_d

    move v0, v2

    .line 86
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 84
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 86
    goto :goto_d
.end method
