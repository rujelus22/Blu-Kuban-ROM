.class public Lcom/wssnps/mmspdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wssnps/mmspdu/PduComposer$1;,
        Lcom/wssnps/mmspdu/PduComposer$BufferStack;,
        Lcom/wssnps/mmspdu/PduComposer$PositionMarker;,
        Lcom/wssnps/mmspdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/wssnps/mmspdu/GenericPdu;

.field private mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/wssnps/mmspdu/PduComposer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/wssnps/mmspdu/PduComposer;->$assertionsDisabled:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/wssnps/mmspdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wssnps/mmspdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 123
    :goto_16
    sget-object v0, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_2d

    .line 124
    sget-object v0, Lcom/wssnps/mmspdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2b
    move v0, v1

    .line 31
    goto :goto_a

    .line 126
    :cond_2d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/wssnps/mmspdu/GenericPdu;)V
    .registers 6
    .parameter "context"
    .parameter "pdu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 92
    iput-object v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    .line 97
    iput v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 102
    iput-object v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    .line 112
    iput-object v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    .line 135
    iput-object p2, p0, Lcom/wssnps/mmspdu/PduComposer;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 137
    invoke-virtual {p2}, Lcom/wssnps/mmspdu/GenericPdu;->getPduHeaders()Lcom/wssnps/mmspdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    .line 138
    new-instance v0, Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;-><init>(Lcom/wssnps/mmspdu/PduComposer;Lcom/wssnps/mmspdu/PduComposer$1;)V

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 140
    iput v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/wssnps/mmspdu/PduComposer;)Lcom/wssnps/mmspdu/PduComposer$BufferStack;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendHeader(I)I
    .registers 26
    .parameter "field"

    .prologue
    .line 468
    packed-switch p1, :pswitch_data_292

    .line 638
    :pswitch_3
    const/16 v22, 0x3

    .line 641
    :goto_5
    return v22

    .line 470
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v21

    .line 473
    .local v21, version:I
    if-nez v21, :cond_25

    .line 474
    const/16 v22, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendShortInteger(I)V

    .line 641
    .end local v21           #version:I
    :cond_22
    :goto_22
    const/16 v22, 0x0

    goto :goto_5

    .line 476
    .restart local v21       #version:I
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendShortInteger(I)V

    goto :goto_22

    .line 483
    .end local v21           #version:I
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v20

    .line 484
    .local v20, textString:[B
    if-nez v20, :cond_40

    .line 485
    const/16 v22, 0x2

    goto :goto_5

    .line 488
    :cond_40
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    goto :goto_22

    .line 495
    .end local v20           #textString:[B
    :pswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValues(I)[Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v3

    .line 497
    .local v3, addr:[Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v3, :cond_5e

    .line 498
    const/16 v22, 0x2

    goto :goto_5

    .line 501
    :cond_5e
    const/16 v19, 0x0

    .line 502
    .local v19, temp:Lcom/wssnps/mmspdu/EncodedStringValue;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_62
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_22

    .line 504
    :try_start_6b
    aget-object v22, v3, v16

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v4

    .line 505
    .local v4, addressType:I
    aget-object v22, v3, v16

    invoke-static/range {v22 .. v22}, Lcom/wssnps/mmspdu/EncodedStringValue;->copy(Lcom/wssnps/mmspdu/EncodedStringValue;)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v19

    .line 506
    if-eqz v19, :cond_90

    .line 508
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_9f

    .line 510
    const-string v22, "/TYPE=PLMN"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/EncodedStringValue;->appendTextString([B)V
    :try_end_90
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_90} :catch_b3

    .line 524
    :cond_90
    :goto_90
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 525
    if-eqz v19, :cond_9c

    .line 526
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendEncodedString(Lcom/wssnps/mmspdu/EncodedStringValue;)V

    .line 502
    :cond_9c
    add-int/lit8 v16, v16, 0x1

    goto :goto_62

    .line 512
    :cond_9f
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_b8

    .line 514
    :try_start_a5
    const-string v22, "/TYPE=IPV4"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_90

    .line 520
    .end local v4           #addressType:I
    :catch_b3
    move-exception v7

    .line 521
    .local v7, e:Ljava/lang/NullPointerException;
    const/16 v22, 0x1

    goto/16 :goto_5

    .line 515
    .end local v7           #e:Ljava/lang/NullPointerException;
    .restart local v4       #addressType:I
    :cond_b8
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v0, v4, :cond_90

    .line 517
    const-string v22, "/TYPE=IPV6"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/EncodedStringValue;->appendTextString([B)V
    :try_end_cb
    .catch Ljava/lang/NullPointerException; {:try_start_a5 .. :try_end_cb} :catch_b3

    goto :goto_90

    .line 532
    .end local v3           #addr:[Lcom/wssnps/mmspdu/EncodedStringValue;
    .end local v4           #addressType:I
    .end local v16           #i:I
    .end local v19           #temp:Lcom/wssnps/mmspdu/EncodedStringValue;
    :pswitch_cc
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v14

    .line 535
    .local v14, from:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-eqz v14, :cond_f0

    new-instance v22, Ljava/lang/String;

    invoke-virtual {v14}, Lcom/wssnps/mmspdu/EncodedStringValue;->getTextString()[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>([B)V

    const-string v23, "insert-address-token"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_104

    .line 539
    :cond_f0
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 541
    const/16 v22, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    goto/16 :goto_22

    .line 543
    :cond_104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->newbuf()V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->mark()Lcom/wssnps/mmspdu/PduComposer$PositionMarker;

    move-result-object v15

    .line 547
    .local v15, fstart:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    const/16 v22, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 548
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/wssnps/mmspdu/PduComposer;->appendEncodedString(Lcom/wssnps/mmspdu/EncodedStringValue;)V

    .line 550
    invoke-virtual {v15}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 551
    .local v13, flen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->pop()V

    .line 552
    int-to-long v0, v13

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendValueLength(J)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 563
    .end local v13           #flen:I
    .end local v14           #from:Lcom/wssnps/mmspdu/EncodedStringValue;
    .end local v15           #fstart:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    :pswitch_147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v18

    .line 564
    .local v18, octet:I
    if-nez v18, :cond_15b

    .line 565
    const/16 v22, 0x2

    goto/16 :goto_5

    .line 568
    :cond_15b
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 569
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 573
    .end local v18           #octet:I
    :pswitch_167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v5

    .line 574
    .local v5, date:J
    const-wide/16 v22, -0x1

    cmp-long v22, v22, v5

    if-nez v22, :cond_17f

    .line 575
    const/16 v22, 0x2

    goto/16 :goto_5

    .line 578
    :cond_17f
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 579
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/wssnps/mmspdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_22

    .line 583
    .end local v5           #date:J
    :pswitch_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v8

    .line 585
    .local v8, enString:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v8, :cond_19d

    .line 586
    const/16 v22, 0x2

    goto/16 :goto_5

    .line 589
    :cond_19d
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 590
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/wssnps/mmspdu/PduComposer;->appendEncodedString(Lcom/wssnps/mmspdu/EncodedStringValue;)V

    goto/16 :goto_22

    .line 594
    .end local v8           #enString:Lcom/wssnps/mmspdu/EncodedStringValue;
    :pswitch_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v17

    .line 595
    .local v17, messageClass:[B
    if-nez v17, :cond_1bb

    .line 596
    const/16 v22, 0x2

    goto/16 :goto_5

    .line 599
    :cond_1bb
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 600
    const-string v22, "advertisement"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v22

    if-eqz v22, :cond_1d9

    .line 602
    const/16 v22, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 603
    :cond_1d9
    const-string v22, "auto"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v22

    if-eqz v22, :cond_1f4

    .line 605
    const/16 v22, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 606
    :cond_1f4
    const-string v22, "personal"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v22

    if-eqz v22, :cond_20f

    .line 608
    const/16 v22, 0x80

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 609
    :cond_20f
    const-string v22, "informational"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v22

    if-eqz v22, :cond_22a

    .line 611
    const/16 v22, 0x82

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_22

    .line 613
    :cond_22a
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_22

    .line 618
    .end local v17           #messageClass:[B
    :pswitch_233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v9

    .line 619
    .local v9, expiry:J
    const-wide/16 v22, -0x1

    cmp-long v22, v22, v9

    if-nez v22, :cond_24b

    .line 620
    const/16 v22, 0x2

    goto/16 :goto_5

    .line 623
    :cond_24b
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->newbuf()V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->mark()Lcom/wssnps/mmspdu/PduComposer$PositionMarker;

    move-result-object v12

    .line 628
    .local v12, expiryStart:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    const/16 v22, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 629
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/wssnps/mmspdu/PduComposer;->appendLongInteger(J)V

    .line 631
    invoke-virtual {v12}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 632
    .local v11, expiryLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->pop()V

    .line 633
    int-to-long v0, v11

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendValueLength(J)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_22

    .line 468
    nop

    :pswitch_data_292
    .packed-switch 0x81
        :pswitch_4b
        :pswitch_4b
        :pswitch_3
        :pswitch_3
        :pswitch_167
        :pswitch_147
        :pswitch_3
        :pswitch_233
        :pswitch_cc
        :pswitch_1a7
        :pswitch_2d
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_147
        :pswitch_147
        :pswitch_147
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_147
        :pswitch_189
        :pswitch_4b
        :pswitch_2d
        :pswitch_3
        :pswitch_3
        :pswitch_147
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .registers 3
    .parameter "address"

    .prologue
    const/4 v0, 0x5

    .line 1355
    if-nez p0, :cond_4

    .line 1373
    :cond_3
    :goto_3
    return v0

    .line 1359
    :cond_4
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1361
    const/4 v0, 0x3

    goto :goto_3

    .line 1362
    :cond_e
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1364
    const/4 v0, 0x1

    goto :goto_3

    .line 1365
    :cond_18
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1367
    const/4 v0, 0x2

    goto :goto_3

    .line 1368
    :cond_22
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1370
    const/4 v0, 0x4

    goto :goto_3
.end method

.method private makeAckInd()I
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 728
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_f

    .line 729
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 730
    iput v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 734
    :cond_f
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 735
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 738
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_22

    .line 750
    :cond_21
    :goto_21
    return v0

    .line 743
    :cond_22
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_21

    .line 748
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move v0, v1

    .line 750
    goto :goto_21
.end method

.method private makeMessageBody()I
    .registers 33

    .prologue
    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/GenericPdu;->getMessageType()I

    move-result v29

    .line 1011
    .local v29, type:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->newbuf()V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->mark()Lcom/wssnps/mmspdu/PduComposer$PositionMarker;

    move-result-object v16

    .line 1016
    .local v16, ctStart:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    move-object/from16 v30, v0

    const/16 v31, 0x84

    invoke-virtual/range {v30 .. v31}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 1018
    .local v10, contentType:Ljava/lang/String;
    sget-object v30, Lcom/wssnps/mmspdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1019
    .local v12, contentTypeIdentifier:Ljava/lang/Integer;
    if-nez v12, :cond_3f

    .line 1021
    const/16 v30, 0x1

    .line 1214
    :cond_3e
    :goto_3e
    return v30

    .line 1024
    :cond_3f
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendShortInteger(I)V

    .line 1029
    const/16 v30, 0x84

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7e

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    move-object/from16 v30, v0

    check-cast v30, Lcom/wssnps/mmspdu/RetrieveConf;

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/RetrieveConf;->getBody()Lcom/wssnps/mmspdu/PduBody;

    move-result-object v5

    .line 1034
    .local v5, body:Lcom/wssnps/mmspdu/PduBody;
    :goto_5e
    if-nez v5, :cond_8b

    .line 1036
    const-wide/16 v30, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendUintvarInteger(J)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->pop()V

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->copy()V

    .line 1039
    const/16 v30, 0x0

    goto :goto_3e

    .line 1032
    .end local v5           #body:Lcom/wssnps/mmspdu/PduBody;
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    move-object/from16 v30, v0

    check-cast v30, Lcom/wssnps/mmspdu/SendReq;

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/SendReq;->getBody()Lcom/wssnps/mmspdu/PduBody;

    move-result-object v5

    .restart local v5       #body:Lcom/wssnps/mmspdu/PduBody;
    goto :goto_5e

    .line 1044
    :cond_8b
    const/16 v30, 0x0

    :try_start_8d
    move/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/wssnps/mmspdu/PduBody;->getPart(I)Lcom/wssnps/mmspdu/PduPart;

    move-result-object v23

    .line 1046
    .local v23, part:Lcom/wssnps/mmspdu/PduPart;
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getContentId()[B

    move-result-object v28

    .line 1047
    .local v28, start:[B
    if-eqz v28, :cond_c6

    .line 1048
    const/16 v30, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 1049
    const/16 v30, 0x3c

    const/16 v31, 0x0

    aget-byte v31, v28, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_148

    const/16 v30, 0x3e

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget-byte v31, v28, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_148

    .line 1050
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 1057
    :cond_c6
    :goto_c6
    const/16 v30, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 1058
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getContentType()[B

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V
    :try_end_da
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8d .. :try_end_da} :catch_173

    .line 1064
    .end local v23           #part:Lcom/wssnps/mmspdu/PduPart;
    .end local v28           #start:[B
    :goto_da
    invoke-virtual/range {v16 .. v16}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->getLength()I

    move-result v15

    .line 1065
    .local v15, ctLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->pop()V

    .line 1066
    int-to-long v0, v15

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendValueLength(J)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->copy()V

    .line 1070
    invoke-virtual {v5}, Lcom/wssnps/mmspdu/PduBody;->getPartsNum()I

    move-result v27

    .line 1071
    .local v27, partNum:I
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendUintvarInteger(J)V

    .line 1072
    const/16 v20, 0x0

    .local v20, i:I
    :goto_10c
    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_35c

    .line 1073
    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/wssnps/mmspdu/PduBody;->getPart(I)Lcom/wssnps/mmspdu/PduPart;

    move-result-object v23

    .line 1074
    .restart local v23       #part:Lcom/wssnps/mmspdu/PduPart;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->newbuf()V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->mark()Lcom/wssnps/mmspdu/PduComposer$PositionMarker;

    move-result-object v4

    .line 1077
    .local v4, attachment:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->newbuf()V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->mark()Lcom/wssnps/mmspdu/PduComposer$PositionMarker;

    move-result-object v11

    .line 1080
    .local v11, contentTypeBegin:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getContentType()[B

    move-result-object v24

    .line 1082
    .local v24, partContentType:[B
    if-nez v24, :cond_179

    .line 1084
    const/16 v30, 0x1

    goto/16 :goto_3e

    .line 1052
    .end local v4           #attachment:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .end local v11           #contentTypeBegin:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .end local v15           #ctLength:I
    .end local v20           #i:I
    .end local v24           #partContentType:[B
    .end local v27           #partNum:I
    .restart local v28       #start:[B
    :cond_148
    :try_start_148
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_171
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_148 .. :try_end_171} :catch_173

    goto/16 :goto_c6

    .line 1060
    .end local v23           #part:Lcom/wssnps/mmspdu/PduPart;
    .end local v28           #start:[B
    :catch_173
    move-exception v18

    .line 1061
    .local v18, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_da

    .line 1088
    .end local v18           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #attachment:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .restart local v11       #contentTypeBegin:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .restart local v15       #ctLength:I
    .restart local v20       #i:I
    .restart local v23       #part:Lcom/wssnps/mmspdu/PduPart;
    .restart local v24       #partContentType:[B
    .restart local v27       #partNum:I
    :cond_179
    sget-object v30, Lcom/wssnps/mmspdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1090
    .local v25, partContentTypeIdentifier:Ljava/lang/Integer;
    if-nez v25, :cond_1a9

    .line 1091
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 1100
    :goto_193
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getName()[B

    move-result-object v22

    .line 1102
    .local v22, name:[B
    if-nez v22, :cond_1b5

    .line 1103
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getFilename()[B

    move-result-object v22

    .line 1105
    if-nez v22, :cond_1b5

    .line 1106
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getContentLocation()[B

    move-result-object v22

    .line 1108
    if-nez v22, :cond_1b5

    .line 1112
    const/16 v30, 0x1

    goto/16 :goto_3e

    .line 1093
    .end local v22           #name:[B
    :cond_1a9
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendShortInteger(I)V

    goto :goto_193

    .line 1116
    .restart local v22       #name:[B
    :cond_1b5
    const/16 v30, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 1117
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 1120
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getCharset()I

    move-result v7

    .line 1121
    .local v7, charset:I
    if-eqz v7, :cond_1d9

    .line 1122
    const/16 v30, 0x81

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 1123
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/wssnps/mmspdu/PduComposer;->appendShortInteger(I)V

    .line 1126
    :cond_1d9
    invoke-virtual {v11}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->getLength()I

    move-result v13

    .line 1127
    .local v13, contentTypeLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->pop()V

    .line 1128
    int-to-long v0, v13

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendValueLength(J)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->copy()V

    .line 1132
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getContentId()[B

    move-result-object v8

    .line 1134
    .local v8, contentId:[B
    if-eqz v8, :cond_228

    .line 1135
    const/16 v30, 0xc0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 1136
    const/16 v30, 0x3c

    const/16 v31, 0x0

    aget-byte v31, v8, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_273

    const/16 v30, 0x3e

    array-length v0, v8

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    aget-byte v31, v8, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_273

    .line 1137
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/wssnps/mmspdu/PduComposer;->appendQuotedString([B)V

    .line 1144
    :cond_228
    :goto_228
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getContentLocation()[B

    move-result-object v9

    .line 1145
    .local v9, contentLocation:[B
    if-eqz v9, :cond_23c

    .line 1146
    const/16 v30, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 1147
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 1151
    :cond_23c
    invoke-virtual {v4}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->getLength()I

    move-result v19

    .line 1153
    .local v19, headerLength:I
    const/16 v17, 0x0

    .line 1154
    .local v17, dataLength:I
    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getData()[B

    move-result-object v26

    .line 1156
    .local v26, partData:[B
    if-eqz v26, :cond_29b

    .line 1157
    const/16 v30, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/wssnps/mmspdu/PduComposer;->arraycopy([BII)V

    .line 1158
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v17, v0

    .line 1204
    :cond_25f
    :goto_25f
    invoke-virtual {v4}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->getLength()I

    move-result v30

    sub-int v30, v30, v19

    move/from16 v0, v17

    move/from16 v1, v30

    if-eq v0, v1, :cond_32e

    .line 1205
    new-instance v30, Ljava/lang/RuntimeException;

    const-string v31, "BUG: Length sanity check failed"

    invoke-direct/range {v30 .. v31}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v30

    .line 1139
    .end local v9           #contentLocation:[B
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v26           #partData:[B
    :cond_273
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "<"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ">"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_228

    .line 1160
    .restart local v9       #contentLocation:[B
    .restart local v17       #dataLength:I
    .restart local v19       #headerLength:I
    .restart local v26       #partData:[B
    :cond_29b
    const/4 v14, 0x0

    .line 1161
    .local v14, cr:Ljava/io/InputStream;
    const/16 v21, 0x0

    .line 1163
    .local v21, len:I
    const/16 v30, 0x400

    :try_start_2a0
    move/from16 v0, v30

    new-array v6, v0, [B

    .line 1164
    .local v6, buffer:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v30, v0

    invoke-virtual/range {v23 .. v23}, Lcom/wssnps/mmspdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_2b1
    .catchall {:try_start_2a0 .. :try_end_2b1} :catchall_327
    .catch Ljava/io/FileNotFoundException; {:try_start_2a0 .. :try_end_2b1} :catch_303
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2b1} :catch_30f
    .catch Ljava/lang/RuntimeException; {:try_start_2a0 .. :try_end_2b1} :catch_31b

    move-result-object v14

    .line 1167
    if-nez v14, :cond_2c3

    .line 1168
    const/16 v30, 0x1

    .line 1192
    if-eqz v14, :cond_3e

    .line 1194
    :try_start_2b8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2bb
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2bb} :catch_2bd

    goto/16 :goto_3e

    .line 1196
    :catch_2bd
    move-exception v18

    .line 1197
    .end local v6           #buffer:[B
    .local v18, e:Ljava/io/IOException;
    :goto_2be
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3e

    .line 1170
    .end local v18           #e:Ljava/io/IOException;
    .restart local v6       #buffer:[B
    :cond_2c3
    :try_start_2c3
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v21

    .line 1171
    :goto_2c7
    const/16 v30, -0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_2f1

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    move/from16 v2, v21

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    move/from16 v30, v0

    add-int v30, v30, v21

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 1175
    add-int v17, v17, v21

    goto :goto_2c7

    .line 1177
    :cond_2f1
    if-eqz v14, :cond_2f6

    .line 1179
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2f6
    .catchall {:try_start_2c3 .. :try_end_2f6} :catchall_327
    .catch Ljava/io/FileNotFoundException; {:try_start_2c3 .. :try_end_2f6} :catch_303
    .catch Ljava/io/IOException; {:try_start_2c3 .. :try_end_2f6} :catch_30f
    .catch Ljava/lang/RuntimeException; {:try_start_2c3 .. :try_end_2f6} :catch_31b

    .line 1192
    :cond_2f6
    if-eqz v14, :cond_25f

    .line 1194
    :try_start_2f8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2f8 .. :try_end_2fb} :catch_2fd

    goto/16 :goto_25f

    .line 1196
    :catch_2fd
    move-exception v18

    .line 1197
    .restart local v18       #e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_25f

    .line 1181
    .end local v6           #buffer:[B
    .end local v18           #e:Ljava/io/IOException;
    :catch_303
    move-exception v18

    .line 1182
    .local v18, e:Ljava/io/FileNotFoundException;
    const/16 v30, 0x1

    .line 1192
    if-eqz v14, :cond_3e

    .line 1194
    :try_start_308
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_308 .. :try_end_30b} :catch_30d

    goto/16 :goto_3e

    .line 1196
    :catch_30d
    move-exception v18

    goto :goto_2be

    .line 1183
    .end local v18           #e:Ljava/io/FileNotFoundException;
    :catch_30f
    move-exception v18

    .line 1184
    .local v18, e:Ljava/io/IOException;
    const/16 v30, 0x1

    .line 1192
    if-eqz v14, :cond_3e

    .line 1194
    :try_start_314
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_317
    .catch Ljava/io/IOException; {:try_start_314 .. :try_end_317} :catch_319

    goto/16 :goto_3e

    .line 1196
    :catch_319
    move-exception v18

    goto :goto_2be

    .line 1185
    .end local v18           #e:Ljava/io/IOException;
    :catch_31b
    move-exception v18

    .line 1186
    .local v18, e:Ljava/lang/RuntimeException;
    const/16 v30, 0x1

    .line 1192
    if-eqz v14, :cond_3e

    .line 1194
    :try_start_320
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_323
    .catch Ljava/io/IOException; {:try_start_320 .. :try_end_323} :catch_325

    goto/16 :goto_3e

    .line 1196
    :catch_325
    move-exception v18

    goto :goto_2be

    .line 1190
    .end local v18           #e:Ljava/lang/RuntimeException;
    :catchall_327
    move-exception v30

    .line 1192
    if-eqz v14, :cond_32d

    .line 1194
    :try_start_32a
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_32d
    .catch Ljava/io/IOException; {:try_start_32a .. :try_end_32d} :catch_360

    .line 1190
    :cond_32d
    :goto_32d
    throw v30

    .line 1208
    .end local v14           #cr:Ljava/io/InputStream;
    .end local v21           #len:I
    :cond_32e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->pop()V

    .line 1209
    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendUintvarInteger(J)V

    .line 1210
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendUintvarInteger(J)V

    .line 1211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->copy()V

    .line 1072
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_10c

    .line 1214
    .end local v4           #attachment:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .end local v7           #charset:I
    .end local v8           #contentId:[B
    .end local v9           #contentLocation:[B
    .end local v11           #contentTypeBegin:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .end local v13           #contentTypeLength:I
    .end local v17           #dataLength:I
    .end local v19           #headerLength:I
    .end local v22           #name:[B
    .end local v23           #part:Lcom/wssnps/mmspdu/PduPart;
    .end local v24           #partContentType:[B
    .end local v25           #partContentTypeIdentifier:Ljava/lang/Integer;
    .end local v26           #partData:[B
    :cond_35c
    const/16 v30, 0x0

    goto/16 :goto_3e

    .line 1196
    .restart local v4       #attachment:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .restart local v7       #charset:I
    .restart local v8       #contentId:[B
    .restart local v9       #contentLocation:[B
    .restart local v11       #contentTypeBegin:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    .restart local v13       #contentTypeLength:I
    .restart local v14       #cr:Ljava/io/InputStream;
    .restart local v17       #dataLength:I
    .restart local v19       #headerLength:I
    .restart local v21       #len:I
    .restart local v22       #name:[B
    .restart local v23       #part:Lcom/wssnps/mmspdu/PduPart;
    .restart local v24       #partContentType:[B
    .restart local v25       #partContentTypeIdentifier:Ljava/lang/Integer;
    .restart local v26       #partData:[B
    :catch_360
    move-exception v18

    .line 1197
    .local v18, e:Ljava/io/IOException;
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_32d
.end method

.method private makeNotification()I
    .registers 8

    .prologue
    const/16 v6, 0x98

    const/16 v5, 0x82

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 922
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_13

    .line 923
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 924
    iput v3, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 928
    :cond_13
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 929
    invoke-virtual {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 932
    invoke-virtual {p0, v6}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 934
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-virtual {v4, v6}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 935
    .local v1, trid:[B
    if-nez v1, :cond_2e

    .line 937
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 939
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 942
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 1001
    :cond_39
    :goto_39
    return v2

    .line 947
    :cond_3a
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 950
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_39

    .line 954
    const/4 v0, 0x0

    .line 957
    .local v0, recipient:Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_51

    .line 958
    const/4 v0, 0x1

    .line 962
    :cond_51
    invoke-direct {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_58

    .line 963
    const/4 v0, 0x1

    .line 967
    :cond_58
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_61

    .line 968
    const/4 v0, 0x1

    .line 972
    :cond_61
    if-eqz v0, :cond_39

    .line 977
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 981
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 984
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 987
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 990
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 993
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 996
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    move v2, v3

    .line 1001
    goto :goto_39
.end method

.method private makeNotifyResp()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 696
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_f

    .line 697
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 698
    iput v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 702
    :cond_f
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 703
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 706
    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_22

    .line 721
    :cond_21
    :goto_21
    return v0

    .line 711
    :cond_22
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_21

    .line 716
    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    .line 721
    goto :goto_21
.end method

.method private makeReadRecInd()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 648
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_f

    .line 649
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 650
    iput v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 654
    :cond_f
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 655
    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 658
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_22

    .line 689
    :cond_21
    :goto_21
    return v0

    .line 663
    :cond_22
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_21

    .line 668
    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_21

    .line 673
    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_21

    .line 678
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 681
    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    .line 689
    goto :goto_21
.end method

.method private makeRetrieve()I
    .registers 8

    .prologue
    const/16 v6, 0x98

    const/16 v5, 0x84

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 837
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_13

    .line 838
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 839
    iput v3, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 843
    :cond_13
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 844
    invoke-virtual {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 847
    invoke-virtual {p0, v6}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 849
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-virtual {v4, v6}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 850
    .local v1, trid:[B
    if-nez v1, :cond_2e

    .line 852
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 854
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 857
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 916
    :cond_39
    :goto_39
    return v2

    .line 862
    :cond_3a
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 865
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_39

    .line 869
    const/4 v0, 0x0

    .line 872
    .local v0, recipient:Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_51

    .line 873
    const/4 v0, 0x1

    .line 877
    :cond_51
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_5a

    .line 878
    const/4 v0, 0x1

    .line 882
    :cond_5a
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_63

    .line 883
    const/4 v0, 0x1

    .line 887
    :cond_63
    if-eqz v0, :cond_39

    .line 892
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 896
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 899
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 902
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 905
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 908
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 911
    invoke-virtual {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 914
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeMessageBody()I

    move v2, v3

    .line 916
    goto :goto_39
.end method

.method private makeSendReqPdu()I
    .registers 7

    .prologue
    const/16 v5, 0x98

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 754
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v4, :cond_11

    .line 755
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 756
    iput v3, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 760
    :cond_11
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 761
    const/16 v4, 0x80

    invoke-virtual {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 764
    invoke-virtual {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 766
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mPduHeader:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-virtual {v4, v5}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 767
    .local v1, trid:[B
    if-nez v1, :cond_2e

    .line 769
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Transaction-ID is null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 771
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 774
    const/16 v4, 0x8d

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eqz v4, :cond_3a

    .line 833
    :cond_39
    :goto_39
    return v2

    .line 779
    :cond_3a
    const/16 v4, 0x85

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 782
    const/16 v4, 0x89

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-nez v4, :cond_39

    .line 786
    const/4 v0, 0x0

    .line 789
    .local v0, recipient:Z
    const/16 v4, 0x97

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_51

    .line 790
    const/4 v0, 0x1

    .line 794
    :cond_51
    const/16 v4, 0x82

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_5a

    .line 795
    const/4 v0, 0x1

    .line 799
    :cond_5a
    const/16 v4, 0x81

    invoke-direct {p0, v4}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    move-result v4

    if-eq v4, v2, :cond_63

    .line 800
    const/4 v0, 0x1

    .line 804
    :cond_63
    if-eqz v0, :cond_39

    .line 809
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 813
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 816
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 819
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 822
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 825
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendHeader(I)I

    .line 828
    const/16 v2, 0x84

    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendOctet(I)V

    .line 831
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeMessageBody()I

    move v2, v3

    .line 833
    goto :goto_39
.end method


# virtual methods
.method protected append(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 206
    iget v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 207
    return-void
.end method

.method protected appendDateValue(J)V
    .registers 3
    .parameter "date"

    .prologue
    .line 406
    invoke-virtual {p0, p1, p2}, Lcom/wssnps/mmspdu/PduComposer;->appendLongInteger(J)V

    .line 407
    return-void
.end method

.method protected appendEncodedString(Lcom/wssnps/mmspdu/EncodedStringValue;)V
    .registers 8
    .parameter "enStr"

    .prologue
    .line 334
    sget-boolean v4, Lcom/wssnps/mmspdu/PduComposer;->$assertionsDisabled:Z

    if-nez v4, :cond_c

    if-nez p1, :cond_c

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 336
    :cond_c
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 337
    .local v0, charset:I
    invoke-virtual {p1}, Lcom/wssnps/mmspdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 338
    .local v3, textString:[B
    if-nez v3, :cond_17

    .line 357
    :goto_16
    return-void

    .line 347
    :cond_17
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->newbuf()V

    .line 348
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->mark()Lcom/wssnps/mmspdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 350
    .local v2, start:Lcom/wssnps/mmspdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->appendShortInteger(I)V

    .line 351
    invoke-virtual {p0, v3}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 353
    invoke-virtual {v2}, Lcom/wssnps/mmspdu/PduComposer$PositionMarker;->getLength()I

    move-result v1

    .line 354
    .local v1, len:I
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->pop()V

    .line 355
    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/wssnps/mmspdu/PduComposer;->appendValueLength(J)V

    .line 356
    iget-object v4, p0, Lcom/wssnps/mmspdu/PduComposer;->mStack:Lcom/wssnps/mmspdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/wssnps/mmspdu/PduComposer$BufferStack;->copy()V

    goto :goto_16
.end method

.method protected appendLongInteger(J)V
    .registers 12
    .parameter "longInt"

    .prologue
    const/16 v7, 0x8

    .line 267
    move-wide v3, p1

    .line 270
    .local v3, temp:J
    const/4 v2, 0x0

    .local v2, size:I
    :goto_4
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_10

    if-ge v2, v7, :cond_10

    .line 271
    ushr-long/2addr v3, v7

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 275
    :cond_10
    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->appendShortLength(I)V

    .line 279
    add-int/lit8 v5, v2, -0x1

    mul-int/lit8 v1, v5, 0x8

    .line 281
    .local v1, shift:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v2, :cond_28

    .line 282
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 283
    add-int/lit8 v1, v1, -0x8

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 285
    :cond_28
    return-void
.end method

.method protected appendOctet(I)V
    .registers 2
    .parameter "number"

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 236
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->appendQuotedString([B)V

    .line 462
    return-void
.end method

.method protected appendQuotedString([B)V
    .registers 4
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 444
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 445
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/wssnps/mmspdu/PduComposer;->arraycopy([BII)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 447
    return-void
.end method

.method protected appendShortInteger(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 224
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 225
    return-void
.end method

.method protected appendShortLength(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 249
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .registers 3
    .parameter "str"

    .prologue
    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->appendTextString([B)V

    .line 322
    return-void
.end method

.method protected appendTextString([B)V
    .registers 5
    .parameter "text"

    .prologue
    const/16 v2, 0x7f

    const/4 v1, 0x0

    .line 300
    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_c

    .line 301
    invoke-virtual {p0, v2}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 304
    :cond_c
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/wssnps/mmspdu/PduComposer;->arraycopy([BII)V

    .line 305
    invoke-virtual {p0, v1}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 306
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .registers 14
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x7f

    .line 374
    const-wide/16 v1, 0x7f

    .line 376
    .local v1, max:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    const/4 v5, 0x5

    if-ge v0, v5, :cond_c

    .line 377
    cmp-long v5, p1, v1

    if-gez v5, :cond_20

    .line 384
    :cond_c
    :goto_c
    if-lez v0, :cond_28

    .line 385
    mul-int/lit8 v5, v0, 0x7

    ushr-long v3, p1, v5

    .line 386
    .local v3, temp:J
    and-long/2addr v3, v9

    .line 388
    const-wide/16 v5, 0x80

    or-long/2addr v5, v3

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 390
    add-int/lit8 v0, v0, -0x1

    .line 391
    goto :goto_c

    .line 381
    .end local v3           #temp:J
    :cond_20
    const/4 v5, 0x7

    shl-long v5, v1, v5

    or-long v1, v5, v9

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 393
    :cond_28
    and-long v5, p1, v9

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 394
    return-void
.end method

.method protected appendValueLength(J)V
    .registers 5
    .parameter "value"

    .prologue
    .line 423
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_b

    .line 424
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->appendShortLength(I)V

    .line 430
    :goto_a
    return-void

    .line 428
    :cond_b
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/wssnps/mmspdu/PduComposer;->append(I)V

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/wssnps/mmspdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_a
.end method

.method protected arraycopy([BII)V
    .registers 5
    .parameter "buf"
    .parameter "pos"
    .parameter "length"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 198
    iget v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/wssnps/mmspdu/PduComposer;->mPosition:I

    .line 199
    return-void
.end method

.method public make()[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/wssnps/mmspdu/PduComposer;->mPdu:Lcom/wssnps/mmspdu/GenericPdu;

    invoke-virtual {v2}, Lcom/wssnps/mmspdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 155
    .local v0, type:I
    packed-switch v0, :pswitch_data_3c

    .line 190
    :cond_a
    :goto_a
    :pswitch_a
    return-object v1

    .line 157
    :pswitch_b
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeNotification()I

    move-result v2

    if-nez v2, :cond_a

    .line 190
    :cond_11
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_a

    .line 162
    :pswitch_18
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeRetrieve()I

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    .line 167
    :pswitch_1f
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeSendReqPdu()I

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    .line 172
    :pswitch_26
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeNotifyResp()I

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    .line 177
    :pswitch_2d
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeAckInd()I

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    .line 182
    :pswitch_34
    invoke-direct {p0}, Lcom/wssnps/mmspdu/PduComposer;->makeReadRecInd()I

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    .line 155
    nop

    :pswitch_data_3c
    .packed-switch 0x80
        :pswitch_1f
        :pswitch_a
        :pswitch_b
        :pswitch_26
        :pswitch_18
        :pswitch_2d
        :pswitch_a
        :pswitch_34
    .end packed-switch
.end method
