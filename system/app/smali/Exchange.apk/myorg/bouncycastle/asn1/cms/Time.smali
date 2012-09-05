.class public Lmyorg/bouncycastle/asn1/cms/Time;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "Time.java"

# interfaces
.implements Lmyorg/bouncycastle/asn1/ASN1Choice;


# instance fields
.field time:Lmyorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .registers 9
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    .line 35
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    new-instance v2, Ljava/util/SimpleTimeZone;

    const-string v4, "Z"

    invoke-direct {v2, v6, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 37
    .local v2, tz:Ljava/util/SimpleTimeZone;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, dateF:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, d:Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 44
    .local v3, year:I
    const/16 v4, 0x79e

    if-lt v3, v4, :cond_3d

    const/16 v4, 0x801

    if-le v3, v4, :cond_45

    .line 45
    :cond_3d
    new-instance v4, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v4, v0}, Lmyorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/cms/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    .line 49
    :goto_44
    return-void

    .line 47
    :cond_45
    new-instance v4, Lmyorg/bouncycastle/asn1/DERUTCTime;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmyorg/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lmyorg/bouncycastle/asn1/cms/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    goto :goto_44
.end method


# virtual methods
.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lmyorg/bouncycastle/asn1/cms/Time;->time:Lmyorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method
