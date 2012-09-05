.class public Lcom/wssnps/mmspdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/wssnps/mmspdu/PduBody;

.field private mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;

.field nParserdHeaderSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const-class v0, Lcom/wssnps/mmspdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    .line 74
    sput-object v1, Lcom/wssnps/mmspdu/PduParser;->mTypeParam:[B

    .line 79
    sput-object v1, Lcom/wssnps/mmspdu/PduParser;->mStartParam:[B

    return-void

    .line 31
    :cond_11
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "pduDataStream"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 64
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    .line 69
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduParser;->mBody:Lcom/wssnps/mmspdu/PduBody;

    .line 714
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssnps/mmspdu/PduParser;->nParserdHeaderSize:I

    .line 87
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 88
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/wssnps/mmspdu/PduHeaders;)Z
    .registers 40
    .parameter "headers"

    .prologue
    .line 1674
    if-nez p0, :cond_5

    .line 1675
    const/16 v37, 0x0

    .line 1881
    :goto_4
    return v37

    .line 1679
    :cond_5
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1682
    .local v8, messageType:I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1683
    .local v9, mmsVersion:I
    if-nez v9, :cond_1e

    .line 1685
    const/16 v37, 0x0

    goto :goto_4

    .line 1689
    :cond_1e
    packed-switch v8, :pswitch_data_1f6

    .line 1878
    const/16 v37, 0x0

    goto :goto_4

    .line 1692
    :pswitch_24
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1693
    .local v34, srContentType:[B
    if-nez v34, :cond_33

    .line 1694
    const/16 v37, 0x0

    goto :goto_4

    .line 1698
    :cond_33
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v35

    .line 1699
    .local v35, srFrom:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v35, :cond_42

    .line 1700
    const/16 v37, 0x0

    goto :goto_4

    .line 1704
    :cond_42
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1705
    .local v36, srTransactionId:[B
    if-nez v36, :cond_1f2

    .line 1706
    const/16 v37, 0x0

    goto :goto_4

    .line 1712
    .end local v34           #srContentType:[B
    .end local v35           #srFrom:Lcom/wssnps/mmspdu/EncodedStringValue;
    .end local v36           #srTransactionId:[B
    :pswitch_51
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 1713
    .local v32, scResponseStatus:I
    if-nez v32, :cond_60

    .line 1714
    const/16 v37, 0x0

    goto :goto_4

    .line 1718
    :cond_60
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1719
    .local v33, scTransactionId:[B
    if-nez v33, :cond_1f2

    .line 1720
    const/16 v37, 0x0

    goto :goto_4

    .line 1726
    .end local v32           #scResponseStatus:I
    .end local v33           #scTransactionId:[B
    :pswitch_6f
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1727
    .local v10, niContentLocation:[B
    if-nez v10, :cond_7e

    .line 1728
    const/16 v37, 0x0

    goto :goto_4

    .line 1732
    :cond_7e
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v11

    .line 1733
    .local v11, niExpiry:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v11

    if-nez v37, :cond_92

    .line 1734
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1738
    :cond_92
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v13

    .line 1739
    .local v13, niMessageClass:[B
    if-nez v13, :cond_a2

    .line 1740
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1744
    :cond_a2
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1745
    .local v14, niMessageSize:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v14

    if-nez v37, :cond_b6

    .line 1746
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1750
    :cond_b6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1751
    .local v16, niTransactionId:[B
    if-nez v16, :cond_1f2

    .line 1752
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1758
    .end local v10           #niContentLocation:[B
    .end local v11           #niExpiry:J
    .end local v13           #niMessageClass:[B
    .end local v14           #niMessageSize:J
    .end local v16           #niTransactionId:[B
    :pswitch_c6
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 1759
    .local v17, nriStatus:I
    if-nez v17, :cond_d6

    .line 1760
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1764
    :cond_d6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 1765
    .local v18, nriTransactionId:[B
    if-nez v18, :cond_1f2

    .line 1766
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1772
    .end local v17           #nriStatus:I
    .end local v18           #nriTransactionId:[B
    :pswitch_e6
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 1773
    .local v19, rcContentType:[B
    if-nez v19, :cond_f6

    .line 1774
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1778
    :cond_f6
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 1779
    .local v20, rcDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v20

    if-nez v37, :cond_1f2

    .line 1780
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1786
    .end local v19           #rcContentType:[B
    .end local v20           #rcDate:J
    :pswitch_10a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 1787
    .local v3, diDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v3

    if-nez v37, :cond_11e

    .line 1788
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1792
    :cond_11e
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 1793
    .local v5, diMessageId:[B
    if-nez v5, :cond_12e

    .line 1794
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1798
    :cond_12e
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 1799
    .local v6, diStatus:I
    if-nez v6, :cond_13e

    .line 1800
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1804
    :cond_13e
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValues(I)[Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v7

    .line 1805
    .local v7, diTo:[Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v7, :cond_1f2

    .line 1806
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1812
    .end local v3           #diDate:J
    .end local v5           #diMessageId:[B
    .end local v6           #diStatus:I
    .end local v7           #diTo:[Lcom/wssnps/mmspdu/EncodedStringValue;
    :pswitch_14e
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 1813
    .local v2, aiTransactionId:[B
    if-nez v2, :cond_1f2

    .line 1814
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1820
    .end local v2           #aiTransactionId:[B
    :pswitch_15e
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 1821
    .local v22, roDate:J
    const-wide/16 v37, -0x1

    cmp-long v37, v37, v22

    if-nez v37, :cond_172

    .line 1822
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1826
    :cond_172
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v24

    .line 1827
    .local v24, roFrom:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v24, :cond_182

    .line 1828
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1832
    :cond_182
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 1833
    .local v25, roMessageId:[B
    if-nez v25, :cond_192

    .line 1834
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1838
    :cond_192
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 1839
    .local v26, roReadStatus:I
    if-nez v26, :cond_1a2

    .line 1840
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1844
    :cond_1a2
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValues(I)[Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v27

    .line 1845
    .local v27, roTo:[Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v27, :cond_1f2

    .line 1846
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1852
    .end local v22           #roDate:J
    .end local v24           #roFrom:Lcom/wssnps/mmspdu/EncodedStringValue;
    .end local v25           #roMessageId:[B
    .end local v26           #roReadStatus:I
    .end local v27           #roTo:[Lcom/wssnps/mmspdu/EncodedStringValue;
    :pswitch_1b2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValue(I)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v28

    .line 1853
    .local v28, rrFrom:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v28, :cond_1c2

    .line 1854
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1858
    :cond_1c2
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 1859
    .local v29, rrMessageId:[B
    if-nez v29, :cond_1d2

    .line 1860
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1864
    :cond_1d2
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 1865
    .local v30, rrReadStatus:I
    if-nez v30, :cond_1e2

    .line 1866
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1870
    :cond_1e2
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->getEncodedStringValues(I)[Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v31

    .line 1871
    .local v31, rrTo:[Lcom/wssnps/mmspdu/EncodedStringValue;
    if-nez v31, :cond_1f2

    .line 1872
    const/16 v37, 0x0

    goto/16 :goto_4

    .line 1881
    .end local v28           #rrFrom:Lcom/wssnps/mmspdu/EncodedStringValue;
    .end local v29           #rrMessageId:[B
    .end local v30           #rrReadStatus:I
    .end local v31           #rrTo:[Lcom/wssnps/mmspdu/EncodedStringValue;
    :cond_1f2
    const/16 v37, 0x1

    goto/16 :goto_4

    .line 1689
    :pswitch_data_1f6
    .packed-switch 0x80
        :pswitch_24
        :pswitch_51
        :pswitch_6f
        :pswitch_c6
        :pswitch_e6
        :pswitch_14e
        :pswitch_10a
        :pswitch_1b2
        :pswitch_15e
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/wssnps/mmspdu/PduPart;)I
    .registers 6
    .parameter "part"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1638
    sget-boolean v4, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_e

    if-nez p0, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1639
    :cond_e
    sget-object v4, Lcom/wssnps/mmspdu/PduParser;->mTypeParam:[B

    if-nez v4, :cond_17

    sget-object v4, Lcom/wssnps/mmspdu/PduParser;->mStartParam:[B

    if-nez v4, :cond_17

    .line 1664
    :cond_16
    :goto_16
    return v2

    .line 1645
    :cond_17
    sget-object v4, Lcom/wssnps/mmspdu/PduParser;->mStartParam:[B

    if-eqz v4, :cond_2b

    .line 1646
    invoke-virtual {p0}, Lcom/wssnps/mmspdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1647
    .local v0, contentId:[B
    if-eqz v0, :cond_2b

    .line 1648
    sget-object v4, Lcom/wssnps/mmspdu/PduParser;->mStartParam:[B

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_2b

    move v2, v3

    .line 1649
    goto :goto_16

    .line 1655
    .end local v0           #contentId:[B
    :cond_2b
    sget-object v4, Lcom/wssnps/mmspdu/PduParser;->mTypeParam:[B

    if-eqz v4, :cond_16

    .line 1656
    invoke-virtual {p0}, Lcom/wssnps/mmspdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1657
    .local v1, contentType:[B
    if-eqz v1, :cond_16

    .line 1658
    sget-object v4, Lcom/wssnps/mmspdu/PduParser;->mTypeParam:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-ne v2, v4, :cond_16

    move v2, v3

    .line 1659
    goto :goto_16
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1110
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1111
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1112
    .local v0, temp:I
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1113
    :cond_1d
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 6
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v3, -0x1

    .line 1076
    sget-boolean v2, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1077
    :cond_d
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1078
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1079
    .local v1, temp:I
    sget-boolean v2, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1080
    :cond_22
    if-eq v3, v1, :cond_4c

    if-eqz v1, :cond_4c

    .line 1082
    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 1083
    invoke-static {v1}, Lcom/wssnps/mmspdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1084
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1092
    :cond_32
    :goto_32
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1093
    sget-boolean v2, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_22

    if-ne v3, v1, :cond_22

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1087
    :cond_42
    invoke-static {v1}, Lcom/wssnps/mmspdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 1088
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_32

    .line 1096
    :cond_4c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 1097
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1100
    :goto_56
    return-object v2

    :cond_57
    const/4 v2, 0x0

    goto :goto_56
.end method

.method protected static isText(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v0, 0x1

    .line 1058
    const/16 v1, 0x20

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7e

    if-le p0, v1, :cond_11

    :cond_9
    const/16 v1, 0x80

    if-lt p0, v1, :cond_12

    const/16 v1, 0xff

    if-gt p0, v1, :cond_12

    .line 1071
    :cond_11
    :goto_11
    :pswitch_11
    return v0

    .line 1062
    :cond_12
    packed-switch p0, :pswitch_data_18

    .line 1071
    :pswitch_15
    const/4 v0, 0x0

    goto :goto_11

    .line 1062
    nop

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_11
        :pswitch_11
        :pswitch_15
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .registers 3
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 1012
    const/16 v1, 0x21

    if-lt p0, v1, :cond_9

    const/16 v1, 0x7e

    if-le p0, v1, :cond_a

    .line 1039
    :cond_9
    :goto_9
    :sswitch_9
    return v0

    .line 1016
    :cond_a
    sparse-switch p0, :sswitch_data_10

    .line 1039
    const/4 v0, 0x1

    goto :goto_9

    .line 1016
    nop

    :sswitch_data_10
    .sparse-switch
        0x22 -> :sswitch_9
        0x28 -> :sswitch_9
        0x29 -> :sswitch_9
        0x2c -> :sswitch_9
        0x2f -> :sswitch_9
        0x3a -> :sswitch_9
        0x3b -> :sswitch_9
        0x3c -> :sswitch_9
        0x3d -> :sswitch_9
        0x3e -> :sswitch_9
        0x3f -> :sswitch_9
        0x40 -> :sswitch_9
        0x5b -> :sswitch_9
        0x5c -> :sswitch_9
        0x5d -> :sswitch_9
        0x7b -> :sswitch_9
        0x7d -> :sswitch_9
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .registers 1
    .parameter "text"

    .prologue
    .line 835
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 13
    .parameter "pduDataStream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1418
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_c

    if-nez p0, :cond_c

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1420
    :cond_c
    const/4 v0, 0x0

    .line 1421
    .local v0, contentType:[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1422
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1423
    .local v8, temp:I
    sget-boolean v9, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_22

    const/4 v9, -0x1

    if-ne v9, v8, :cond_22

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1424
    :cond_22
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1426
    and-int/lit16 v1, v8, 0xff

    .line 1428
    .local v1, cur:I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_ac

    .line 1429
    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1430
    .local v5, length:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1431
    .local v7, startPos:I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1432
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1433
    sget-boolean v9, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v9, :cond_48

    const/4 v9, -0x1

    if-ne v9, v8, :cond_48

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 1434
    :cond_48
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1435
    and-int/lit16 v3, v8, 0xff

    .line 1437
    .local v3, first:I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_7d

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_7d

    .line 1438
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1453
    :goto_5a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1454
    .local v2, endPos:I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1455
    .local v6, parameterLen:I
    if-lez v6, :cond_6b

    .line 1456
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/wssnps/mmspdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1459
    :cond_6b
    if-gez v6, :cond_b5

    .line 1460
    const/4 v9, 0x1

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1461
    sget-object v9, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1470
    .end local v2           #endPos:I
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v6           #parameterLen:I
    .end local v7           #startPos:I
    :goto_7c
    return-object v9

    .line 1439
    .restart local v3       #first:I
    .restart local v5       #length:I
    .restart local v7       #startPos:I
    :cond_7d
    const/16 v9, 0x7f

    if-le v3, v9, :cond_9c

    .line 1440
    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1442
    .local v4, index:I
    sget-object v9, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_93

    .line 1443
    sget-object v9, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_5a

    .line 1445
    :cond_93
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1446
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_5a

    .line 1449
    .end local v4           #index:I
    :cond_9c
    const/4 v9, 0x1

    const-string v10, "Corrupt content-type"

    invoke-static {v9, v10}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1450
    sget-object v9, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    goto :goto_7c

    .line 1463
    .end local v3           #first:I
    .end local v5           #length:I
    .end local v7           #startPos:I
    :cond_ac
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_b7

    .line 1464
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :cond_b5
    :goto_b5
    move-object v9, v0

    .line 1470
    goto :goto_7c

    .line 1466
    :cond_b7
    sget-object v9, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_b5
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 22
    .parameter "pduDataStream"
    .parameter
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1243
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v17, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_c

    if-nez p0, :cond_c

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1244
    :cond_c
    sget-boolean v17, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_1c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-gtz v17, :cond_1c

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1246
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v14

    .line 1247
    .local v14, startPos:I
    const/4 v15, 0x0

    .line 1248
    .local v15, tempPos:I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1249
    .local v10, lastLen:I
    :goto_25
    if-lez v10, :cond_1a0

    .line 1250
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v12

    .line 1251
    .local v12, param:I
    sget-boolean v17, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v17, :cond_3b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v12, :cond_3b

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 1252
    :cond_3b
    add-int/lit8 v10, v10, -0x1

    .line 1254
    sparse-switch v12, :sswitch_data_1aa

    .line 1389
    const/16 v17, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/wssnps/mmspdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19d

    .line 1390
    const/16 v17, 0x1

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_25

    .line 1270
    :sswitch_56
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1271
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1272
    .local v7, first:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1273
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v7, v0, :cond_a1

    .line 1275
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1277
    .local v9, index:I
    sget-object v17, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_94

    .line 1278
    sget-object v17, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v17, v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    .line 1279
    .local v16, type:[B
    if-eqz p1, :cond_94

    .line 1281
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    .end local v9           #index:I
    .end local v16           #type:[B
    :cond_94
    :goto_94
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1295
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1296
    goto :goto_25

    .line 1288
    :cond_a1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 1289
    .restart local v16       #type:[B
    if-eqz v16, :cond_94

    if-eqz p1, :cond_94

    .line 1290
    const/16 v17, 0x83

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_94

    .line 1313
    .end local v7           #first:I
    .end local v16           #type:[B
    :sswitch_bf
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v13

    .line 1314
    .local v13, start:[B
    if-eqz v13, :cond_da

    if-eqz p1, :cond_da

    .line 1315
    const/16 v17, 0x99

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    :cond_da
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1319
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1320
    goto/16 :goto_25

    .line 1337
    .end local v13           #start:[B
    :sswitch_e8
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1338
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1339
    .local v8, firstValue:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1341
    const/16 v17, 0x20

    move/from16 v0, v17

    if-le v8, v0, :cond_104

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v8, v0, :cond_106

    :cond_104
    if-nez v8, :cond_157

    .line 1344
    :cond_106
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1346
    .local v5, charsetStr:[B
    :try_start_110
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v17 .. v17}, Lcom/wssnps/mmspdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v4

    .line 1348
    .local v4, charsetInt:I
    if-eqz p1, :cond_130

    .line 1349
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_130
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_110 .. :try_end_130} :catch_13e

    .line 1365
    .end local v4           #charsetInt:I
    .end local v5           #charsetStr:[B
    :cond_130
    :goto_130
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1366
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1367
    goto/16 :goto_25

    .line 1351
    .restart local v5       #charsetStr:[B
    :catch_13e
    move-exception v6

    .line 1354
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    if-eqz p1, :cond_130

    .line 1355
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_130

    .line 1359
    .end local v5           #charsetStr:[B
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :cond_157
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v3, v0

    .line 1360
    .local v3, charset:I
    if-eqz p1, :cond_130

    .line 1361
    const/16 v17, 0x81

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_130

    .line 1379
    .end local v3           #charset:I
    .end local v8           #firstValue:I
    :sswitch_174
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1380
    .local v11, name:[B
    if-eqz v11, :cond_18f

    if-eqz p1, :cond_18f

    .line 1381
    const/16 v17, 0x97

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    :cond_18f
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1385
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    sub-int v18, v14, v15

    sub-int v10, v17, v18

    .line 1386
    goto/16 :goto_25

    .line 1392
    .end local v11           #name:[B
    :cond_19d
    const/4 v10, 0x0

    goto/16 :goto_25

    .line 1398
    .end local v12           #param:I
    :cond_1a0
    if-eqz v10, :cond_1a9

    .line 1399
    const/16 v17, 0x1

    const-string v18, "Corrupt Content-Type"

    invoke-static/range {v17 .. v18}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1401
    :cond_1a9
    return-void

    .line 1254
    :sswitch_data_1aa
    .sparse-switch
        0x81 -> :sswitch_e8
        0x83 -> :sswitch_56
        0x85 -> :sswitch_174
        0x89 -> :sswitch_56
        0x8a -> :sswitch_bf
        0x97 -> :sswitch_174
        0x99 -> :sswitch_bf
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/EncodedStringValue;
    .registers 9
    .parameter "pduDataStream"

    .prologue
    .line 911
    sget-boolean v7, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_c

    if-nez p0, :cond_c

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 912
    :cond_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 913
    const/4 v3, 0x0

    .line 914
    .local v3, returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 915
    .local v0, charset:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 916
    .local v5, temp:I
    sget-boolean v7, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v7, :cond_23

    const/4 v7, -0x1

    if-ne v7, v5, :cond_23

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 917
    :cond_23
    and-int/lit16 v2, v5, 0xff

    .line 919
    .local v2, first:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 920
    const/16 v7, 0x20

    if-ge v2, v7, :cond_33

    .line 921
    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 923
    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 926
    :cond_33
    const/4 v7, 0x0

    invoke-static {p0, v7}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 929
    .local v6, textString:[B
    if-eqz v0, :cond_42

    .line 930
    :try_start_3a
    new-instance v4, Lcom/wssnps/mmspdu/EncodedStringValue;

    invoke-direct {v4, v0, v6}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>(I[B)V

    .end local v3           #returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    .local v4, returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    :goto_40
    move-object v7, v3

    .line 938
    :goto_41
    return-object v7

    .line 932
    :cond_42
    new-instance v4, Lcom/wssnps/mmspdu/EncodedStringValue;

    invoke-direct {v4, v6}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>([B)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_47} :catch_49

    .end local v3           #returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    .restart local v4       #returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    move-object v3, v4

    .end local v4           #returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    .restart local v3       #returnValue:Lcom/wssnps/mmspdu/EncodedStringValue;
    goto :goto_40

    .line 934
    :catch_49
    move-exception v1

    .line 935
    .local v1, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_41
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 4
    .parameter "pduDataStream"

    .prologue
    .line 1185
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1186
    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1187
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1188
    .local v0, temp:I
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1189
    :cond_21
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1190
    const/16 v1, 0x7f

    if-le v0, v1, :cond_2e

    .line 1191
    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    .line 1193
    :goto_2d
    return-wide v1

    :cond_2e
    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    goto :goto_2d
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 10
    .parameter "pduDataStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v7, -0x1

    .line 1153
    sget-boolean v5, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_f

    if-nez p0, :cond_f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1154
    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1155
    .local v4, temp:I
    sget-boolean v5, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_1f

    if-ne v7, v4, :cond_1f

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1156
    :cond_1f
    and-int/lit16 v0, v4, 0xff

    .line 1158
    .local v0, count:I
    if-le v0, v8, :cond_2b

    .line 1159
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1162
    :cond_2b
    const-wide/16 v2, 0x0

    .line 1164
    .local v2, result:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    if-ge v1, v0, :cond_48

    .line 1165
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1166
    sget-boolean v5, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_40

    if-ne v7, v4, :cond_40

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1167
    :cond_40
    shl-long/2addr v2, v8

    .line 1168
    and-int/lit16 v5, v4, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1164
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 1171
    :cond_48
    return-wide v2
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/wssnps/mmspdu/PduPart;I)Z
    .registers 21
    .parameter "pduDataStream"
    .parameter "part"
    .parameter "length"

    .prologue
    .line 1483
    sget-boolean v15, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_c

    if-nez p0, :cond_c

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1484
    :cond_c
    sget-boolean v15, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_18

    if-nez p1, :cond_18

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1485
    :cond_18
    sget-boolean v15, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_24

    if-gtz p2, :cond_24

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1503
    :cond_24
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1504
    .local v7, startPos:I
    const/4 v10, 0x0

    .line 1505
    .local v10, tempPos:I
    move/from16 v5, p2

    .line 1506
    .local v5, lastLen:I
    :cond_2b
    :goto_2b
    if-lez v5, :cond_15c

    .line 1507
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1508
    .local v3, header:I
    sget-boolean v15, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v15, :cond_3e

    const/4 v15, -0x1

    if-ne v15, v3, :cond_3e

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1509
    :cond_3e
    add-int/lit8 v5, v5, -0x1

    .line 1511
    const/16 v15, 0x7f

    if-le v3, v15, :cond_10e

    .line 1513
    sparse-switch v3, :sswitch_data_16a

    .line 1591
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/wssnps/mmspdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_10b

    .line 1592
    const/4 v15, 0x1

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1593
    const/4 v15, 0x0

    .line 1627
    .end local v3           #header:I
    :goto_59
    return v15

    .line 1519
    .restart local v3       #header:I
    :sswitch_5a
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1520
    .local v2, contentLocation:[B
    if-eqz v2, :cond_68

    .line 1521
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/wssnps/mmspdu/PduPart;->setContentLocation([B)V

    .line 1524
    :cond_68
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1525
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1526
    goto :goto_2b

    .line 1532
    .end local v2           #contentLocation:[B
    :sswitch_71
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1533
    .local v1, contentId:[B
    if-eqz v1, :cond_7f

    .line 1534
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/PduPart;->setContentId([B)V

    .line 1537
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1538
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1539
    goto :goto_2b

    .line 1550
    .end local v1           #contentId:[B
    :sswitch_88
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1551
    .local v6, len:I
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1552
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1553
    .local v13, thisStartPos:I
    const/4 v12, 0x0

    .line 1554
    .local v12, thisEndPos:I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1556
    .local v14, value:I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_e3

    .line 1557
    sget-object v15, Lcom/wssnps/mmspdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/wssnps/mmspdu/PduPart;->setContentDisposition([B)V

    .line 1569
    :goto_a6
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1570
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_d9

    .line 1571
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1572
    const/16 v15, 0x98

    if-ne v14, v15, :cond_c2

    .line 1573
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/wssnps/mmspdu/PduPart;->setFilename([B)V

    .line 1577
    :cond_c2
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1578
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_d9

    .line 1579
    sub-int v15, v13, v12

    sub-int v4, v6, v15

    .line 1580
    .local v4, last:I
    new-array v8, v4, [B

    .line 1581
    .local v8, temp:[B
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v15

    if-ltz v15, :cond_2b

    .line 1586
    .end local v4           #last:I
    .end local v8           #temp:[B
    :cond_d9
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1587
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1588
    goto/16 :goto_2b

    .line 1558
    :cond_e3
    const/16 v15, 0x81

    if-ne v14, v15, :cond_ef

    .line 1559
    sget-object v15, Lcom/wssnps/mmspdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/wssnps/mmspdu/PduPart;->setContentDisposition([B)V

    goto :goto_a6

    .line 1560
    :cond_ef
    const/16 v15, 0x82

    if-ne v14, v15, :cond_fb

    .line 1561
    sget-object v15, Lcom/wssnps/mmspdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/wssnps/mmspdu/PduPart;->setContentDisposition([B)V

    goto :goto_a6

    .line 1563
    :cond_fb
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1565
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/wssnps/mmspdu/PduPart;->setContentDisposition([B)V

    goto :goto_a6

    .line 1595
    .end local v6           #len:I
    .end local v12           #thisEndPos:I
    .end local v13           #thisStartPos:I
    .end local v14           #value:I
    :cond_10b
    const/4 v5, 0x0

    goto/16 :goto_2b

    .line 1598
    :cond_10e
    const/16 v15, 0x20

    if-lt v3, v15, :cond_145

    const/16 v15, 0x7f

    if-gt v3, v15, :cond_145

    .line 1600
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    .line 1601
    .local v9, tempHeader:[B
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1604
    .local v11, tempValue:[B
    const/4 v15, 0x1

    const-string v16, "Content-Transfer-Encoding"

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_13b

    .line 1606
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/wssnps/mmspdu/PduPart;->setContentTransferEncoding([B)V

    .line 1609
    :cond_13b
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1610
    sub-int v15, v7, v10

    sub-int v5, p2, v15

    .line 1611
    goto/16 :goto_2b

    .line 1614
    .end local v9           #tempHeader:[B
    .end local v11           #tempValue:[B
    :cond_145
    const/4 v15, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/wssnps/mmspdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v16

    move/from16 v0, v16

    if-ne v15, v0, :cond_159

    .line 1615
    const/4 v15, 0x1

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1616
    const/4 v15, 0x0

    goto/16 :goto_59

    .line 1618
    :cond_159
    const/4 v5, 0x0

    goto/16 :goto_2b

    .line 1622
    .end local v3           #header:I
    :cond_15c
    if-eqz v5, :cond_167

    .line 1623
    const/4 v15, 0x1

    const-string v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1624
    const/4 v15, 0x0

    goto/16 :goto_59

    .line 1627
    :cond_167
    const/4 v15, 0x1

    goto/16 :goto_59

    .line 1513
    :sswitch_data_16a
    .sparse-switch
        0x8e -> :sswitch_5a
        0xae -> :sswitch_88
        0xc0 -> :sswitch_71
        0xc5 -> :sswitch_88
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/PduBody;
    .registers 21
    .parameter "pduDataStream"

    .prologue
    .line 727
    if-nez p0, :cond_4

    .line 728
    const/4 v2, 0x0

    .line 825
    :cond_3
    :goto_3
    return-object v2

    .line 731
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 732
    .local v5, count:I
    new-instance v2, Lcom/wssnps/mmspdu/PduBody;

    invoke-direct {v2}, Lcom/wssnps/mmspdu/PduBody;-><init>()V

    .line 734
    .local v2, body:Lcom/wssnps/mmspdu/PduBody;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_e
    if-ge v10, v5, :cond_3

    .line 735
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 736
    .local v9, headerLength:I
    invoke-static/range {p0 .. p0}, Lcom/wssnps/mmspdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 737
    .local v6, dataLength:I
    new-instance v13, Lcom/wssnps/mmspdu/PduPart;

    invoke-direct {v13}, Lcom/wssnps/mmspdu/PduPart;-><init>()V

    .line 738
    .local v13, part:Lcom/wssnps/mmspdu/PduPart;
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v17

    .line 739
    .local v17, startPos:I
    if-gtz v17, :cond_25

    .line 741
    const/4 v2, 0x0

    goto :goto_3

    .line 745
    :cond_25
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/wssnps/mmspdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v4

    .line 747
    .local v4, contentType:[B
    if-eqz v4, :cond_7b

    .line 748
    invoke-virtual {v13, v4}, Lcom/wssnps/mmspdu/PduPart;->setContentType([B)V

    .line 754
    :goto_35
    const/16 v18, 0x97

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v12, v18

    check-cast v12, [B

    .line 755
    .local v12, name:[B
    if-eqz v12, :cond_4c

    .line 756
    invoke-virtual {v13, v12}, Lcom/wssnps/mmspdu/PduPart;->setName([B)V

    .line 760
    :cond_4c
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 761
    .local v3, charset:Ljava/lang/Integer;
    if-eqz v3, :cond_65

    .line 762
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/wssnps/mmspdu/PduPart;->setCharset(I)V

    .line 766
    :cond_65
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 767
    .local v8, endPos:I
    sub-int v18, v17, v8

    sub-int v16, v9, v18

    .line 768
    .local v16, partHeaderLen:I
    if-lez v16, :cond_8b

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v13, v1}, Lcom/wssnps/mmspdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/wssnps/mmspdu/PduPart;I)Z

    move-result v18

    if-nez v18, :cond_90

    .line 771
    const/4 v2, 0x0

    goto :goto_3

    .line 750
    .end local v3           #charset:Ljava/lang/Integer;
    .end local v8           #endPos:I
    .end local v12           #name:[B
    .end local v16           #partHeaderLen:I
    :cond_7b
    sget-object v18, Lcom/wssnps/mmspdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/wssnps/mmspdu/PduPart;->setContentType([B)V

    goto :goto_35

    .line 773
    .restart local v3       #charset:Ljava/lang/Integer;
    .restart local v8       #endPos:I
    .restart local v12       #name:[B
    .restart local v16       #partHeaderLen:I
    :cond_8b
    if-gez v16, :cond_90

    .line 775
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 781
    :cond_90
    invoke-virtual {v13}, Lcom/wssnps/mmspdu/PduPart;->getContentLocation()[B

    move-result-object v18

    if-nez v18, :cond_b9

    invoke-virtual {v13}, Lcom/wssnps/mmspdu/PduPart;->getName()[B

    move-result-object v18

    if-nez v18, :cond_b9

    invoke-virtual {v13}, Lcom/wssnps/mmspdu/PduPart;->getFilename()[B

    move-result-object v18

    if-nez v18, :cond_b9

    invoke-virtual {v13}, Lcom/wssnps/mmspdu/PduPart;->getContentId()[B

    move-result-object v18

    if-nez v18, :cond_b9

    .line 785
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/wssnps/mmspdu/PduPart;->setContentLocation([B)V

    .line 790
    :cond_b9
    if-lez v6, :cond_101

    .line 791
    new-array v14, v6, [B

    .line 792
    .local v14, partData:[B
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v18

    if-gez v18, :cond_cc

    .line 793
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 795
    :cond_cc
    invoke-virtual {v13}, Lcom/wssnps/mmspdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v15

    .line 796
    .local v15, partDataEncoding:[B
    if-eqz v15, :cond_e5

    .line 797
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v15}, Ljava/lang/String;-><init>([B)V

    .line 798
    .local v7, encoding:Ljava/lang/String;
    const-string v18, "base64"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_ef

    .line 800
    invoke-static {v14}, Lcom/wssnps/mmspdu/Base64;->decodeBase64([B)[B

    move-result-object v14

    .line 808
    .end local v7           #encoding:Ljava/lang/String;
    :cond_e5
    :goto_e5
    if-nez v14, :cond_fe

    .line 809
    const-string v18, "Decode part data error!"

    invoke-static/range {v18 .. v18}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 810
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 801
    .restart local v7       #encoding:Ljava/lang/String;
    :cond_ef
    const-string v18, "quoted-printable"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e5

    .line 803
    invoke-static {v14}, Lcom/wssnps/mmspdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v14

    goto :goto_e5

    .line 812
    .end local v7           #encoding:Ljava/lang/String;
    :cond_fe
    invoke-virtual {v13, v14}, Lcom/wssnps/mmspdu/PduPart;->setData([B)V

    .line 816
    .end local v14           #partData:[B
    .end local v15           #partDataEncoding:[B
    :cond_101
    invoke-static {v13}, Lcom/wssnps/mmspdu/PduParser;->checkPartPosition(Lcom/wssnps/mmspdu/PduPart;)I

    move-result v18

    if-nez v18, :cond_112

    .line 818
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v2, v0, v13}, Lcom/wssnps/mmspdu/PduBody;->addPart(ILcom/wssnps/mmspdu/PduPart;)V

    .line 734
    :goto_10e
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_e

    .line 821
    :cond_112
    invoke-virtual {v2, v13}, Lcom/wssnps/mmspdu/PduBody;->addPart(Lcom/wssnps/mmspdu/PduPart;)Z

    goto :goto_10e
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 3
    .parameter "pduDataStream"

    .prologue
    .line 1130
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_c

    if-nez p0, :cond_c

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1131
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1132
    .local v0, temp:I
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1d

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1133
    :cond_1d
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"

    .prologue
    const/4 v3, -0x1

    .line 849
    sget-boolean v2, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_d

    if-nez p0, :cond_d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 850
    :cond_d
    const/4 v0, 0x0

    .line 851
    .local v0, result:I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 852
    .local v1, temp:I
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 868
    :goto_15
    return v2

    .line 856
    :cond_16
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_27

    .line 857
    shl-int/lit8 v0, v0, 0x7

    .line 858
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 859
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 860
    if-ne v1, v3, :cond_16

    move v2, v1

    .line 861
    goto :goto_15

    .line 865
    :cond_27
    shl-int/lit8 v0, v0, 0x7

    .line 866
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    move v2, v0

    .line 868
    goto :goto_15
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 5
    .parameter "pduDataStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 886
    sget-boolean v2, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 887
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 888
    .local v1, temp:I
    sget-boolean v2, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1d

    const/4 v2, -0x1

    if-ne v2, v1, :cond_1d

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 889
    :cond_1d
    and-int/lit16 v0, v1, 0xff

    .line 891
    .local v0, first:I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_24

    .line 894
    .end local v0           #first:I
    :goto_23
    return v0

    .line 893
    .restart local v0       #first:I
    :cond_24
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_2d

    .line 894
    invoke-static {p0}, Lcom/wssnps/mmspdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_23

    .line 897
    :cond_2d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5
    .parameter "pduDataStream"
    .parameter "stringType"

    .prologue
    const/4 v2, 0x1

    .line 950
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    if-nez p0, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 968
    :cond_d
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 971
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 972
    .local v0, temp:I
    sget-boolean v1, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_21

    const/4 v1, -0x1

    if-ne v1, v0, :cond_21

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 973
    :cond_21
    if-ne v2, p1, :cond_2f

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2f

    .line 976
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 991
    :goto_2a
    invoke-static {p0, p1}, Lcom/wssnps/mmspdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 977
    :cond_2f
    if-nez p1, :cond_39

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_39

    .line 980
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_2a

    .line 983
    :cond_39
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_2a
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 5
    .parameter "pduDataStream"
    .parameter "length"

    .prologue
    .line 1205
    sget-boolean v2, Lcom/wssnps/mmspdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_c

    if-nez p0, :cond_c

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1206
    :cond_c
    new-array v0, p1, [B

    .line 1207
    .local v0, area:[B
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1208
    .local v1, readLen:I
    if-ge v1, p1, :cond_16

    .line 1209
    const/4 v1, -0x1

    .line 1211
    .end local v1           #readLen:I
    :cond_16
    return v1
.end method


# virtual methods
.method public getParserdHeaderSize()I
    .registers 2

    .prologue
    .line 717
    iget v0, p0, Lcom/wssnps/mmspdu/PduParser;->nParserdHeaderSize:I

    return v0
.end method

.method public parse()Lcom/wssnps/mmspdu/GenericPdu;
    .registers 15

    .prologue
    const/4 v11, 0x0

    .line 97
    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v12, :cond_6

    .line 176
    :cond_5
    :goto_5
    return-object v11

    .line 102
    :cond_6
    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v12}, Lcom/wssnps/mmspdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/PduHeaders;

    move-result-object v12

    iput-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    .line 103
    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    if-eqz v12, :cond_5

    .line 109
    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    const/16 v13, 0x8c

    invoke-virtual {v12, v13}, Lcom/wssnps/mmspdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 112
    .local v4, messageType:I
    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-static {v12}, Lcom/wssnps/mmspdu/PduParser;->checkMandatoryHeader(Lcom/wssnps/mmspdu/PduHeaders;)Z

    move-result v12

    if-nez v12, :cond_28

    .line 113
    const-string v12, "check mandatory headers failed!"

    invoke-static {v12}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 117
    :cond_28
    const/16 v12, 0x80

    if-eq v12, v4, :cond_30

    const/16 v12, 0x84

    if-ne v12, v4, :cond_3c

    .line 120
    :cond_30
    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v12}, Lcom/wssnps/mmspdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/PduBody;

    move-result-object v12

    iput-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mBody:Lcom/wssnps/mmspdu/PduBody;

    .line 121
    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mBody:Lcom/wssnps/mmspdu/PduBody;

    if-eqz v12, :cond_5

    .line 127
    :cond_3c
    packed-switch v4, :pswitch_data_ba

    .line 175
    const-string v12, "Parser doesn\'t support this message type in this version!"

    invoke-static {v12}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_5

    .line 129
    :pswitch_45
    new-instance v11, Lcom/wssnps/mmspdu/SendReq;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    iget-object v13, p0, Lcom/wssnps/mmspdu/PduParser;->mBody:Lcom/wssnps/mmspdu/PduBody;

    invoke-direct {v11, v12, v13}, Lcom/wssnps/mmspdu/SendReq;-><init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V

    .line 130
    .local v11, sendReq:Lcom/wssnps/mmspdu/SendReq;
    goto :goto_5

    .line 132
    .end local v11           #sendReq:Lcom/wssnps/mmspdu/SendReq;
    :pswitch_4f
    new-instance v10, Lcom/wssnps/mmspdu/SendConf;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v10, v12}, Lcom/wssnps/mmspdu/SendConf;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .local v10, sendConf:Lcom/wssnps/mmspdu/SendConf;
    move-object v11, v10

    .line 133
    goto :goto_5

    .line 135
    .end local v10           #sendConf:Lcom/wssnps/mmspdu/SendConf;
    :pswitch_58
    new-instance v5, Lcom/wssnps/mmspdu/NotificationInd;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v5, v12}, Lcom/wssnps/mmspdu/NotificationInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .local v5, notificationInd:Lcom/wssnps/mmspdu/NotificationInd;
    move-object v11, v5

    .line 137
    goto :goto_5

    .line 139
    .end local v5           #notificationInd:Lcom/wssnps/mmspdu/NotificationInd;
    :pswitch_61
    new-instance v6, Lcom/wssnps/mmspdu/NotifyRespInd;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v6, v12}, Lcom/wssnps/mmspdu/NotifyRespInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .local v6, notifyRespInd:Lcom/wssnps/mmspdu/NotifyRespInd;
    move-object v11, v6

    .line 141
    goto :goto_5

    .line 143
    .end local v6           #notifyRespInd:Lcom/wssnps/mmspdu/NotifyRespInd;
    :pswitch_6a
    new-instance v9, Lcom/wssnps/mmspdu/RetrieveConf;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    iget-object v13, p0, Lcom/wssnps/mmspdu/PduParser;->mBody:Lcom/wssnps/mmspdu/PduBody;

    invoke-direct {v9, v12, v13}, Lcom/wssnps/mmspdu/RetrieveConf;-><init>(Lcom/wssnps/mmspdu/PduHeaders;Lcom/wssnps/mmspdu/PduBody;)V

    .line 146
    .local v9, retrieveConf:Lcom/wssnps/mmspdu/RetrieveConf;
    invoke-virtual {v9}, Lcom/wssnps/mmspdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 147
    .local v1, contentType:[B
    if-eqz v1, :cond_5

    .line 150
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 151
    .local v2, ctTypeStr:Ljava/lang/String;
    const-string v12, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8e

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_8e
    move-object v11, v9

    .line 155
    goto/16 :goto_5

    .line 159
    .end local v1           #contentType:[B
    .end local v2           #ctTypeStr:Ljava/lang/String;
    .end local v9           #retrieveConf:Lcom/wssnps/mmspdu/RetrieveConf;
    :pswitch_91
    new-instance v3, Lcom/wssnps/mmspdu/DeliveryInd;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v3, v12}, Lcom/wssnps/mmspdu/DeliveryInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .local v3, deliveryInd:Lcom/wssnps/mmspdu/DeliveryInd;
    move-object v11, v3

    .line 161
    goto/16 :goto_5

    .line 163
    .end local v3           #deliveryInd:Lcom/wssnps/mmspdu/DeliveryInd;
    :pswitch_9b
    new-instance v0, Lcom/wssnps/mmspdu/AcknowledgeInd;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v0, v12}, Lcom/wssnps/mmspdu/AcknowledgeInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .local v0, acknowledgeInd:Lcom/wssnps/mmspdu/AcknowledgeInd;
    move-object v11, v0

    .line 165
    goto/16 :goto_5

    .line 167
    .end local v0           #acknowledgeInd:Lcom/wssnps/mmspdu/AcknowledgeInd;
    :pswitch_a5
    new-instance v7, Lcom/wssnps/mmspdu/ReadOrigInd;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v7, v12}, Lcom/wssnps/mmspdu/ReadOrigInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .local v7, readOrigInd:Lcom/wssnps/mmspdu/ReadOrigInd;
    move-object v11, v7

    .line 169
    goto/16 :goto_5

    .line 171
    .end local v7           #readOrigInd:Lcom/wssnps/mmspdu/ReadOrigInd;
    :pswitch_af
    new-instance v8, Lcom/wssnps/mmspdu/ReadRecInd;

    iget-object v12, p0, Lcom/wssnps/mmspdu/PduParser;->mHeaders:Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v8, v12}, Lcom/wssnps/mmspdu/ReadRecInd;-><init>(Lcom/wssnps/mmspdu/PduHeaders;)V

    .local v8, readRecInd:Lcom/wssnps/mmspdu/ReadRecInd;
    move-object v11, v8

    .line 173
    goto/16 :goto_5

    .line 127
    nop

    :pswitch_data_ba
    .packed-switch 0x80
        :pswitch_45
        :pswitch_4f
        :pswitch_58
        :pswitch_61
        :pswitch_6a
        :pswitch_9b
        :pswitch_91
        :pswitch_af
        :pswitch_a5
    .end packed-switch
.end method

.method public parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/PduHeaders;
    .registers 34
    .parameter "pduDataStream"

    .prologue
    .line 191
    if-nez p1, :cond_4

    .line 192
    const/4 v12, 0x0

    .line 711
    :goto_3
    return-object v12

    .line 195
    :cond_4
    const/4 v13, 0x1

    .line 196
    .local v13, keepParsing:Z
    new-instance v12, Lcom/wssnps/mmspdu/PduHeaders;

    invoke-direct {v12}, Lcom/wssnps/mmspdu/PduHeaders;-><init>()V

    .line 197
    .local v12, headers:Lcom/wssnps/mmspdu/PduHeaders;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 199
    .local v4, beginpos:I
    :cond_e
    :goto_e
    if-eqz v13, :cond_545

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v28

    if-lez v28, :cond_545

    .line 200
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v11

    .line 201
    .local v11, headerField:I
    packed-switch v11, :pswitch_data_554

    .line 701
    :pswitch_1d
    const-string v28, "Unknown header"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_e

    .line 204
    :pswitch_23
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 205
    .local v17, messageType:I
    packed-switch v17, :pswitch_data_5d6

    .line 228
    :try_start_2a
    move/from16 v0, v17

    invoke-virtual {v12, v0, v11}, Lcom/wssnps/mmspdu/PduHeaders;->setOctet(II)V
    :try_end_2f
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_2a .. :try_end_2f} :catch_30
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2f} :catch_5b

    goto :goto_e

    .line 229
    :catch_30
    move-exception v6

    .line 230
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 232
    const/4 v12, 0x0

    goto :goto_3

    .line 222
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_59
    const/4 v12, 0x0

    goto :goto_3

    .line 233
    :catch_5b
    move-exception v6

    .line 234
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 235
    const/4 v12, 0x0

    goto :goto_3

    .line 268
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v17           #messageType:I
    :pswitch_76
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v25

    .line 271
    .local v25, value:I
    :try_start_7a
    move/from16 v0, v25

    invoke-virtual {v12, v0, v11}, Lcom/wssnps/mmspdu/PduHeaders;->setOctet(II)V
    :try_end_7f
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7a .. :try_end_7f} :catch_80
    .catch Ljava/lang/RuntimeException; {:try_start_7a .. :try_end_7f} :catch_aa

    goto :goto_e

    .line 272
    :catch_80
    move-exception v6

    .line 273
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 275
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 276
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_aa
    move-exception v6

    .line 277
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 278
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 289
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:I
    :pswitch_c6
    :try_start_c6
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 290
    .local v25, value:J
    move-wide/from16 v0, v25

    invoke-virtual {v12, v0, v1, v11}, Lcom/wssnps/mmspdu/PduHeaders;->setLongInteger(JI)V
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_c6 .. :try_end_cf} :catch_d1

    goto/16 :goto_e

    .line 291
    .end local v25           #value:J
    :catch_d1
    move-exception v6

    .line 292
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 293
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 304
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_ed
    :try_start_ed
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v25

    .line 305
    .restart local v25       #value:J
    move-wide/from16 v0, v25

    invoke-virtual {v12, v0, v1, v11}, Lcom/wssnps/mmspdu/PduHeaders;->setLongInteger(JI)V
    :try_end_f6
    .catch Ljava/lang/RuntimeException; {:try_start_ed .. :try_end_f6} :catch_f8

    goto/16 :goto_e

    .line 306
    .end local v25           #value:J
    :catch_f8
    move-exception v6

    .line 307
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 308
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 334
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_114
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v25

    .line 335
    .local v25, value:[B
    if-eqz v25, :cond_e

    .line 337
    :try_start_120
    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v11}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V
    :try_end_125
    .catch Ljava/lang/NullPointerException; {:try_start_120 .. :try_end_125} :catch_127
    .catch Ljava/lang/RuntimeException; {:try_start_120 .. :try_end_125} :catch_12f

    goto/16 :goto_e

    .line 338
    :catch_127
    move-exception v6

    .line 339
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 340
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_12f
    move-exception v6

    .line 341
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 342
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 358
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:[B
    :pswitch_14b
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v25

    .line 360
    .local v25, value:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-eqz v25, :cond_e

    .line 362
    :try_start_151
    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v11}, Lcom/wssnps/mmspdu/PduHeaders;->setEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V
    :try_end_156
    .catch Ljava/lang/NullPointerException; {:try_start_151 .. :try_end_156} :catch_158
    .catch Ljava/lang/RuntimeException; {:try_start_151 .. :try_end_156} :catch_160

    goto/16 :goto_e

    .line 363
    :catch_158
    move-exception v6

    .line 364
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 365
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_160
    move-exception v6

    .line 366
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 367
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 378
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/wssnps/mmspdu/EncodedStringValue;
    :pswitch_17c
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v25

    .line 380
    .restart local v25       #value:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-eqz v25, :cond_e

    .line 381
    invoke-virtual/range {v25 .. v25}, Lcom/wssnps/mmspdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 382
    .local v3, address:[B
    if-eqz v3, :cond_1b0

    .line 383
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 384
    .local v21, str:Ljava/lang/String;
    const/16 v28, 0x2f

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 385
    .local v7, endIndex:I
    if-lez v7, :cond_1a5

    .line 386
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 389
    :cond_1a5
    :try_start_1a5
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/wssnps/mmspdu/EncodedStringValue;->setTextString([B)V
    :try_end_1b0
    .catch Ljava/lang/NullPointerException; {:try_start_1a5 .. :try_end_1b0} :catch_1bf

    .line 397
    .end local v7           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_1b0
    :try_start_1b0
    move-object/from16 v0, v25

    invoke-virtual {v12, v0, v11}, Lcom/wssnps/mmspdu/PduHeaders;->appendEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V
    :try_end_1b5
    .catch Ljava/lang/NullPointerException; {:try_start_1b0 .. :try_end_1b5} :catch_1b7
    .catch Ljava/lang/RuntimeException; {:try_start_1b0 .. :try_end_1b5} :catch_1c8

    goto/16 :goto_e

    .line 398
    :catch_1b7
    move-exception v6

    .line 399
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 390
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v7       #endIndex:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_1bf
    move-exception v6

    .line 391
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 392
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 400
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :catch_1c8
    move-exception v6

    .line 401
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 402
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 415
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v25           #value:Lcom/wssnps/mmspdu/EncodedStringValue;
    :pswitch_1e4
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 418
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v24

    .line 423
    .local v24, token:I
    :try_start_1eb
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_1ee
    .catch Ljava/lang/RuntimeException; {:try_start_1eb .. :try_end_1ee} :catch_224

    move-result-wide v22

    .line 428
    .local v22, timeValue:J
    const/16 v28, 0x81

    move/from16 v0, v28

    move/from16 v1, v24

    if-ne v0, v1, :cond_201

    .line 431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v28, v28, v30

    add-long v22, v22, v28

    .line 435
    :cond_201
    :try_start_201
    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1, v11}, Lcom/wssnps/mmspdu/PduHeaders;->setLongInteger(JI)V
    :try_end_206
    .catch Ljava/lang/RuntimeException; {:try_start_201 .. :try_end_206} :catch_208

    goto/16 :goto_e

    .line 436
    :catch_208
    move-exception v6

    .line 437
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 438
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 424
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v22           #timeValue:J
    :catch_224
    move-exception v6

    .line 425
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 426
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 448
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v24           #token:I
    :pswitch_240
    const/4 v9, 0x0

    .line 449
    .local v9, from:Lcom/wssnps/mmspdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 452
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 455
    .local v10, fromToken:I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v10, :cond_29a

    .line 457
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v9

    .line 458
    if-eqz v9, :cond_280

    .line 459
    invoke-virtual {v9}, Lcom/wssnps/mmspdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    .line 460
    .restart local v3       #address:[B
    if-eqz v3, :cond_280

    .line 461
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 462
    .restart local v21       #str:Ljava/lang/String;
    const/16 v28, 0x2f

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 463
    .restart local v7       #endIndex:I
    if-lez v7, :cond_277

    .line 464
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 467
    :cond_277
    :try_start_277
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/wssnps/mmspdu/EncodedStringValue;->setTextString([B)V
    :try_end_280
    .catch Ljava/lang/NullPointerException; {:try_start_277 .. :try_end_280} :catch_291

    .line 485
    .end local v3           #address:[B
    .end local v7           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_280
    :goto_280
    const/16 v28, 0x89

    :try_start_282
    move/from16 v0, v28

    invoke-virtual {v12, v9, v0}, Lcom/wssnps/mmspdu/PduHeaders;->setEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V
    :try_end_287
    .catch Ljava/lang/NullPointerException; {:try_start_282 .. :try_end_287} :catch_289
    .catch Ljava/lang/RuntimeException; {:try_start_282 .. :try_end_287} :catch_2c4

    goto/16 :goto_e

    .line 486
    :catch_289
    move-exception v6

    .line 487
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 468
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v3       #address:[B
    .restart local v7       #endIndex:I
    .restart local v21       #str:Ljava/lang/String;
    :catch_291
    move-exception v6

    .line 469
    .restart local v6       #e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 470
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 476
    .end local v3           #address:[B
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v7           #endIndex:I
    .end local v21           #str:Ljava/lang/String;
    :cond_29a
    :try_start_29a
    new-instance v9, Lcom/wssnps/mmspdu/EncodedStringValue;

    .end local v9           #from:Lcom/wssnps/mmspdu/EncodedStringValue;
    const-string v28, "insert-address-token"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Lcom/wssnps/mmspdu/EncodedStringValue;-><init>([B)V
    :try_end_2a7
    .catch Ljava/lang/NullPointerException; {:try_start_29a .. :try_end_2a7} :catch_2a8

    .restart local v9       #from:Lcom/wssnps/mmspdu/EncodedStringValue;
    goto :goto_280

    .line 478
    .end local v9           #from:Lcom/wssnps/mmspdu/EncodedStringValue;
    :catch_2a8
    move-exception v6

    .line 479
    .restart local v6       #e:Ljava/lang/NullPointerException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 480
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 488
    .end local v6           #e:Ljava/lang/NullPointerException;
    .restart local v9       #from:Lcom/wssnps/mmspdu/EncodedStringValue;
    :catch_2c4
    move-exception v6

    .line 489
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 490
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 497
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v9           #from:Lcom/wssnps/mmspdu/EncodedStringValue;
    .end local v10           #fromToken:I
    :pswitch_2e0
    const/16 v28, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 498
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v15

    .line 500
    .local v15, messageClass:I
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v15, v0, :cond_373

    .line 503
    const/16 v28, 0x80

    move/from16 v0, v28

    if-ne v0, v15, :cond_312

    .line 504
    :try_start_2f9
    const-string v28, "personal"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V
    :try_end_308
    .catch Ljava/lang/NullPointerException; {:try_start_2f9 .. :try_end_308} :catch_30a
    .catch Ljava/lang/RuntimeException; {:try_start_2f9 .. :try_end_308} :catch_329

    goto/16 :goto_e

    .line 520
    :catch_30a
    move-exception v6

    .line 521
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 507
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_312
    const/16 v28, 0x81

    move/from16 v0, v28

    if-ne v0, v15, :cond_345

    .line 508
    :try_start_318
    const-string v28, "advertisement"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V
    :try_end_327
    .catch Ljava/lang/NullPointerException; {:try_start_318 .. :try_end_327} :catch_30a
    .catch Ljava/lang/RuntimeException; {:try_start_318 .. :try_end_327} :catch_329

    goto/16 :goto_e

    .line 522
    :catch_329
    move-exception v6

    .line 523
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 524
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 511
    .end local v6           #e:Ljava/lang/RuntimeException;
    :cond_345
    const/16 v28, 0x82

    move/from16 v0, v28

    if-ne v0, v15, :cond_35c

    .line 512
    :try_start_34b
    const-string v28, "informational"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_e

    .line 515
    :cond_35c
    const/16 v28, 0x83

    move/from16 v0, v28

    if-ne v0, v15, :cond_e

    .line 516
    const-string v28, "auto"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->getBytes()[B

    move-result-object v28

    const/16 v29, 0x8a

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v12, v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V
    :try_end_371
    .catch Ljava/lang/NullPointerException; {:try_start_34b .. :try_end_371} :catch_30a
    .catch Ljava/lang/RuntimeException; {:try_start_34b .. :try_end_371} :catch_329

    goto/16 :goto_e

    .line 528
    :cond_373
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 529
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v16

    .line 530
    .local v16, messageClassString:[B
    if-eqz v16, :cond_e

    .line 532
    const/16 v28, 0x8a

    :try_start_384
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V
    :try_end_38b
    .catch Ljava/lang/NullPointerException; {:try_start_384 .. :try_end_38b} :catch_38d
    .catch Ljava/lang/RuntimeException; {:try_start_384 .. :try_end_38b} :catch_395

    goto/16 :goto_e

    .line 533
    :catch_38d
    move-exception v6

    .line 534
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 535
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_395
    move-exception v6

    .line 536
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 537
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 545
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v15           #messageClass:I
    .end local v16           #messageClassString:[B
    :pswitch_3b1
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .line 548
    .local v27, version:I
    const/16 v28, 0x8d

    :try_start_3b7
    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setOctet(II)V
    :try_end_3be
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_3b7 .. :try_end_3be} :catch_3c0
    .catch Ljava/lang/RuntimeException; {:try_start_3b7 .. :try_end_3be} :catch_3ea

    goto/16 :goto_e

    .line 549
    :catch_3c0
    move-exception v6

    .line 550
    .local v6, e:Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Set invalid Octet value: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " into the header filed: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 552
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 553
    .end local v6           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3ea
    move-exception v6

    .line 554
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Octet header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 555
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 564
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v27           #version:I
    :pswitch_406
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 568
    :try_start_409
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_40c
    .catch Ljava/lang/RuntimeException; {:try_start_409 .. :try_end_40c} :catch_425

    .line 575
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/EncodedStringValue;

    move-result-object v20

    .line 577
    .local v20, previouslySentBy:Lcom/wssnps/mmspdu/EncodedStringValue;
    if-eqz v20, :cond_e

    .line 579
    const/16 v28, 0xa0

    :try_start_414
    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lcom/wssnps/mmspdu/PduHeaders;->setEncodedStringValue(Lcom/wssnps/mmspdu/EncodedStringValue;I)V
    :try_end_41b
    .catch Ljava/lang/NullPointerException; {:try_start_414 .. :try_end_41b} :catch_41d
    .catch Ljava/lang/RuntimeException; {:try_start_414 .. :try_end_41b} :catch_441

    goto/16 :goto_e

    .line 581
    :catch_41d
    move-exception v6

    .line 582
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 569
    .end local v6           #e:Ljava/lang/NullPointerException;
    .end local v20           #previouslySentBy:Lcom/wssnps/mmspdu/EncodedStringValue;
    :catch_425
    move-exception v6

    .line 570
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 571
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 583
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v20       #previouslySentBy:Lcom/wssnps/mmspdu/EncodedStringValue;
    :catch_441
    move-exception v6

    .line 584
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 585
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 595
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v20           #previouslySentBy:Lcom/wssnps/mmspdu/EncodedStringValue;
    :pswitch_45d
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 599
    :try_start_460
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_463
    .catch Ljava/lang/RuntimeException; {:try_start_460 .. :try_end_463} :catch_48e

    .line 607
    :try_start_463
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    .line 608
    .local v18, perviouslySentDate:J
    const/16 v28, 0xa1

    move-wide/from16 v0, v18

    move/from16 v2, v28

    invoke-virtual {v12, v0, v1, v2}, Lcom/wssnps/mmspdu/PduHeaders;->setLongInteger(JI)V
    :try_end_470
    .catch Ljava/lang/RuntimeException; {:try_start_463 .. :try_end_470} :catch_472

    goto/16 :goto_e

    .line 610
    .end local v18           #perviouslySentDate:J
    :catch_472
    move-exception v6

    .line 611
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Long-Integer header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 612
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 600
    .end local v6           #e:Ljava/lang/RuntimeException;
    :catch_48e
    move-exception v6

    .line 601
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 602
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 625
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_4aa
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 628
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 631
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/wssnps/mmspdu/EncodedStringValue;

    goto/16 :goto_e

    .line 644
    :pswitch_4b5
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 647
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 651
    :try_start_4bb
    invoke-static/range {p1 .. p1}, Lcom/wssnps/mmspdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4be
    .catch Ljava/lang/RuntimeException; {:try_start_4bb .. :try_end_4be} :catch_4c0

    goto/16 :goto_e

    .line 652
    :catch_4c0
    move-exception v6

    .line 653
    .restart local v6       #e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " is not Integer-Value"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 654
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 663
    .end local v6           #e:Ljava/lang/RuntimeException;
    :pswitch_4dc
    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/wssnps/mmspdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_e

    .line 671
    :pswitch_4e7
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 673
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/wssnps/mmspdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v5

    .line 676
    .local v5, contentType:[B
    if-eqz v5, :cond_4fb

    .line 678
    const/16 v28, 0x84

    :try_start_4f6
    move/from16 v0, v28

    invoke-virtual {v12, v5, v0}, Lcom/wssnps/mmspdu/PduHeaders;->setTextString([BI)V
    :try_end_4fb
    .catch Ljava/lang/NullPointerException; {:try_start_4f6 .. :try_end_4fb} :catch_522
    .catch Ljava/lang/RuntimeException; {:try_start_4f6 .. :try_end_4fb} :catch_529

    .line 688
    :cond_4fb
    :goto_4fb
    const/16 v28, 0x99

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/wssnps/mmspdu/PduParser;->mStartParam:[B

    .line 691
    const/16 v28, 0x83

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, [B

    check-cast v28, [B

    sput-object v28, Lcom/wssnps/mmspdu/PduParser;->mTypeParam:[B

    .line 693
    const/4 v13, 0x0

    .line 694
    goto/16 :goto_e

    .line 679
    :catch_522
    move-exception v6

    .line 680
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v28, "null pointer error!"

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_4fb

    .line 681
    .end local v6           #e:Ljava/lang/NullPointerException;
    :catch_529
    move-exception v6

    .line 682
    .local v6, e:Ljava/lang/RuntimeException;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "is not Text-String header field!"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/wssnps/mmspdu/PduParser;->log(Ljava/lang/String;)V

    .line 683
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 706
    .end local v5           #contentType:[B
    .end local v6           #e:Ljava/lang/RuntimeException;
    .end local v11           #headerField:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_545
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 709
    .local v8, endpos:I
    sub-int v28, v4, v8

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wssnps/mmspdu/PduParser;->nParserdHeaderSize:I

    goto/16 :goto_3

    .line 201
    nop

    :pswitch_data_554
    .packed-switch 0x81
        :pswitch_17c
        :pswitch_17c
        :pswitch_114
        :pswitch_4e7
        :pswitch_c6
        :pswitch_76
        :pswitch_1e4
        :pswitch_1e4
        :pswitch_240
        :pswitch_2e0
        :pswitch_114
        :pswitch_23
        :pswitch_3b1
        :pswitch_c6
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_14b
        :pswitch_76
        :pswitch_76
        :pswitch_14b
        :pswitch_17c
        :pswitch_114
        :pswitch_76
        :pswitch_14b
        :pswitch_76
        :pswitch_76
        :pswitch_1e4
        :pswitch_114
        :pswitch_c6
        :pswitch_406
        :pswitch_45d
        :pswitch_76
        :pswitch_76
        :pswitch_4aa
        :pswitch_76
        :pswitch_14b
        :pswitch_76
        :pswitch_1d
        :pswitch_76
        :pswitch_4b5
        :pswitch_76
        :pswitch_4b5
        :pswitch_ed
        :pswitch_1d
        :pswitch_ed
        :pswitch_1d
        :pswitch_76
        :pswitch_4dc
        :pswitch_ed
        :pswitch_76
        :pswitch_14b
        :pswitch_14b
        :pswitch_114
        :pswitch_114
        :pswitch_114
        :pswitch_76
        :pswitch_76
        :pswitch_76
        :pswitch_114
        :pswitch_114
        :pswitch_76
    .end packed-switch

    .line 205
    :pswitch_data_5d6
    .packed-switch 0x89
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method
