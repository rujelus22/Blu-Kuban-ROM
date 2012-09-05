.class public Lmyorg/bouncycastle/asn1/BEROutputStream;
.super Lmyorg/bouncycastle/asn1/DEROutputStream;
.source "BEROutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "os"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    if-nez p1, :cond_6

    .line 14
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/BEROutputStream;->writeNull()V

    .line 22
    .end local p1
    :goto_5
    return-void

    .line 15
    .restart local p1
    :cond_6
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DERObject;

    if-eqz v0, :cond_10

    .line 16
    check-cast p1, Lmyorg/bouncycastle/asn1/DERObject;

    .end local p1
    invoke-virtual {p1, p0}, Lmyorg/bouncycastle/asn1/DERObject;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_5

    .line 17
    .restart local p1
    :cond_10
    instance-of v0, p1, Lmyorg/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_1e

    .line 18
    check-cast p1, Lmyorg/bouncycastle/asn1/DEREncodable;

    .end local p1
    invoke-interface {p1}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmyorg/bouncycastle/asn1/DERObject;->encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_5

    .line 20
    .restart local p1
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "object not BEREncodable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
