.class public Lorg/snmp4j/PDU;
.super Ljava/lang/Object;
.source "PDU.java"

# interfaces
.implements Lorg/snmp4j/asn1/BERSerializable;
.implements Ljava/io/Serializable;


# static fields
.field public static final GET:I = -0x60

.field public static final GETBULK:I = -0x5b

.field public static final GETNEXT:I = -0x5f

.field public static final INFORM:I = -0x5a

.field public static final NOTIFICATION:I = -0x59

.field public static final REPORT:I = -0x58

.field public static final RESPONSE:I = -0x5e

.field public static final SET:I = -0x5d

.field public static final TRAP:I = -0x59

.field public static final V1TRAP:I = -0x5c

.field public static final authorizationError:I = 0x10

.field public static final badValue:I = 0x3

.field public static final commitFailed:I = 0xe

.field public static final genErr:I = 0x5

.field public static final inconsistentName:I = 0x12

.field public static final inconsistentValue:I = 0xc

.field public static final noAccess:I = 0x6

.field public static final noCreation:I = 0xb

.field public static final noError:I = 0x0

.field public static final noSuchName:I = 0x2

.field public static final notWritable:I = 0x11

.field public static final readOnly:I = 0x4

.field public static final resourceUnavailable:I = 0xd

.field private static final serialVersionUID:J = 0x6993e1cf356b5a30L

.field public static final tooBig:I = 0x1

.field public static final undoFailed:I = 0xf

.field public static final wrongEncoding:I = 0x9

.field public static final wrongLength:I = 0x8

.field public static final wrongType:I = 0x7

.field public static final wrongValue:I = 0xa


# instance fields
.field protected errorIndex:Lorg/snmp4j/smi/Integer32;

.field protected errorStatus:Lorg/snmp4j/smi/Integer32;

.field protected requestID:Lorg/snmp4j/smi/Integer32;

.field protected type:I

.field protected variableBindings:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    .line 205
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    .line 206
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    .line 207
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    .line 208
    const/16 v0, -0x60

    iput v0, p0, Lorg/snmp4j/PDU;->type:I

    .line 214
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/PDU;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    .line 205
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    .line 206
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    .line 207
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v0}, Lorg/snmp4j/smi/Integer32;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    .line 208
    const/16 v0, -0x60

    iput v0, p0, Lorg/snmp4j/PDU;->type:I

    .line 222
    iget-object v0, p1, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    .line 223
    iget-object v0, p1, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Integer32;

    iput-object v0, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    .line 224
    iget-object v0, p1, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Integer32;

    iput-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    .line 225
    iget v0, p1, Lorg/snmp4j/PDU;->type:I

    iput v0, p0, Lorg/snmp4j/PDU;->type:I

    .line 226
    iget-object v0, p1, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    if-eqz v0, :cond_53

    .line 227
    iget-object v0, p1, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Integer32;

    iput-object v0, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    .line 229
    :cond_53
    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .registers 2
    .parameter "type"

    .prologue
    .line 624
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 625
    const/16 v0, -0x60

    .line 651
    :goto_a
    return v0

    .line 627
    :cond_b
    const-string v0, "SET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 628
    const/16 v0, -0x5d

    goto :goto_a

    .line 630
    :cond_16
    const-string v0, "GETNEXT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 631
    const/16 v0, -0x5f

    goto :goto_a

    .line 633
    :cond_21
    const-string v0, "GETBULK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 634
    const/16 v0, -0x5b

    goto :goto_a

    .line 636
    :cond_2c
    const-string v0, "INFORM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 637
    const/16 v0, -0x5a

    goto :goto_a

    .line 639
    :cond_37
    const-string v0, "RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 640
    const/16 v0, -0x5e

    goto :goto_a

    .line 642
    :cond_42
    const-string v0, "TRAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 643
    const/16 v0, -0x59

    goto :goto_a

    .line 645
    :cond_4d
    const-string v0, "V1TRAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 646
    const/16 v0, -0x5c

    goto :goto_a

    .line 648
    :cond_58
    const-string v0, "REPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 649
    const/16 v0, -0x58

    goto :goto_a

    .line 651
    :cond_63
    const/high16 v0, -0x8000

    goto :goto_a
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 591
    packed-switch p0, :pswitch_data_22

    .line 611
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 593
    :pswitch_6
    const-string v0, "GET"

    goto :goto_5

    .line 595
    :pswitch_9
    const-string v0, "SET"

    goto :goto_5

    .line 597
    :pswitch_c
    const-string v0, "GETNEXT"

    goto :goto_5

    .line 599
    :pswitch_f
    const-string v0, "GETBULK"

    goto :goto_5

    .line 601
    :pswitch_12
    const-string v0, "INFORM"

    goto :goto_5

    .line 603
    :pswitch_15
    const-string v0, "RESPONSE"

    goto :goto_5

    .line 605
    :pswitch_18
    const-string v0, "REPORT"

    goto :goto_5

    .line 607
    :pswitch_1b
    const-string v0, "TRAP"

    goto :goto_5

    .line 609
    :pswitch_1e
    const-string v0, "V1TRAP"

    goto :goto_5

    .line 591
    nop

    :pswitch_data_22
    .packed-switch -0x60
        :pswitch_6
        :pswitch_c
        :pswitch_15
        :pswitch_9
        :pswitch_1e
        :pswitch_f
        :pswitch_12
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static final toErrorStatusText(I)Ljava/lang/String;
    .registers 4
    .parameter "errorStatus"

    .prologue
    .line 400
    :try_start_0
    sget-object v1, Lorg/snmp4j/mp/SnmpConstants;->SNMP_ERROR_MESSAGES:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    .line 403
    :goto_4
    return-object v1

    .line 402
    :catch_5
    move-exception v0

    .line 403
    .local v0, iobex:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Unknown error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method


# virtual methods
.method public add(Lorg/snmp4j/smi/VariableBinding;)V
    .registers 3
    .parameter "vb"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public addAll([Lorg/snmp4j/smi/VariableBinding;)V
    .registers 6
    .parameter "vbs"

    .prologue
    .line 267
    iget-object v1, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 268
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 269
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/snmp4j/PDU;->add(Lorg/snmp4j/smi/VariableBinding;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 271
    :cond_19
    return-void
.end method

.method public addAllOIDs([Lorg/snmp4j/smi/VariableBinding;)V
    .registers 6
    .parameter "vbs"

    .prologue
    .line 285
    iget-object v1, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_19

    .line 287
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/snmp4j/PDU;->addOID(Lorg/snmp4j/smi/VariableBinding;)V

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 289
    :cond_19
    return-void
.end method

.method public addOID(Lorg/snmp4j/smi/VariableBinding;)V
    .registers 4
    .parameter "vb"

    .prologue
    .line 254
    new-instance v0, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {p1}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/VariableBinding;-><init>(Lorg/snmp4j/smi/OID;)V

    .line 255
    .local v0, cvb:Lorg/snmp4j/smi/VariableBinding;
    iget-object v1, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 256
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 537
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 538
    new-instance v0, Lorg/snmp4j/smi/Integer32;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/snmp4j/PDU;->setRequestID(Lorg/snmp4j/smi/Integer32;)V

    .line 539
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 560
    new-instance v0, Lorg/snmp4j/PDU;

    invoke-direct {v0, p0}, Lorg/snmp4j/PDU;-><init>(Lorg/snmp4j/PDU;)V

    return-object v0
.end method

.method public decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 12
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 448
    .local v2, pduType:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v0

    .line 449
    .local v0, length:I
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    long-to-int v1, v6

    .line 450
    .local v1, pduStartPos:I
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v6

    packed-switch v6, :pswitch_data_de

    .line 461
    :pswitch_15
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Unsupported PDU type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 463
    :pswitch_32
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v6

    iput v6, p0, Lorg/snmp4j/PDU;->type:I

    .line 464
    iget-object v6, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 465
    iget-object v6, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 466
    iget-object v6, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v6, p1}, Lorg/snmp4j/smi/Integer32;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 468
    new-instance v2, Lorg/snmp4j/asn1/BER$MutableByte;

    .end local v2           #pduType:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-direct {v2}, Lorg/snmp4j/asn1/BER$MutableByte;-><init>()V

    .line 469
    .restart local v2       #pduType:Lorg/snmp4j/asn1/BER$MutableByte;
    invoke-static {p1, v2}, Lorg/snmp4j/asn1/BER;->decodeHeader(Lorg/snmp4j/asn1/BERInputStream;Lorg/snmp4j/asn1/BER$MutableByte;)I

    move-result v5

    .line 470
    .local v5, vbLength:I
    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v6

    const/16 v7, 0x30

    if-eq v6, v7, :cond_75

    .line 471
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Encountered invalid tag, SEQUENCE expected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Lorg/snmp4j/asn1/BER$MutableByte;->getValue()B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 475
    :cond_75
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    long-to-int v3, v6

    .line 476
    .local v3, startPos:I
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    .line 477
    :goto_81
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    int-to-long v8, v3

    sub-long/2addr v6, v8

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-gez v6, :cond_9a

    .line 478
    new-instance v4, Lorg/snmp4j/smi/VariableBinding;

    invoke-direct {v4}, Lorg/snmp4j/smi/VariableBinding;-><init>()V

    .line 479
    .local v4, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v4, p1}, Lorg/snmp4j/smi/VariableBinding;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 480
    iget-object v6, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 482
    .end local v4           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_9a
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    int-to-long v8, v3

    sub-long/2addr v6, v8

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ce

    .line 483
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Length of VB sequence ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ") does not match real length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v8

    long-to-int v8, v8

    sub-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 487
    :cond_ce
    invoke-static {}, Lorg/snmp4j/asn1/BER;->isCheckSequenceLength()Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 488
    invoke-virtual {p1}, Lorg/snmp4j/asn1/BERInputStream;->getPosition()J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v6, v1

    invoke-static {v0, v6, p0}, Lorg/snmp4j/asn1/BER;->checkSequenceLength(IILorg/snmp4j/asn1/BERSerializable;)V

    .line 492
    :cond_dd
    return-void

    .line 450
    :pswitch_data_de
    .packed-switch -0x60
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_15
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public encodeBER(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget v2, p0, Lorg/snmp4j/PDU;->type:I

    invoke-virtual {p0}, Lorg/snmp4j/PDU;->getBERPayloadLengthPDU()I

    move-result v3

    invoke-static {p1, v2, v3}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 518
    iget-object v2, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 519
    iget-object v2, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 520
    iget-object v2, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/Integer32;->encodeBER(Ljava/io/OutputStream;)V

    .line 522
    const/4 v1, 0x0

    .line 523
    .local v1, vbLength:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_32

    .line 524
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v2}, Lorg/snmp4j/smi/VariableBinding;->getBERLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 526
    :cond_32
    const/16 v2, 0x30

    invoke-static {p1, v2, v1}, Lorg/snmp4j/asn1/BER;->encodeHeader(Ljava/io/OutputStream;II)V

    .line 527
    const/4 v0, 0x0

    :goto_38
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_4e

    .line 528
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v2, p1}, Lorg/snmp4j/smi/VariableBinding;->encodeBER(Ljava/io/OutputStream;)V

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 530
    :cond_4e
    return-void
.end method

.method public get(I)Lorg/snmp4j/smi/VariableBinding;
    .registers 3
    .parameter "index"

    .prologue
    .line 300
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/VariableBinding;

    return-object v0
.end method

.method public getBERLength()I
    .registers 3

    .prologue
    .line 436
    invoke-virtual {p0}, Lorg/snmp4j/PDU;->getBERPayloadLengthPDU()I

    move-result v0

    .line 437
    .local v0, length:I
    invoke-static {v0}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 439
    return v0
.end method

.method public getBERPayloadLength()I
    .registers 2

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/snmp4j/PDU;->getBERPayloadLengthPDU()I

    move-result v0

    return v0
.end method

.method protected getBERPayloadLengthPDU()I
    .registers 5

    .prologue
    .line 495
    const/4 v2, 0x0

    .line 498
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_1a

    .line 499
    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/snmp4j/smi/VariableBinding;

    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->getBERLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 502
    :cond_1a
    invoke-static {v2}, Lorg/snmp4j/asn1/BER;->getBERLengthOfLength(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    .line 505
    new-instance v1, Lorg/snmp4j/smi/Integer32;

    iget-object v3, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v3}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    .line 506
    .local v1, i32:Lorg/snmp4j/smi/Integer32;
    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 507
    iget-object v1, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    .line 508
    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 509
    iget-object v1, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    .line 510
    invoke-virtual {v1}, Lorg/snmp4j/smi/Integer32;->getBERLength()I

    move-result v3

    add-int/2addr v2, v3

    .line 511
    const/4 v1, 0x0

    .line 512
    return v2
.end method

.method public getErrorIndex()I
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getErrorStatus()I
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getErrorStatusText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    invoke-static {v0}, Lorg/snmp4j/PDU;->toErrorStatusText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxRepetitions()I
    .registers 2

    .prologue
    .line 686
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getNonRepeaters()I
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0}, Lorg/snmp4j/smi/Integer32;->getValue()I

    move-result v0

    return v0
.end method

.method public getRequestID()Lorg/snmp4j/smi/Integer32;
    .registers 2

    .prologue
    .line 569
    iget-object v0, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 556
    iget v0, p0, Lorg/snmp4j/PDU;->type:I

    return v0
.end method

.method public getVariableBindings()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    return-object v0
.end method

.method public isConfirmedPdu()Z
    .registers 3

    .prologue
    .line 430
    iget v0, p0, Lorg/snmp4j/PDU;->type:I

    const/16 v1, -0x58

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lorg/snmp4j/PDU;->type:I

    const/16 v1, -0x5e

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lorg/snmp4j/PDU;->type:I

    const/16 v1, -0x59

    if-eq v0, v1, :cond_1a

    iget v0, p0, Lorg/snmp4j/PDU;->type:I

    const/16 v1, -0x5c

    if-eq v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public remove(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 327
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public set(ILorg/snmp4j/smi/VariableBinding;)Lorg/snmp4j/smi/VariableBinding;
    .registers 5
    .parameter "index"
    .parameter "vb"

    .prologue
    .line 315
    if-nez p2, :cond_a

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Variable binding must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_a
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/VariableBinding;

    return-object v0
.end method

.method public setErrorIndex(I)V
    .registers 3
    .parameter "errorIndex"

    .prologue
    .line 413
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 414
    return-void
.end method

.method public setErrorStatus(I)V
    .registers 3
    .parameter "errorStatus"

    .prologue
    .line 364
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 365
    return-void
.end method

.method public setMaxRepetitions(I)V
    .registers 3
    .parameter "maxRepetitions"

    .prologue
    .line 696
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 697
    return-void
.end method

.method public setNonRepeaters(I)V
    .registers 3
    .parameter "nonRepeaters"

    .prologue
    .line 714
    iget-object v0, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, p1}, Lorg/snmp4j/smi/Integer32;->setValue(I)V

    .line 715
    return-void
.end method

.method public setRequestID(Lorg/snmp4j/smi/Integer32;)V
    .registers 2
    .parameter "requestID"

    .prologue
    .line 580
    iput-object p1, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    .line 581
    return-void
.end method

.method public setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 547
    iput p1, p0, Lorg/snmp4j/PDU;->type:I

    .line 548
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 336
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Lorg/snmp4j/smi/VariableBinding;
    .registers 3

    .prologue
    .line 724
    iget-object v1, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lorg/snmp4j/smi/VariableBinding;

    .line 725
    .local v0, vbs:[Lorg/snmp4j/smi/VariableBinding;
    iget-object v1, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 726
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 660
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 661
    .local v0, buf:Ljava/lang/StringBuffer;
    iget v2, p0, Lorg/snmp4j/PDU;->type:I

    invoke-static {v2}, Lorg/snmp4j/PDU;->getTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 662
    const-string v2, "[requestID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    iget-object v2, p0, Lorg/snmp4j/PDU;->requestID:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 664
    const-string v2, ", errorStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 665
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/snmp4j/PDU;->getErrorStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/snmp4j/PDU;->errorStatus:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    const-string v2, ", errorIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    iget-object v2, p0, Lorg/snmp4j/PDU;->errorIndex:Lorg/snmp4j/smi/Integer32;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 668
    const-string v2, ", VBS["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    const/4 v1, 0x0

    .local v1, i:I
    :goto_53
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 670
    iget-object v2, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 671
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_73

    .line 672
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 675
    :cond_76
    const-string v2, "]]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public trim()V
    .registers 3

    .prologue
    .line 352
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 353
    iget-object v0, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    iget-object v1, p0, Lorg/snmp4j/PDU;->variableBindings:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 355
    :cond_15
    return-void
.end method
