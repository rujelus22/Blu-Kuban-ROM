.class public Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V1TBSCertificateGenerator.java"


# instance fields
.field endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

.field subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

.field subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {v0, v2, v1}, Lcom/android/org/bouncycastle/asn1/DERTaggedObject;-><init>(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lcom/android/org/bouncycastle/asn1/DERTaggedObject;

    .line 38
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 5

    .prologue
    .line 108
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v2, :cond_24

    .line 112
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    :cond_24
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 118
    .local v0, seq:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 119
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 120
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 125
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 127
    .local v1, validity:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 128
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 130
    new-instance v2, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 132
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 134
    iget-object v2, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 136
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    return-object v2
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/DERUTCTime;)V
    .registers 3
    .parameter "endDate"

    .prologue
    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 86
    return-void
.end method

.method public setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .parameter "endDate"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 80
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3
    .parameter "issuer"

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 62
    return-void
.end method

.method public setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 2
    .parameter "issuer"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 56
    return-void
.end method

.method public setSerialNumber(Lcom/android/org/bouncycastle/asn1/DERInteger;)V
    .registers 2
    .parameter "serialNumber"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 44
    return-void
.end method

.method public setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .parameter "signature"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/DERUTCTime;)V
    .registers 3
    .parameter "startDate"

    .prologue
    .line 73
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Lcom/android/org/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 74
    return-void
.end method

.method public setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .parameter "startDate"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lcom/android/org/bouncycastle/asn1/x509/Time;

    .line 68
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x500/X500Name;)V
    .registers 3
    .parameter "subject"

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 98
    return-void
.end method

.method public setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lcom/android/org/bouncycastle/asn1/x509/X509Name;

    .line 92
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .parameter "pubKeyInfo"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 104
    return-void
.end method
