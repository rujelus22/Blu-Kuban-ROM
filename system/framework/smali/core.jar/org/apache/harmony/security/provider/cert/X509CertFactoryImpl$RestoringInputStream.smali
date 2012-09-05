.class Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
.super Ljava/io/InputStream;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoringInputStream"
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x20


# instance fields
.field private bar:I

.field private final buff:[I

.field private end:I

.field private final inStream:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .parameter "inStream"

    .prologue
    const/4 v1, 0x0

    .line 761
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 747
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 754
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 756
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    .line 762
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    .line 763
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
    .line 767
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

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
    .line 772
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 773
    return-void
.end method

.method public mark(I)V
    .registers 4
    .parameter "readlimit"

    .prologue
    const/4 v1, 0x0

    .line 777
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-gez v0, :cond_e

    .line 778
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 779
    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 780
    const/16 v0, 0x1f

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    .line 784
    :goto_d
    return-void

    .line 782
    :cond_e
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    goto :goto_d
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 788
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v1, :cond_37

    .line 808
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    rem-int/lit8 v0, v1, 0x20

    .line 810
    .local v0, cur:I
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    if-ge v0, v1, :cond_17

    .line 812
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 813
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    .line 831
    .end local v0           #cur:I
    :goto_16
    return v1

    .line 816
    .restart local v0       #cur:I
    :cond_17
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    if-eq v0, v1, :cond_34

    .line 819
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    aput v2, v1, v0

    .line 820
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->bar:I

    .line 821
    iget v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 822
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->buff:[I

    aget v1, v1, v0

    goto :goto_16

    .line 827
    :cond_34
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 831
    .end local v0           #cur:I
    :cond_37
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->inStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_16
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

    .line 838
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p3, :cond_d

    .line 839
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->read()I

    move-result v1

    .local v1, read_b:I
    if-ne v1, v2, :cond_e

    .line 840
    if-nez v0, :cond_d

    move v0, v2

    .line 844
    .end local v0           #i:I
    .end local v1           #read_b:I
    :cond_d
    return v0

    .line 842
    .restart local v0       #i:I
    .restart local v1       #read_b:I
    :cond_e
    add-int v3, p2, v0

    int-to-byte v4, v1

    aput-byte v4, p1, v3

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    if-ltz v0, :cond_d

    .line 850
    iget v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->end:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;->pos:I

    .line 855
    return-void

    .line 852
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not reset the stream: position became invalid or stream has not been marked"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
