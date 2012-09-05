.class public Lmyorg/bouncycastle/asn1/DERUTF8String;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERUTF8String.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 59
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 60
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    .line 61
    return-void
.end method

.method constructor <init>([B)V
    .registers 3
    .parameter "string"

    .prologue
    .line 52
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 53
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .parameter "o"

    .prologue
    .line 76
    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERUTF8String;

    if-nez v1, :cond_6

    .line 77
    const/4 v1, 0x0

    .line 82
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 80
    check-cast v0, Lmyorg/bouncycastle/asn1/DERUTF8String;

    .line 82
    .local v0, s:Lmyorg/bouncycastle/asn1/DERUTF8String;
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_5
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    const/16 v0, 0xc

    iget-object v1, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    invoke-static {v1}, Lmyorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 87
    return-void
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-object v0
.end method
