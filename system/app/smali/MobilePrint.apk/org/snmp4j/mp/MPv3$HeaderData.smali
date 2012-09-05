.class public Lorg/snmp4j/mp/MPv3$HeaderData;
.super Ljava/lang/Object;
.source "MPv3.java"

# interfaces
.implements Lorg/snmp4j/asn1/BERSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/mp/MPv3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HeaderData"
.end annotation


# static fields
.field public static final FLAG_AUTH:B = 0x1t

.field public static final FLAG_PRIV:B = 0x2t


# instance fields
.field msgFlags:Lorg/snmp4j/smi/OctetString;

.field msgID:Lorg/snmp4j/smi/Integer32;

.field msgMaxSize:Lorg/snmp4j/smi/Integer32;

.field securityModel:Lorg/snmp4j/smi/Integer32;


# direct methods
.method protected constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 515
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgID:Lorg/snmp4j/smi/Integer32;

    .line 522
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    .line 523
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    const/4 v1, 0x1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OctetString;-><init>([B)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    .line 524
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0, v2}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->securityModel:Lorg/snmp4j/smi/Integer32;

    return-void
.end method


# virtual methods
.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 7
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    new-instance v1, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v1}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 574
    .local v1, type:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v1}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v0

    .line 575
    .local v0, length:I
    invoke-virtual {v1}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2e

    .line 576
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unexpected sequence header type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v1}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 579
    :cond_2e
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 580
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 581
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v2

    const/16 v3, 0x1e4

    if-ge v2, v3, :cond_5d

    .line 582
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Invalid msgMaxSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :cond_5d
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/OctetString;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 585
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v2}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8a

    .line 586
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Message flags length != 1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 588
    :cond_8a
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->securityModel:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 589
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 590
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SNMPv3 header decoded: msgId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", msgMaxSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", msgFlags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v4}, Lorg/snmp4j/smi/OctetString;->toHexString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", secModel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->securityModel:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 595
    :cond_dd
    invoke-static {v0, p0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(ILorg/snmp4j/asn1/BERSerializable;)V

    .line 596
    return-void
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 4
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    const/16 v0, 0x30

    invoke-virtual {p0}, Lorg/snmp4j/mp/MPv3$HeaderData;->getBERPayloadLength()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 600
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 601
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 602
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/OctetString;->encodeBER(Ljava/io/OutputStream;)V

    .line 603
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->securityModel:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 604
    return-void
.end method

.method public getBERLength()I
    .registers 3

    .prologue
    .line 567
    invoke-virtual {p0}, Lorg/snmp4j/mp/MPv3$HeaderData;->getBERPayloadLength()I

    move-result v0

    .line 568
    .local v0, length:I
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 569
    return v0
.end method

.method public getBERPayloadLength()I
    .registers 3

    .prologue
    .line 559
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v0

    .line 560
    .local v0, length:I
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 561
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v1}, Lorg/snmp4j/smi/OctetString;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 562
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->securityModel:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    return v0
.end method

.method public getMsgFlags()I
    .registers 3

    .prologue
    .line 547
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMsgID()I
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getMsgMaxSize()I
    .registers 2

    .prologue
    .line 539
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getSecurityModel()I
    .registers 2

    .prologue
    .line 555
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->securityModel:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public setMsgFlags(I)V
    .registers 5
    .parameter "flags"

    .prologue
    .line 543
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgFlags:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v0

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 544
    return-void
.end method

.method public setMsgID(I)V
    .registers 3
    .parameter "msgID"

    .prologue
    .line 527
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 528
    return-void
.end method

.method public setMsgMaxSize(I)V
    .registers 3
    .parameter "msgMaxSize"

    .prologue
    .line 535
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->msgMaxSize:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 536
    return-void
.end method

.method public setSecurityModel(I)V
    .registers 3
    .parameter "model"

    .prologue
    .line 551
    iget-object v0, p0, Lorg/snmp4j/mp/MPv3$HeaderData;->securityModel:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 552
    return-void
.end method
