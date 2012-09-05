.class public Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
.super Lcom/android/org/bouncycastle/asn1/ASN1Encodable;
.source "DHDomainParameters.java"


# instance fields
.field private g:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private j:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private p:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private q:Lcom/android/org/bouncycastle/asn1/DERInteger;

.field private validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_11

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_2e

    .line 68
    :cond_11
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sequence size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_2e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 72
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 73
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 74
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 76
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    .line 78
    .local v1, next:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    if-eqz v1, :cond_64

    instance-of v2, v1, Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_64

    .line 80
    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 81
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    .line 84
    :cond_64
    if-eqz v1, :cond_70

    .line 86
    invoke-interface {v1}, Lcom/android/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/android/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    .line 88
    :cond_70
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/DERInteger;Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;)V
    .registers 8
    .parameter "p"
    .parameter "g"
    .parameter "q"
    .parameter "j"
    .parameter "validationParms"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 44
    if-nez p1, :cond_d

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'p\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_d
    if-nez p2, :cond_17

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'g\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_17
    if-nez p3, :cond_21

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'q\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_21
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 58
    iput-object p2, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 59
    iput-object p3, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 60
    iput-object p4, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    .line 61
    iput-object p5, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    .line 62
    return-void
.end method

.method public static getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Lcom/android/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;
    .registers 4
    .parameter "obj"

    .prologue
    .line 27
    if-eqz p0, :cond_6

    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    if-eqz v0, :cond_9

    .line 29
    :cond_6
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    .line 34
    .end local p0
    :goto_8
    return-object p0

    .line 32
    .restart local p0
    :cond_9
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;

    check-cast p0, Lcom/android/org/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_8

    .line 37
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHDomainParameters: "

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

.method private static getNext(Ljava/util/Enumeration;)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 2
    .parameter "e"

    .prologue
    .line 92
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method


# virtual methods
.method public getG()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getJ()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getP()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getQ()Lcom/android/org/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getValidationParms()Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    return-object v0
.end method

.method public toASN1Object()Lcom/android/org/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 122
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    .local v0, v:Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->p:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 124
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->g:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->q:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 127
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1d

    .line 129
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->j:Lcom/android/org/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 132
    :cond_1d
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    if-eqz v1, :cond_26

    .line 134
    iget-object v1, p0, Lcom/android/org/bouncycastle/asn1/x9/DHDomainParameters;->validationParms:Lcom/android/org/bouncycastle/asn1/x9/DHValidationParms;

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V

    .line 137
    :cond_26
    new-instance v1, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
