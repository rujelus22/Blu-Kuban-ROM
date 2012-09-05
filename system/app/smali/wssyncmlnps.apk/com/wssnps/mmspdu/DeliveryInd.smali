.class public Lcom/wssnps/mmspdu/DeliveryInd;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "DeliveryInd.java"


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/wssnps/mmspdu/GenericPdu;-><init>()V

    .line 37
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/DeliveryInd;->setMessageType(I)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 47
    return-void
.end method
