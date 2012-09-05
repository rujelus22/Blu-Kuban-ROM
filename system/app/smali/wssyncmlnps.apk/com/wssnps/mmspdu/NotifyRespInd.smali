.class public Lcom/wssnps/mmspdu/NotifyRespInd;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "NotifyRespInd.java"


# direct methods
.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 54
    return-void
.end method
