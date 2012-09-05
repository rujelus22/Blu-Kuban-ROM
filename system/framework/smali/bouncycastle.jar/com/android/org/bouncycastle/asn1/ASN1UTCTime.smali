.class public Lcom/android/org/bouncycastle/asn1/ASN1UTCTime;
.super Lcom/android/org/bouncycastle/asn1/DERUTCTime;
.source "ASN1UTCTime.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .registers 2
    .parameter "time"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>(Ljava/util/Date;)V

    .line 16
    return-void
.end method

.method constructor <init>([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/DERUTCTime;-><init>([B)V

    .line 11
    return-void
.end method
