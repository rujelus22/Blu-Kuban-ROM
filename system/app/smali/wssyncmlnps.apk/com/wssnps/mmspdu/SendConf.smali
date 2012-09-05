.class public Lcom/wssnps/mmspdu/SendConf;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "SendConf.java"


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wssnps/mmspdu/GenericPdu;-><init>()V

    .line 34
    const/16 v0, 0x81

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/SendConf;->setMessageType(I)V

    .line 35
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 44
    return-void
.end method
