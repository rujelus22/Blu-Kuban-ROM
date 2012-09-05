.class public Lcom/android/exchange/provider/RRResponse$RecipientData;
.super Ljava/lang/Object;
.source "RRResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/RRResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecipientData"
.end annotation


# instance fields
.field public final mAvailabilityStatus:I

.field public final mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

.field public final mDisplayName:Ljava/lang/String;

.field public final mEmail:Ljava/lang/String;

.field public final mMergedFreeBusy:Ljava/lang/String;

.field public final mType:B


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/RecipientCertificates;ILjava/lang/String;)V
    .registers 7
    .parameter "_type"
    .parameter "_displayName"
    .parameter "_email"
    .parameter "_sertificates"
    .parameter "_availabilityStatus"
    .parameter "_mergedFreeBusy"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-byte p1, p0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mType:B

    .line 67
    iput-object p2, p0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mDisplayName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mEmail:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    .line 70
    iput p5, p0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mAvailabilityStatus:I

    .line 71
    iput-object p6, p0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mMergedFreeBusy:Ljava/lang/String;

    .line 72
    return-void
.end method
