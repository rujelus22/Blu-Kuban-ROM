.class public Lmyorg/bouncycastle/asn1/DERBoolean;
.super Lmyorg/bouncycastle/asn1/ASN1Object;
.source "DERBoolean.java"


# static fields
.field public static final FALSE:Lmyorg/bouncycastle/asn1/DERBoolean;

.field public static final TRUE:Lmyorg/bouncycastle/asn1/DERBoolean;


# instance fields
.field value:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lmyorg/bouncycastle/asn1/DERBoolean;->FALSE:Lmyorg/bouncycastle/asn1/DERBoolean;

    .line 10
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lmyorg/bouncycastle/asn1/DERBoolean;->TRUE:Lmyorg/bouncycastle/asn1/DERBoolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .parameter "value"

    .prologue
    .line 58
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 59
    if-eqz p1, :cond_9

    const/4 v0, -0x1

    :goto_6
    iput-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    .line 60
    return-void

    .line 59
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "value"

    .prologue
    .line 54
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;
    .registers 4
    .parameter "obj"

    .prologue
    .line 18
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;

    if-eqz v0, :cond_9

    .line 19
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/DERBoolean;

    .line 27
    .end local p0
    :goto_8
    return-object p0

    .line 22
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 23
    new-instance v0, Lmyorg/bouncycastle/asn1/DERBoolean;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERBoolean;-><init>([B)V

    move-object p0, v0

    goto :goto_8

    .line 26
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 27
    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object p0

    goto :goto_8

    .line 30
    .restart local p0
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/DERBoolean;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 51
    invoke-virtual {p0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERBoolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected asn1Equals(Lmyorg/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 75
    if-eqz p1, :cond_7

    instance-of v1, p1, Lmyorg/bouncycastle/asn1/DERBoolean;

    if-nez v1, :cond_8

    .line 79
    .end local p1
    :cond_7
    :goto_7
    return v0

    .restart local p1
    :cond_8
    iget-byte v1, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    check-cast p1, Lmyorg/bouncycastle/asn1/DERBoolean;

    .end local p1
    iget-byte v2, p1, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method encode(Lmyorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 67
    new-array v0, v3, [B

    .line 69
    .local v0, bytes:[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    aput-byte v2, v0, v1

    .line 71
    invoke-virtual {p1, v3, v0}, Lmyorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 72
    return-void
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 83
    iget-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    return v0
.end method

.method public isTrue()Z
    .registers 2

    .prologue
    .line 63
    iget-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-byte v0, p0, Lmyorg/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_7

    const-string v0, "TRUE"

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "FALSE"

    goto :goto_6
.end method
