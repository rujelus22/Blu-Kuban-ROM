.class public Lorg/columba/ristretto/io/AsyncInputStream;
.super Ljava/io/FilterInputStream;
.source "AsyncInputStream.java"


# instance fields
.field private exception:Ljava/io/IOException;

.field private read:I

.field private semaphore:Lorg/columba/ristretto/concurrency/Semaphore;

.field private size:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .parameter "source"
    .parameter "size"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    new-instance v0, Lorg/columba/ristretto/concurrency/Semaphore;

    invoke-direct {v0}, Lorg/columba/ristretto/concurrency/Semaphore;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->semaphore:Lorg/columba/ristretto/concurrency/Semaphore;

    .line 69
    iput p2, p0, Lorg/columba/ristretto/io/AsyncInputStream;->size:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->read:I

    .line 71
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
    .line 136
    iget v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->size:I

    iget v1, p0, Lorg/columba/ristretto/io/AsyncInputStream;->read:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public exceptionOccured(Ljava/io/IOException;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 102
    iput-object p1, p0, Lorg/columba/ristretto/io/AsyncInputStream;->exception:Ljava/io/IOException;

    .line 103
    return-void
.end method

.method public getSize()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->size:I

    return v0
.end method

.method public grow(I)V
    .registers 3
    .parameter "size"

    .prologue
    .line 111
    iget-object v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->semaphore:Lorg/columba/ristretto/concurrency/Semaphore;

    invoke-virtual {v0, p1}, Lorg/columba/ristretto/concurrency/Semaphore;->release(I)V

    .line 112
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
    const/4 v0, -0x1

    .line 78
    iget v1, p0, Lorg/columba/ristretto/io/AsyncInputStream;->read:I

    iget v2, p0, Lorg/columba/ristretto/io/AsyncInputStream;->size:I

    if-ge v1, v2, :cond_23

    .line 80
    iget-object v1, p0, Lorg/columba/ristretto/io/AsyncInputStream;->semaphore:Lorg/columba/ristretto/concurrency/Semaphore;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Semaphore;->acquire()V

    .line 81
    iget-object v1, p0, Lorg/columba/ristretto/io/AsyncInputStream;->exception:Ljava/io/IOException;

    if-eqz v1, :cond_13

    iget-object v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->exception:Ljava/io/IOException;

    throw v0

    .line 82
    :cond_13
    iget v1, p0, Lorg/columba/ristretto/io/AsyncInputStream;->read:I

    iget v2, p0, Lorg/columba/ristretto/io/AsyncInputStream;->size:I

    if-ge v1, v2, :cond_23

    .line 83
    iget v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->read:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/columba/ristretto/io/AsyncInputStream;->read:I

    .line 85
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 90
    :cond_23
    return v0
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

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 120
    invoke-virtual {p0}, Lorg/columba/ristretto/io/AsyncInputStream;->read()I

    move-result v1

    .line 121
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 122
    if-nez v0, :cond_d

    move v0, v2

    .line 130
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 128
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 130
    goto :goto_d
.end method

.method public setSize(I)V
    .registers 2
    .parameter "size"

    .prologue
    .line 148
    iput p1, p0, Lorg/columba/ristretto/io/AsyncInputStream;->size:I

    .line 149
    return-void
.end method
