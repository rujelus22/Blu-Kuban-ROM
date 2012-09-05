.class public Lcom/wssnps/mmspdu/GenericPdu;
.super Ljava/lang/Object;
.source "GenericPdu.java"


# instance fields
.field mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    .line 33
    new-instance v0, Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v0}, Lcom/wssnps/mmspdu/PduHeaders;-><init>()V

    iput-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 3
    .parameter "headers"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    .line 42
    iput-object p1, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    .line 43
    return-void
.end method


# virtual methods
.method public getMessageType()I
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method getPduHeaders()Lcom/wssnps/mmspdu/PduHeaders;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    return-object v0
.end method

.method public setMessageType(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v1, 0x8c

    invoke-virtual {v0, p1, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setOctet(II)V

    .line 72
    return-void
.end method

.method public setMmsVersion(I)V
    .registers 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v1, 0x8d

    invoke-virtual {v0, p1, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setOctet(II)V

    .line 92
    return-void
.end method
