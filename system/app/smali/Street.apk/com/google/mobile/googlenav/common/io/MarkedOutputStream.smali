.class public Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field private contents:[B

.field private markers:[I

.field private mumOfContinualOutputFromPreviousExpanding:I

.field private nextContent:I

.field private nextMarker:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->clear()V

    return-void
.end method

.method private static calculateSize(IIII)I
    .registers 9

    sub-int v0, p1, p2

    move v1, p1

    :goto_3
    if-ge v0, p0, :cond_39

    shr-int v0, v1, p3

    if-gtz v0, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] and rightShiftAmount ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    add-int/2addr v0, v1

    sub-int v1, v0, p2

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_3

    :cond_39
    return v1
.end method

.method private expandContentsIfNecessary(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    iget v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    if-lt v0, v1, :cond_10

    iget v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_3c

    add-int/lit8 v0, v3, 0x1

    iget v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    const/16 v2, 0x80

    if-lt v1, v2, :cond_20

    add-int/lit8 v0, v0, 0x1

    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    array-length v1, v1

    iget v2, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, v1, v2, v0}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->calculateSize(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    array-length v1, v1

    if-le v0, v1, :cond_f

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v2, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    iput v3, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    goto :goto_f

    :cond_3c
    move v0, v3

    goto :goto_20
.end method

.method private expandMarkersIfNecessary(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {p1, v0, v1, v3}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->calculateSize(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    array-length v1, v1

    if-le v0, v1, :cond_1a

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    iget v2, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    :cond_1a
    return-void
.end method


# virtual methods
.method public addMarker(I)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->expandMarkersIfNecessary(I)V

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    iget v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    aput p1, v0, v1

    return-void
.end method

.method public availableContent()I
    .registers 2

    iget v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    return v0
.end method

.method public clear()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->reset()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    return-void
.end method

.method public getMarker(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    aget v0, v0, p1

    return v0
.end method

.method public numMarkers()I
    .registers 2

    iget v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    return v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    return-void
.end method

.method public setMarker(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->markers:[I

    aput p2, v0, p1

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public write([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v2, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->nextContent:I

    return-void
.end method

.method public writeContentsTo(Ljava/io/OutputStream;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->contents:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
