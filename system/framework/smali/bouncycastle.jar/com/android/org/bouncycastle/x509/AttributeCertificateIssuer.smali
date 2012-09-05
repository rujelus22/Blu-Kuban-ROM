.class public Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
.super Ljava/lang/Object;
.source "AttributeCertificateIssuer.java"

# interfaces
.implements Ljava/security/cert/CertSelector;
.implements Lcom/android/org/bouncycastle/util/Selector;


# instance fields
.field final form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V
    .registers 3
    .parameter "issuer"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getIssuer()Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V
    .registers 6
    .parameter "principal"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v3, p1}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;-><init>(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;-><init>(Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 4
    .parameter "principal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/jce/X509Principal;)V

    .line 45
    return-void
.end method

.method private getNames()[Ljava/lang/Object;
    .registers 8

    .prologue
    .line 56
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_3c

    .line 58
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    .line 65
    .local v3, name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :goto_e
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 67
    .local v4, names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v4

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    .local v2, l:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_19
    array-length v5, v4

    if-eq v1, v5, :cond_4a

    .line 71
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_39

    .line 75
    :try_start_25
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_39} :catch_41

    .line 69
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 62
    .end local v1           #i:I
    .end local v2           #l:Ljava/util/List;
    .end local v3           #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    .end local v4           #names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_3c
    iget-object v3, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v3, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .restart local v3       #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    goto :goto_e

    .line 78
    .restart local v1       #i:I
    .restart local v2       #l:Ljava/util/List;
    .restart local v4       #names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_41
    move-exception v0

    .line 80
    .local v0, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "badly formed Name object"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    .end local v0           #e:Ljava/io/IOException;
    :cond_4a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method private matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z
    .registers 8
    .parameter "subject"
    .parameter "targets"

    .prologue
    .line 112
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 114
    .local v2, names:[Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    array-length v3, v2

    if-eq v1, v3, :cond_2c

    .line 116
    aget-object v0, v2, v1

    .line 118
    .local v0, gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_29

    .line 122
    :try_start_11
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/GeneralName;->getName()Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-direct {v4, v3}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v4, p1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_28

    move-result v3

    if-eqz v3, :cond_29

    .line 124
    const/4 v3, 0x1

    .line 133
    .end local v0           #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :goto_27
    return v3

    .line 127
    .restart local v0       #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :catch_28
    move-exception v3

    .line 114
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 133
    .end local v0           #gn:Lcom/android/org/bouncycastle/asn1/x509/GeneralName;
    :cond_2c
    const/4 v3, 0x0

    goto :goto_27
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 138
    new-instance v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lcom/android/org/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"

    .prologue
    .line 179
    if-ne p1, p0, :cond_4

    .line 181
    const/4 v1, 0x1

    .line 191
    :goto_3
    return v1

    .line 184
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    if-nez v1, :cond_a

    .line 186
    const/4 v1, 0x0

    goto :goto_3

    :cond_a
    move-object v0, p1

    .line 189
    check-cast v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;

    .line 191
    .local v0, other:Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, v0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_3
.end method

.method public getPrincipals()[Ljava/security/Principal;
    .registers 5

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->getNames()[Ljava/lang/Object;

    move-result-object v2

    .line 97
    .local v2, p:[Ljava/lang/Object;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, l:Ljava/util/List;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v3, v2

    if-eq v0, v3, :cond_1b

    .line 101
    aget-object v3, v2, v0

    instance-of v3, v3, Ljava/security/Principal;

    if-eqz v3, :cond_18

    .line 103
    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 107
    :cond_1b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/security/Principal;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/Principal;

    check-cast v3, [Ljava/security/Principal;

    return-object v3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 201
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_6

    .line 203
    const/4 v0, 0x0

    .line 206
    .end local p1
    :goto_5
    return v0

    .restart local p1
    :cond_6
    check-cast p1, Ljava/security/cert/Certificate;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    goto :goto_5
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 9
    .parameter "cert"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 143
    instance-of v5, p1, Ljava/security/cert/X509Certificate;

    if-nez v5, :cond_8

    move v3, v4

    .line 174
    :cond_7
    :goto_7
    return v3

    :cond_8
    move-object v2, p1

    .line 148
    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 150
    .local v2, x509Cert:Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    instance-of v5, v5, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    if-eqz v5, :cond_55

    .line 152
    iget-object v0, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lcom/android/org/bouncycastle/asn1/x509/V2Form;

    .line 153
    .local v0, issuer:Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    if-eqz v5, :cond_45

    .line 155
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getSerial()Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getBaseCertificateID()Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/IssuerSerial;->getIssuer()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_43
    move v3, v4

    goto :goto_7

    .line 159
    :cond_45
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/x509/V2Form;->getIssuerName()Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    .line 160
    .local v1, name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-nez v5, :cond_7

    .end local v0           #issuer:Lcom/android/org/bouncycastle/asn1/x509/V2Form;
    :cond_53
    move v3, v4

    .line 174
    goto :goto_7

    .line 167
    .end local v1           #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    :cond_55
    iget-object v1, p0, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->form:Lcom/android/org/bouncycastle/asn1/ASN1Encodable;

    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;

    .line 168
    .restart local v1       #name:Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/org/bouncycastle/x509/AttributeCertificateIssuer;->matchesDN(Ljavax/security/auth/x500/X500Principal;Lcom/android/org/bouncycastle/asn1/x509/GeneralNames;)Z

    move-result v5

    if-eqz v5, :cond_53

    goto :goto_7
.end method
