.class public Lorg/columba/ristretto/coder/CRLFFilterInputStream;
.super Ljava/io/FilterInputStream;
.source "CRLFFilterInputStream.java"


# instance fields
.field protected buffer:[B

.field protected count:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 50
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/columba/ristretto/coder/CRLFFilterInputStream;->buffer:[B

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/coder/CRLFFilterInputStream;->pos:I

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/columba/ristretto/coder/CRLFFilterInputStream;->count:I

    .line 61
    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 68
    iget-object v2, p0, Lorg/columba/ristretto/coder/CRLFFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 69
    .local v0, next:I
    :goto_7
    const/16 v2, 0xd

    if-eq v0, v2, :cond_f

    const/16 v2, 0xa

    if-ne v0, v2, :cond_16

    .line 70
    :cond_f
    iget-object v2, p0, Lorg/columba/ristretto/coder/CRLFFilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_7

    .line 72
    :cond_16
    if-ne v0, v1, :cond_19

    move v0, v1

    .line 74
    .end local v0           #next:I
    :cond_19
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

    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_16

    .line 83
    invoke-virtual {p0}, Lorg/columba/ristretto/coder/CRLFFilterInputStream;->read()I

    move-result v1

    .line 84
    .local v1, next:I
    if-ne v1, v2, :cond_e

    .line 85
    if-nez v0, :cond_d

    move v0, v2

    .line 93
    .end local v0           #i:I
    .end local v1           #next:I
    :cond_d
    :goto_d
    return v0

    .line 91
    .restart local v0       #i:I
    .restart local v1       #next:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v1           #next:I
    :cond_16
    move v0, p3

    .line 93
    goto :goto_d
.end method
