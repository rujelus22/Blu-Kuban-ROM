.class public Lorg/columba/ristretto/io/SequenceInputStream;
.super Ljava/io/InputStream;
.source "SequenceInputStream.java"


# instance fields
.field index:I

.field streams:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .registers 5
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 111
    iget-object v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    add-int/2addr v1, v2

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 113
    :cond_1a
    return v1
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, it:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_6

    .line 124
    :cond_16
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
    .line 79
    iget-object v1, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    iget v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 80
    .local v0, read:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_31

    iget v1, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    iget-object v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_31

    .line 81
    iget v1, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    .line 82
    iget-object v1, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    iget v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 85
    :cond_31
    return v0
.end method

.method public read([BII)I
    .registers 10
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 92
    iget-object v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    iget v3, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 94
    .local v1, read:I
    :cond_f
    :goto_f
    if-eq v1, p3, :cond_3c

    iget v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    iget-object v3, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3c

    .line 95
    if-ne v1, v5, :cond_20

    const/4 v1, 0x0

    .line 96
    :cond_20
    iget v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    .line 97
    iget-object v2, p0, Lorg/columba/ristretto/io/SequenceInputStream;->streams:Ljava/util/List;

    iget v3, p0, Lorg/columba/ristretto/io/SequenceInputStream;->index:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 99
    .local v0, nextread:I
    if-eq v0, v5, :cond_f

    add-int/2addr v1, v0

    goto :goto_f

    .line 102
    .end local v0           #nextread:I
    :cond_3c
    return v1
.end method
