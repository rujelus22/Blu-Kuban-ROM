.class public Lcom/wssnps/mmspdu/RetrieveConf;
.super Lcom/wssnps/mmspdu/MultimediaMessagePdu;
.source "RetrieveConf.java"


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
    invoke-direct {p0}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;-><init>()V

    .line 37
    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/RetrieveConf;->setMessageType(I)V

    .line 38
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V
    .registers 3
    .parameter "headers"
    .parameter "body"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getContentType()[B
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method
