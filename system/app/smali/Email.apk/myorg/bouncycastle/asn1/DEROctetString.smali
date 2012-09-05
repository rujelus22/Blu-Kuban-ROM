.class public Lmyorg/bouncycastle/asn1/DEROctetString;
.super Lmyorg/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;-><init>(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 16
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "string"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 12
    return-void
.end method

.method static encode(Lmyorg/bouncycastle/asn1/DEROutputStream;[B)V
    .registers 3
    .parameter "derOut"
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 24
    return-void
.end method


# virtual methods
.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x4

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 20
    return-void
.end method
