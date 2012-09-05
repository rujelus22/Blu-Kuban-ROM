.class final Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AuthorityKeyIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 107
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier$1;->setOptional(I)V

    .line 108
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v3, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 113
    .local v2, values:[Ljava/lang/Object;
    const/4 v3, 0x2

    aget-object v3, v2, v3

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 114
    .local v1, enc:[B
    const/4 v0, 0x0

    .line 115
    .local v0, authorityCertSerialNumber:Ljava/math/BigInteger;
    if-eqz v1, :cond_17

    .line 116
    new-instance v0, Ljava/math/BigInteger;

    .end local v0           #authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 119
    .restart local v0       #authorityCertSerialNumber:Ljava/math/BigInteger;
    :cond_17
    new-instance v5, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, [B

    check-cast v3, [B

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-direct {v5, v3, v4, v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;-><init>([BLorg/apache/harmony/security/x509/GeneralNames;Ljava/math/BigInteger;)V

    return-object v5
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 6
    .parameter "object"
    .parameter "values"

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    .line 125
    .local v0, akid:Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;
    const/4 v1, 0x0

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->keyIdentifier:[B
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$000(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 126
    const/4 v1, 0x1

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertIssuer:Lorg/apache/harmony/security/x509/GeneralNames;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$100(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v2

    aput-object v2, p2, v1

    .line 127
    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$200(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 128
    const/4 v1, 0x2

    #getter for: Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->authorityCertSerialNumber:Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->access$200(Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    aput-object v2, p2, v1

    .line 130
    :cond_22
    return-void
.end method
