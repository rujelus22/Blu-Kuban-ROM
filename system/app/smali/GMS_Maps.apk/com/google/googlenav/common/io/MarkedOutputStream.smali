.class public Lcom/google/googlenav/common/io/MarkedOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final CONTENT_TIME_1_2_5_EXPAND_THREHOLD:I = 0x80

.field private static final CONTENT_TIME_1_5_EXPAND_THREHOLD:I = 0x40

.field private static final MINIMUM_SIZE:I = 0x10


# instance fields
.field private contents:[B

.field private markers:[I

.field private mumOfContinualOutputFromPreviousExpanding:I

.field private nextContent:I

.field private nextMarker:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 43
    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    .line 48
    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    .line 51
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->clear()V

    .line 52
    return-void
.end method

.method private static calculateSize(IIII)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    sub-int v0, p1, p2

    .line 87
    :goto_2
    if-ge v0, p0, :cond_35

    .line 88
    shr-int v0, p1, p3

    .line 89
    if-gtz v0, :cond_31

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect size ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 93
    :cond_31
    add-int/2addr p1, v0

    .line 94
    sub-int v0, p1, p2

    .line 95
    goto :goto_2

    .line 96
    :cond_35
    return p1
.end method

.method private expandContentsIfNecessary(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    array-length v0, v0

    sub-int/2addr v0, p1

    iget v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    if-lt v0, v2, :cond_10

    .line 146
    iget v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    .line 163
    :cond_f
    :goto_f
    return-void

    .line 150
    :cond_10
    iget v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    const/16 v2, 0x40

    if-lt v0, v2, :cond_3a

    .line 151
    const/4 v0, 0x1

    .line 152
    iget v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    const/16 v3, 0x80

    if-lt v2, v3, :cond_1e

    .line 153
    const/4 v0, 0x2

    .line 156
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    iget v3, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, v2, v3, v0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->calculateSize(IIII)I

    move-result v0

    .line 157
    iget-object v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    array-length v2, v2

    if-le v0, v2, :cond_f

    .line 158
    new-array v0, v0, [B

    .line 159
    iget-object v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v3, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iput-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    .line 161
    iput v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    goto :goto_f

    :cond_3a
    move v0, v1

    goto :goto_1e
.end method

.method private expandMarkersIfNecessary(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {p1, v0, v1, v3}, Lcom/google/googlenav/common/io/MarkedOutputStream;->calculateSize(IIII)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    array-length v1, v1

    if-le v0, v1, :cond_1a

    .line 102
    new-array v0, v0, [I

    .line 103
    iget-object v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    iget v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iput-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    .line 106
    :cond_1a
    return-void
.end method


# virtual methods
.method public addMarker(I)V
    .registers 5
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->expandMarkersIfNecessary(I)V

    .line 128
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    iget v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    aput p1, v0, v1

    .line 129
    return-void
.end method

.method public availableContent()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->reset()V

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    .line 73
    return-void
.end method

.method public getMarker(I)I
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    aget v0, v0, p1

    return v0
.end method

.method public numMarkers()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    .line 59
    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextMarker:I

    .line 60
    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->mumOfContinualOutputFromPreviousExpanding:I

    .line 61
    return-void
.end method

.method public setMarker(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->markers:[I

    aput p2, v0, p1

    .line 142
    return-void
.end method

.method public write(I)V
    .registers 5
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 177
    return-void
.end method

.method public write([B)V
    .registers 6
    .parameter

    .prologue
    .line 181
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 182
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v2, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    .line 184
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-direct {p0, p3}, Lcom/google/googlenav/common/io/MarkedOutputStream;->expandContentsIfNecessary(I)V

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    iget v1, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    iget v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->nextContent:I

    .line 191
    return-void
.end method

.method public writeContentsTo(Ljava/io/OutputStream;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/googlenav/common/io/MarkedOutputStream;->contents:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 171
    return-void
.end method
