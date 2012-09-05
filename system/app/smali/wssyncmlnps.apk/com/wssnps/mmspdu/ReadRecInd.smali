.class public Lcom/wssnps/mmspdu/ReadRecInd;
.super Lcom/wssnps/mmspdu/GenericPdu;
.source "ReadRecInd.java"


# direct methods
.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/GenericPdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 56
    return-void
.end method
