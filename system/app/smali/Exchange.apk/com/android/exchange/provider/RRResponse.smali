.class public Lcom/android/exchange/provider/RRResponse;
.super Ljava/lang/Object;
.source "RRResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/RRResponse$RecipientData;
    }
.end annotation


# instance fields
.field public recipientCount:I

.field public recipientData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/provider/RRResponse$RecipientData;",
            ">;"
        }
    .end annotation
.end field

.field public status:B

.field public to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v1, p0, Lcom/android/exchange/provider/RRResponse;->recipientCount:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/provider/RRResponse;->to:Ljava/lang/String;

    .line 14
    iput-byte v1, p0, Lcom/android/exchange/provider/RRResponse;->status:B

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/RRResponse;->recipientData:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public addRecipient(BLjava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/RecipientCertificates;ILjava/lang/String;)V
    .registers 15
    .parameter "_type"
    .parameter "_displayName"
    .parameter "_email"
    .parameter "_sertificates"
    .parameter "_availabilityStatus"
    .parameter "_mergedFreeBusy"

    .prologue
    .line 24
    iget-object v7, p0, Lcom/android/exchange/provider/RRResponse;->recipientData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/exchange/provider/RRResponse$RecipientData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/RRResponse$RecipientData;-><init>(BLjava/lang/String;Ljava/lang/String;Lcom/android/exchange/provider/RecipientCertificates;ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method
