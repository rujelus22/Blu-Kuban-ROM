.class public Lcom/wssnps/mmspdu/NotificationInd;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "NotificationInd.java"


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/wssnps/mmspdu/GenericPdu;-><init>()V

    .line 38
    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/NotificationInd;->setMessageType(I)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 48
    return-void
.end method
