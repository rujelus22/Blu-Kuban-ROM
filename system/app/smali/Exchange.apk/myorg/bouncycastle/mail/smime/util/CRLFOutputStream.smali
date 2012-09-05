.class public Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CRLFOutputStream.java"


# static fields
.field protected static newline:[B


# instance fields
.field protected lastb:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->newline:[B

    .line 47
    sget-object v0, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->newline:[B

    const/4 v1, 0x0

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    .line 48
    sget-object v0, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->newline:[B

    const/4 v1, 0x1

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "outputstream"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    const/4 v0, -0x1

    iput v0, p0, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->lastb:I

    .line 15
    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 4
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0xd

    .line 18
    if-ne p1, v1, :cond_e

    .line 19
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 28
    :cond_b
    :goto_b
    iput p1, p0, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->lastb:I

    .line 29
    return-void

    .line 20
    :cond_e
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1e

    .line 21
    iget v0, p0, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->lastb:I

    if-eq v0, v1, :cond_b

    .line 22
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->newline:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_b

    .line 25
    :cond_1e
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_b
.end method

.method public write([B)V
    .registers 4
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->write([BII)V

    .line 33
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    move v0, p2

    .local v0, i:I
    :goto_1
    add-int v1, p2, p3

    if-eq v0, v1, :cond_d

    .line 37
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;->write(I)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 39
    :cond_d
    return-void
.end method
