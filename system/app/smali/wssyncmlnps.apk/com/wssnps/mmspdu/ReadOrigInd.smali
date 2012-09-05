.class public Lcom/wssnps/mmspdu/ReadOrigInd;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "ReadOrigInd.java"


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/wssnps/mmspdu/GenericPdu;-><init>()V

    .line 35
    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/ReadOrigInd;->setMessageType(I)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 45
    return-void
.end method
