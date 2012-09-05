.class public Lcom/wssnps/mmspdu/AcknowledgeInd;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "AcknowledgeInd.java"


# direct methods
.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 51
    return-void
.end method
