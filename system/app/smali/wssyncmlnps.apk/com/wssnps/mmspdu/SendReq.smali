.class public Lcom/wssnps/mmspdu/SendReq;
.super Lcom/wssnps/mmspdu/MultimediaMessagePdu;
.source "SendReq.java"


# direct methods
.method public constructor <init>()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;-><init>()V

    .line 30
    const/16 v1, 0x80

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/SendReq;->setMessageType(I)V

    .line 31
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/SendReq;->setMmsVersion(I)V

    .line 34
    const-string v1, "application/vnd.wap.multipart.related"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/SendReq;->setContentType([B)V

    .line 35
    new-instance v1, Lcom/wssnps/mmspdu/EncodedStringValue;

    const-string v2, "insert-address-token"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/SendReq;->setFrom(Lcom/wssnps/mmspdu/EncodedStringValue;)V

    .line 36
    invoke-direct {p0}, Lcom/wssnps/mmspdu/SendReq;->generateTransactionId()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/SendReq;->setTransactionId([B)V
    :try_end_2b
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_5 .. :try_end_2b} :catch_2c

    .line 42
    return-void

    .line 37
    :catch_2c
    move-exception v0

    .line 39
    .local v0, e:Lcom/google/android/mms/InvalidHeaderValueException;
    const/4 v1, 0x3

    const-string v2, "Unexpected InvalidHeaderValueException."

    invoke-static {v1, v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;)V
    .registers 2
    .parameter "headers"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .line 78
    return-void
.end method

.method constructor <init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V
    .registers 3
    .parameter "headers"
    .parameter "body"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/wssnps/mmspdu/MultimediaMessagePdu;-><init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V

    .line 88
    return-void
.end method

.method private generateTransactionId()[B
    .registers 5

    .prologue
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, transactionId:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public setContentType([B)V
    .registers 4
    .parameter "value"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V

    .line 165
    return-void
.end method

.method public setFrom(Lcom/wssnps/mmspdu/EncodedStringValue;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V

    .line 226
    return-void
.end method

.method public setTransactionId([B)V
    .registers 4
    .parameter "value"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/wssnps/mmspdu/GenericPdu;->mPduHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V

    .line 295
    return-void
.end method
