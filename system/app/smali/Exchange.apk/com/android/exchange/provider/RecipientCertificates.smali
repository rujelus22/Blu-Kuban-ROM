.class public Lcom/android/exchange/provider/RecipientCertificates;
.super Ljava/lang/Object;
.source "RecipientCertificates.java"


# instance fields
.field final mCertificate:Ljava/lang/String;

.field final mCertificateCount:I

.field final mMiniCertificate:Ljava/lang/String;

.field final mRecipientCount:I

.field final mStatus:B


# direct methods
.method public constructor <init>(BIILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "_status"
    .parameter "_certificateCount"
    .parameter "_recipientCount"
    .parameter "_certificate"
    .parameter "_miniCertificate"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-byte p1, p0, Lcom/android/exchange/provider/RecipientCertificates;->mStatus:B

    .line 49
    iput p2, p0, Lcom/android/exchange/provider/RecipientCertificates;->mCertificateCount:I

    .line 50
    iput p3, p0, Lcom/android/exchange/provider/RecipientCertificates;->mRecipientCount:I

    .line 51
    iput-object p4, p0, Lcom/android/exchange/provider/RecipientCertificates;->mCertificate:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/android/exchange/provider/RecipientCertificates;->mMiniCertificate:Ljava/lang/String;

    .line 53
    return-void
.end method
