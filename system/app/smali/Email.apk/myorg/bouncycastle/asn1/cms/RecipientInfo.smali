.class public Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientInfo.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field info:Lmyorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 36
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 37
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 38
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 24
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 26
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 20
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 21
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 22
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 16
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 18
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 28
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    new-instance v0, Lmyorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lmyorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILmyorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/RecipientInfo;
    .registers 4
    .parameter "o"

    .prologue
    .line 41
    if-eqz p0, :cond_6

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    if-eqz v0, :cond_9

    .line 42
    :cond_6
    check-cast p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    .line 46
    .end local p0
    :goto_8
    return-object p0

    .line 43
    .restart local p0
    :cond_9
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 44
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_8

    .line 45
    .restart local p0
    :cond_16
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_23

    .line 46
    new-instance v0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lmyorg/bouncycastle/asn1/DERObject;)V

    move-object p0, v0

    goto :goto_8

    .line 49
    .restart local p0
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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

.method private getKEKInfo(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;
    .registers 3
    .parameter "o"

    .prologue
    .line 100
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 101
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v0

    .line 103
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public getInfo()Lmyorg/bouncycastle/asn1/DEREncodable;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v1, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_2e

    .line 80
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 82
    .local v0, o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lmyorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :pswitch_1a
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v1

    .line 96
    .end local v0           #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1e
    return-object v1

    .line 86
    .restart local v0       #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_1f
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->getKEKInfo(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;)Lmyorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 88
    :pswitch_24
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 90
    :pswitch_29
    invoke-static {v0, v2}, Lmyorg/bouncycastle/asn1/cms/OtherRecipientInfo;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 96
    .end local v0           #o:Lmyorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2e
    iget-object v1, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 82
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
    .end packed-switch
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
