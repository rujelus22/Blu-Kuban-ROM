.class public Lorg/columba/ristretto/coder/CanonizeFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "CanonizeFilterInputStream.java"


# static fields
.field private static final CRFOUND:I = 0x1

.field private static final NOOP:I = 0x0

.field private static final PRINTBUFFER:I = 0x3

.field private static final PRINTLF:I = 0x2


# instance fields
.field private buffer:I

.field private mode:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    .line 65
    return-void
.end method


# virtual methods
.method public read()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0xa

    .line 75
    iget v2, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    if-ne v2, v5, :cond_e

    .line 76
    iput v3, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    move v0, v1

    .line 114
    :goto_d
    return v0

    .line 81
    :cond_e
    iget v2, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    if-ne v2, v6, :cond_17

    .line 82
    iput v3, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    .line 83
    iget v0, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->buffer:I

    goto :goto_d

    .line 88
    :cond_17
    iget-object v2, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 91
    .local v0, read:I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_24

    .line 92
    iput v4, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    goto :goto_d

    .line 99
    :cond_24
    if-eq v0, v1, :cond_30

    iget v2, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    if-ne v2, v4, :cond_30

    .line 100
    iput v6, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    .line 101
    iput v0, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->buffer:I

    move v0, v1

    .line 102
    goto :goto_d

    .line 107
    :cond_30
    if-ne v0, v1, :cond_3b

    iget v1, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    if-eq v1, v4, :cond_3b

    .line 108
    iput v5, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    .line 109
    const/16 v0, 0xd

    goto :goto_d

    .line 113
    :cond_3b
    iput v3, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->mode:I

    goto :goto_d
.end method

.method public read([BII)I
    .registers 9
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_18

    .line 124
    iget-object v3, p0, Lorg/columba/ristretto/coder/CanonizeFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 125
    .local v1, read:I
    if-ne v1, v2, :cond_10

    .line 126
    if-nez v0, :cond_f

    move v0, v2

    .line 132
    .end local v0           #i:I
    .end local v1           #read:I
    :cond_f
    :goto_f
    return v0

    .line 129
    .restart local v0       #i:I
    .restart local v1       #read:I
    :cond_10
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #read:I
    :cond_18
    move v0, p3

    .line 132
    goto :goto_f
.end method
