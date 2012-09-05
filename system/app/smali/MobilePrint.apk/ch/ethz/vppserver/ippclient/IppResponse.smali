.class public Lch/ethz/vppserver/ippclient/IppResponse;
.super Ljava/lang/Object;
.source "IppResponse.java"


# static fields
.field private static final BYTEBUFFER_CAPACITY:I = 0x2000

.field private static final CRLF:Ljava/lang/String; = "\r\n"


# instance fields
.field private _attributeGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private _attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

.field private _attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

.field _buf:Ljava/nio/ByteBuffer;

.field private _result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation
.end field

.field private _tagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_tagList:Ljava/util/List;

    .line 42
    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupList:Ljava/util/List;

    .line 46
    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 47
    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 48
    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    .line 54
    new-instance v0, Lch/ethz/vppserver/ippclient/IppJaxb;

    invoke-direct {v0}, Lch/ethz/vppserver/ippclient/IppJaxb;-><init>()V

    .line 55
    .local v0, ippJaxb:Lch/ethz/vppserver/ippclient/IppJaxb;
    invoke-virtual {v0}, Lch/ethz/vppserver/ippclient/IppJaxb;->getTagList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_tagList:Ljava/util/List;

    .line 56
    invoke-virtual {v0}, Lch/ethz/vppserver/ippclient/IppJaxb;->getAttributeGroupList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupList:Ljava/util/List;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    .line 59
    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    .line 60
    return-void
.end method

.method private closeAttributeGroup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    if-eqz v0, :cond_1b

    .line 357
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    if-eqz v0, :cond_14

    .line 358
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_14
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    iget-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1b
    iput-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 363
    iput-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 364
    return-void
.end method

.method private concatenateBytebuffers(Ljava/util/ArrayList;)Ljava/nio/ByteBuffer;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p1, buffers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    const/4 v5, 0x0

    .line 169
    const/4 v2, 0x0

    .line 170
    .local v2, n:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 173
    if-lez v2, :cond_47

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 174
    .local v1, buf:Ljava/nio/ByteBuffer;
    :goto_1e
    if-lez v2, :cond_2d

    .line 175
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 177
    :cond_2d
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 180
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 181
    return-object v1

    .line 170
    .end local v1           #buf:Ljava/nio/ByteBuffer;
    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 171
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_6

    .line 173
    .end local v0           #b:Ljava/nio/ByteBuffer;
    :cond_47
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_1e

    .line 177
    .restart local v1       #buf:Ljava/nio/ByteBuffer;
    :cond_4c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 178
    .restart local v0       #b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_31
.end method

.method private getAttributeGroupList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lch/ethz/vppserver/schema/ippclient/AttributeGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    :cond_0
    :goto_0
    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_a

    .line 332
    const/4 v3, 0x0

    :goto_9
    return-object v3

    .line 238
    :cond_a
    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 239
    .local v2, tag:B
    sparse-switch v2, :sswitch_data_a4

    .line 329
    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    goto :goto_9

    .line 241
    :sswitch_16
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeGroup(B)V

    goto :goto_0

    .line 244
    :sswitch_1a
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeGroup(B)V

    goto :goto_0

    .line 247
    :sswitch_1e
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeGroup(B)V

    goto :goto_0

    .line 250
    :sswitch_22
    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    goto :goto_9

    .line 252
    :sswitch_25
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeGroup(B)V

    goto :goto_0

    .line 255
    :sswitch_29
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeGroup(B)V

    goto :goto_0

    .line 258
    :sswitch_2d
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeGroup(B)V

    goto :goto_0

    .line 261
    :sswitch_31
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeGroup(B)V

    goto :goto_0

    .line 264
    :sswitch_35
    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 267
    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 268
    .local v1, length:S
    if-eqz v1, :cond_0

    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 269
    new-array v0, v1, [B

    .line 270
    .local v0, dst:[B
    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 275
    .end local v0           #dst:[B
    .end local v1           #length:S
    :sswitch_55
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setNoValueAttribute(B)V

    goto :goto_0

    .line 278
    :sswitch_59
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setIntegerAttribute(B)V

    goto :goto_0

    .line 281
    :sswitch_5d
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setBooleanAttribute(B)V

    goto :goto_0

    .line 284
    :sswitch_61
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setEnumAttribute(B)V

    goto :goto_0

    .line 287
    :sswitch_65
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto :goto_0

    .line 290
    :sswitch_69
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setDateTimeAttribute(B)V

    goto :goto_0

    .line 293
    :sswitch_6d
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setResolutionAttribute(B)V

    goto :goto_0

    .line 296
    :sswitch_71
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setRangeOfIntegerAttribute(B)V

    goto :goto_0

    .line 299
    :sswitch_75
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextWithLanguageAttribute(B)V

    goto :goto_0

    .line 302
    :sswitch_79
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setNameWithLanguageAttribute(B)V

    goto :goto_0

    .line 305
    :sswitch_7d
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto :goto_0

    .line 308
    :sswitch_81
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto/16 :goto_0

    .line 311
    :sswitch_86
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto/16 :goto_0

    .line 314
    :sswitch_8b
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto/16 :goto_0

    .line 317
    :sswitch_90
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto/16 :goto_0

    .line 320
    :sswitch_95
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto/16 :goto_0

    .line 323
    :sswitch_9a
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto/16 :goto_0

    .line 326
    :sswitch_9f
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setTextAttribute(B)V

    goto/16 :goto_0

    .line 239
    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_16
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_22
        0x4 -> :sswitch_25
        0x5 -> :sswitch_29
        0x6 -> :sswitch_2d
        0x7 -> :sswitch_31
        0x10 -> :sswitch_35
        0x13 -> :sswitch_55
        0x21 -> :sswitch_59
        0x22 -> :sswitch_5d
        0x23 -> :sswitch_61
        0x30 -> :sswitch_65
        0x31 -> :sswitch_69
        0x32 -> :sswitch_6d
        0x33 -> :sswitch_71
        0x35 -> :sswitch_75
        0x36 -> :sswitch_79
        0x41 -> :sswitch_7d
        0x42 -> :sswitch_81
        0x44 -> :sswitch_86
        0x45 -> :sswitch_8b
        0x46 -> :sswitch_90
        0x47 -> :sswitch_95
        0x48 -> :sswitch_9a
        0x49 -> :sswitch_9f
    .end sparse-switch
.end method

.method private getEnumName(ILjava/lang/String;)Ljava/lang/String;
    .registers 27
    .parameter "value"
    .parameter "nameOfAttribute"

    .prologue
    .line 730
    if-nez p2, :cond_c

    .line 731
    const-string v21, "cups4j"

    const-string v22, "IppResponse.getEnumName(int,String): nameOfAttribute is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/16 v21, 0x0

    .line 778
    :goto_b
    return-object v21

    .line 734
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v14

    .line 735
    .local v14, l:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_17
    if-lt v12, v14, :cond_2d

    .line 778
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "enum name not found in IANA list: "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto :goto_b

    .line 736
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 737
    .local v3, attributeGroup:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;
    invoke-virtual {v3}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v4

    .line 738
    .local v4, attributeList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/Attribute;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    .line 739
    .local v15, ll:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_44
    if-lt v13, v15, :cond_49

    .line 735
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    .line 740
    :cond_49
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 741
    .local v2, attribute:Lch/ethz/vppserver/schema/ippclient/Attribute;
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    .line 742
    .local v5, attributeName:Ljava/lang/String;
    if-eqz v5, :cond_6d

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6d

    .line 743
    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v7

    .line 744
    .local v7, attributeValueList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeValue;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    .line 745
    .local v16, lll:I
    const/16 v20, 0x0

    .local v20, z:I
    :goto_67
    move/from16 v0, v20

    move/from16 v1, v16

    if-lt v0, v1, :cond_70

    .line 739
    .end local v7           #attributeValueList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeValue;>;"
    .end local v16           #lll:I
    .end local v20           #z:I
    :cond_6d
    add-int/lit8 v13, v13, 0x1

    goto :goto_44

    .line 746
    .restart local v7       #attributeValueList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/AttributeValue;>;"
    .restart local v16       #lll:I
    .restart local v20       #z:I
    :cond_70
    move/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    .line 747
    .local v6, attributeValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-virtual {v6}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getSetOfEnum()Lch/ethz/vppserver/schema/ippclient/SetOfEnum;

    move-result-object v21

    if-eqz v21, :cond_d6

    .line 748
    invoke-virtual {v6}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->getSetOfEnum()Lch/ethz/vppserver/schema/ippclient/SetOfEnum;

    move-result-object v18

    .line 749
    .local v18, setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
    invoke-virtual/range {v18 .. v18}, Lch/ethz/vppserver/schema/ippclient/SetOfEnum;->getEnum()Ljava/util/List;

    move-result-object v9

    .line 750
    .local v9, enumList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/Enum;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    .line 751
    .local v17, llll:I
    const/16 v19, 0x0

    .local v19, w:I
    :goto_8c
    move/from16 v0, v19

    move/from16 v1, v17

    if-lt v0, v1, :cond_95

    .line 745
    add-int/lit8 v20, v20, 0x1

    goto :goto_67

    .line 752
    :cond_95
    move/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch/ethz/vppserver/schema/ippclient/Enum;

    .line 753
    .local v8, enumEntry:Lch/ethz/vppserver/schema/ippclient/Enum;
    invoke-virtual {v8}, Lch/ethz/vppserver/schema/ippclient/Enum;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 754
    .local v11, enumValueString:Ljava/lang/String;
    const/4 v10, 0x0

    .line 758
    .local v10, enumValue:I
    const-string v21, "0x"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_ca

    .line 759
    const-string v21, "0x"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 761
    const/16 v21, 0x10

    move/from16 v0, v21

    invoke-static {v11, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    .line 765
    :goto_c0
    move/from16 v0, p1

    if-ne v0, v10, :cond_d3

    .line 766
    invoke-virtual {v8}, Lch/ethz/vppserver/schema/ippclient/Enum;->getName()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_b

    .line 763
    :cond_ca
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-static {v11, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    goto :goto_c0

    .line 751
    :cond_d3
    add-int/lit8 v19, v19, 0x1

    goto :goto_8c

    .line 770
    .end local v8           #enumEntry:Lch/ethz/vppserver/schema/ippclient/Enum;
    .end local v9           #enumList:Ljava/util/List;,"Ljava/util/List<Lch/ethz/vppserver/schema/ippclient/Enum;>;"
    .end local v10           #enumValue:I
    .end local v11           #enumValueString:Ljava/lang/String;
    .end local v17           #llll:I
    .end local v18           #setOfEnum:Lch/ethz/vppserver/schema/ippclient/SetOfEnum;
    .end local v19           #w:I
    :cond_d6
    const-string v21, "cups4j"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "IPPResponse.getEnumName(): set-of-enum is null for attribute "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 771
    const-string v23, ". Please control "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "the enumeration list in the XML file"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 770
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/16 v21, 0x0

    goto/16 :goto_b
.end method

.method private getEnumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "value"
    .parameter "nameOfAttribute"

    .prologue
    const/4 v1, 0x0

    .line 703
    if-nez p1, :cond_b

    .line 704
    const-string v2, "cups4j"

    const-string v3, "IppResponse.getEnumName(String,String): value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :goto_a
    return-object v1

    .line 707
    :cond_b
    if-nez p2, :cond_15

    .line 708
    const-string v2, "cups4j"

    const-string v3, "IppResponse.getEnumName(String,String): nameOfAttribute is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 712
    :cond_15
    const/4 v0, 0x0

    .line 713
    .local v0, enumValue:I
    const-string v1, "0x"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 714
    const-string v1, "0x"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 716
    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 720
    :goto_2c
    invoke-direct {p0, v0, p2}, Lch/ethz/vppserver/ippclient/IppResponse;->getEnumName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    .line 718
    :cond_31
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2c
.end method

.method private getHTTPHeader()Ljava/lang/String;
    .registers 8

    .prologue
    .line 189
    const-string v2, "\r\n\r\n"

    .line 190
    .local v2, endOf:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v4, sb:Ljava/lang/StringBuffer;
    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_19

    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_26

    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    :goto_18
    return-object v5

    .line 192
    :cond_19
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 193
    .local v0, b:I
    and-int/lit16 v3, v0, 0xff

    .line 194
    .local v3, ival:I
    int-to-char v1, v3

    .line 195
    .local v1, c:C
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 200
    .end local v0           #b:I
    .end local v1           #c:C
    .end local v3           #ival:I
    :cond_26
    const/4 v5, 0x0

    goto :goto_18
.end method

.method private getIPPHeader()Ljava/lang/String;
    .registers 6

    .prologue
    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    .local v0, sb:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Major Version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Minor Version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    invoke-static {v4}, Lch/ethz/vppserver/ippclient/IppUtil;->toHex(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, statusCode:Ljava/lang/String;
    const-string v3, "status-code"

    invoke-direct {p0, v1, v3}, Lch/ethz/vppserver/ippclient/IppResponse;->getEnumName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, statusMessage:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Request Id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Status Code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eqz v3, :cond_b3

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    :goto_b2
    return-object v3

    :cond_b3
    const/4 v3, 0x0

    goto :goto_b2
.end method

.method private getTagName(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "tag"

    .prologue
    .line 683
    if-nez p1, :cond_b

    .line 684
    const-string v2, "cups4j"

    const-string v3, "IppResponse.getTagName(): no tag given"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v2, 0x0

    .line 693
    :goto_a
    return-object v2

    .line 687
    :cond_b
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_tagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 688
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-lt v0, v1, :cond_24

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no name found for tag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 689
    :cond_24
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_tagList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/Tag;

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Tag;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 690
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_tagList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/ethz/vppserver/schema/ippclient/Tag;

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 688
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private setAttributeGroup(B)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 340
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    if-eqz v0, :cond_1a

    .line 341
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    if-eqz v0, :cond_13

    .line 342
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-virtual {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_13
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    iget-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 348
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;-><init>()V

    iput-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 349
    iget-object v0, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->setTagName(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private setAttributeName(S)V
    .registers 6
    .parameter "length"

    .prologue
    .line 664
    if-eqz p1, :cond_a

    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, p1, :cond_b

    .line 675
    :cond_a
    :goto_a
    return-void

    .line 667
    :cond_b
    new-array v0, p1, [B

    .line 668
    .local v0, dst:[B
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 669
    invoke-static {v0}, Lch/ethz/vppserver/ippclient/IppUtil;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, name:Ljava/lang/String;
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    if-eqz v2, :cond_25

    .line 671
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    invoke-virtual {v2}, Lch/ethz/vppserver/schema/ippclient/AttributeGroup;->getAttribute()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_25
    new-instance v2, Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-direct {v2}, Lch/ethz/vppserver/schema/ippclient/Attribute;-><init>()V

    iput-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 674
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/ethz/vppserver/schema/ippclient/Attribute;->setName(Ljava/lang/String;)V

    goto :goto_a
.end method

.method private setBooleanAttribute(B)V
    .registers 7
    .parameter "tag"

    .prologue
    .line 484
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 485
    .local v1, length:S
    if-eqz v1, :cond_13

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v1, :cond_13

    .line 486
    invoke-direct {p0, v1}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 490
    :cond_13
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 503
    :cond_1b
    :goto_1b
    return-void

    .line 493
    :cond_1c
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 494
    if-eqz v1, :cond_1b

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v1, :cond_1b

    .line 495
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 496
    .local v3, value:B
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 497
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 498
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, tagName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 500
    invoke-static {v3}, Lch/ethz/vppserver/ippclient/IppUtil;->toBoolean(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 501
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v4}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private setDateTimeAttribute(B)V
    .registers 9
    .parameter "tag"

    .prologue
    .line 510
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 511
    .local v2, length:S
    if-eqz v2, :cond_13

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_13

    .line 512
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 516
    :cond_13
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 531
    :cond_1b
    :goto_1b
    return-void

    .line 519
    :cond_1c
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 520
    if-eqz v2, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 521
    new-array v1, v2, [B

    .line 522
    .local v1, dst:[B
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 523
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppUtil;->toDateTime([B)Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, value:Ljava/lang/String;
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 525
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 526
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, tagName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 529
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private setEnumAttribute(B)V
    .registers 9
    .parameter "tag"

    .prologue
    .line 628
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 629
    .local v2, length:S
    if-eqz v2, :cond_13

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_13

    .line 630
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 634
    :cond_13
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 657
    :cond_1b
    :goto_1b
    return-void

    .line 638
    :cond_1c
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 639
    if-eqz v2, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 640
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 641
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 642
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    .local v3, tagName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 645
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 646
    .local v4, value:I
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    if-eqz v5, :cond_64

    .line 647
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lch/ethz/vppserver/ippclient/IppResponse;->getEnumName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, enumName:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 655
    .end local v1           #enumName:Ljava/lang/String;
    :goto_5a
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 650
    :cond_64
    new-instance v5, Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-direct {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;-><init>()V

    iput-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 651
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    const-string v6, "no attribute name given:"

    invoke-virtual {v5, v6}, Lch/ethz/vppserver/schema/ippclient/Attribute;->setName(Ljava/lang/String;)V

    .line 652
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    goto :goto_5a
.end method

.method private setIntegerAttribute(B)V
    .registers 7
    .parameter "tag"

    .prologue
    .line 538
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 539
    .local v1, length:S
    if-eqz v1, :cond_13

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v1, :cond_13

    .line 540
    invoke-direct {p0, v1}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 543
    :cond_13
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 556
    :cond_1b
    :goto_1b
    return-void

    .line 546
    :cond_1c
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 547
    if-eqz v1, :cond_1b

    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lt v4, v1, :cond_1b

    .line 548
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 549
    .local v3, value:I
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 550
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 551
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    .local v2, tagName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 553
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 554
    iget-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v4}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private setNameWithLanguageAttribute(B)V
    .registers 8
    .parameter "tag"

    .prologue
    .line 443
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 444
    .local v2, length:S
    if-eqz v2, :cond_13

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_13

    .line 445
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 449
    :cond_13
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 477
    :cond_1b
    :goto_1b
    return-void

    .line 454
    :cond_1c
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 455
    if-eqz v2, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 456
    new-array v1, v2, [B

    .line 457
    .local v1, dst:[B
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 458
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppUtil;->toString([B)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, value:Ljava/lang/String;
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 460
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 461
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, tagName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 464
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 468
    if-eqz v2, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 469
    new-array v1, v2, [B

    .line 470
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 471
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppUtil;->toString([B)Ljava/lang/String;

    move-result-object v4

    .line 472
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    .end local v0           #attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 473
    .restart local v0       #attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 474
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private setNoValueAttribute(B)V
    .registers 4
    .parameter "tag"

    .prologue
    .line 563
    iget-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 564
    .local v0, length:S
    if-eqz v0, :cond_13

    iget-object v1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, v0, :cond_13

    .line 565
    invoke-direct {p0, v0}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 567
    :cond_13
    return-void
.end method

.method private setRangeOfIntegerAttribute(B)V
    .registers 9
    .parameter "tag"

    .prologue
    .line 574
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 575
    .local v1, length:S
    if-eqz v1, :cond_13

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v1, :cond_13

    .line 576
    invoke-direct {p0, v1}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 579
    :cond_13
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 593
    :cond_1b
    :goto_1b
    return-void

    .line 582
    :cond_1c
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 583
    if-eqz v1, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v1, :cond_1b

    .line 584
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 585
    .local v3, value1:I
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 586
    .local v4, value2:I
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 587
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 588
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, tagName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 590
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 591
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private setResolutionAttribute(B)V
    .registers 10
    .parameter "tag"

    .prologue
    .line 600
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 601
    .local v1, length:S
    if-eqz v1, :cond_13

    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lt v6, v1, :cond_13

    .line 602
    invoke-direct {p0, v1}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 606
    :cond_13
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 621
    :cond_1b
    :goto_1b
    return-void

    .line 609
    :cond_1c
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 610
    if-eqz v1, :cond_1b

    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lt v6, v1, :cond_1b

    .line 611
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 612
    .local v3, value1:I
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 613
    .local v4, value2:I
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 614
    .local v5, value3:B
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 615
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 616
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, tagName:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 618
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 619
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v6}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private setTextAttribute(B)V
    .registers 8
    .parameter "tag"

    .prologue
    .line 371
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 372
    .local v2, length:S
    if-eqz v2, :cond_13

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_13

    .line 373
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 377
    :cond_13
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 393
    :cond_1b
    :goto_1b
    return-void

    .line 380
    :cond_1c
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 381
    if-eqz v2, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 382
    new-array v1, v2, [B

    .line 383
    .local v1, dst:[B
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 384
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppUtil;->toString([B)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, value:Ljava/lang/String;
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 386
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 387
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, tagName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 390
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method private setTextWithLanguageAttribute(B)V
    .registers 8
    .parameter "tag"

    .prologue
    .line 401
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 402
    .local v2, length:S
    if-eqz v2, :cond_13

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_13

    .line 403
    invoke-direct {p0, v2}, Lch/ethz/vppserver/ippclient/IppResponse;->setAttributeName(S)V

    .line 407
    :cond_13
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1c

    .line 435
    :cond_1b
    :goto_1b
    return-void

    .line 412
    :cond_1c
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 413
    if-eqz v2, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 414
    new-array v1, v2, [B

    .line 415
    .local v1, dst:[B
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 416
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppUtil;->toString([B)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, value:Ljava/lang/String;
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 418
    .local v0, attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTag(Ljava/lang/String;)V

    .line 419
    invoke-static {p1}, Lch/ethz/vppserver/ippclient/IppUtil;->toHexWithMarker(B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lch/ethz/vppserver/ippclient/IppResponse;->getTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, tagName:Ljava/lang/String;
    invoke-virtual {v0, v3}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setTagName(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 422
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 426
    if-eqz v2, :cond_1b

    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v2, :cond_1b

    .line 427
    new-array v1, v2, [B

    .line 428
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 429
    invoke-static {v1}, Lch/ethz/vppserver/ippclient/IppUtil;->toString([B)Ljava/lang/String;

    move-result-object v4

    .line 430
    new-instance v0, Lch/ethz/vppserver/schema/ippclient/AttributeValue;

    .end local v0           #attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-direct {v0}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;-><init>()V

    .line 431
    .restart local v0       #attrValue:Lch/ethz/vppserver/schema/ippclient/AttributeValue;
    invoke-virtual {v0, v4}, Lch/ethz/vppserver/schema/ippclient/AttributeValue;->setValue(Ljava/lang/String;)V

    .line 432
    iget-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    invoke-virtual {v5}, Lch/ethz/vppserver/schema/ippclient/Attribute;->getAttributeValue()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method


# virtual methods
.method public getResponse(Ljava/nio/ByteBuffer;)Lch/ethz/vppserver/ippclient/IppResult;
    .registers 6
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 133
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    iput-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 136
    iput-object v3, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 137
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 139
    new-instance v1, Lch/ethz/vppserver/ippclient/IppResult;

    invoke-direct {v1}, Lch/ethz/vppserver/ippclient/IppResult;-><init>()V

    .line 140
    .local v1, result:Lch/ethz/vppserver/ippclient/IppResult;
    const/4 v0, 0x0

    .line 146
    .local v0, ippHeaderResponse:Z
    if-nez v0, :cond_27

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 147
    iput-object p1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    .line 148
    invoke-direct {p0}, Lch/ethz/vppserver/ippclient/IppResponse;->getIPPHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/ethz/vppserver/ippclient/IppResult;->setIppStatusResponse(Ljava/lang/String;)V

    .line 149
    const/4 v0, 0x1

    .line 152
    :cond_27
    iput-object p1, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    .line 154
    invoke-direct {p0}, Lch/ethz/vppserver/ippclient/IppResponse;->getAttributeGroupList()Ljava/util/List;

    .line 156
    invoke-direct {p0}, Lch/ethz/vppserver/ippclient/IppResponse;->closeAttributeGroup()V

    .line 157
    iget-object v2, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    invoke-virtual {v1, v2}, Lch/ethz/vppserver/ippclient/IppResult;->setAttributeGroupList(Ljava/util/List;)V

    .line 158
    return-object v1
.end method

.method public getResponse(Ljava/nio/channels/SocketChannel;)Lch/ethz/vppserver/ippclient/IppResult;
    .registers 11
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2000

    const/4 v4, 0x0

    .line 69
    if-nez p1, :cond_d

    .line 70
    const-string v6, "cups4j"

    const-string v7, "IppResponse.getResponse(): no channel given"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_c
    return-object v4

    .line 74
    :cond_d
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 76
    iput-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeGroupResult:Lch/ethz/vppserver/schema/ippclient/AttributeGroup;

    .line 77
    iput-object v4, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_attributeResult:Lch/ethz/vppserver/schema/ippclient/Attribute;

    .line 78
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 80
    new-instance v4, Lch/ethz/vppserver/ippclient/IppResult;

    invoke-direct {v4}, Lch/ethz/vppserver/ippclient/IppResult;-><init>()V

    .line 81
    .local v4, result:Lch/ethz/vppserver/ippclient/IppResult;
    const/4 v1, 0x0

    .line 82
    .local v1, httpResponse:Z
    const/4 v3, 0x0

    .line 87
    .local v3, ippHeaderResponse:Z
    const/4 v2, 0x0

    .line 88
    .local v2, ippByteCount:I
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 89
    .local v5, tmpBuffer:Ljava/nio/ByteBuffer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, bufferList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/nio/ByteBuffer;>;"
    :goto_2c
    invoke-virtual {p1, v5}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_45

    .line 116
    invoke-direct {p0, v0}, Lch/ethz/vppserver/ippclient/IppResponse;->concatenateBytebuffers(Ljava/util/ArrayList;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    .line 118
    invoke-direct {p0}, Lch/ethz/vppserver/ippclient/IppResponse;->getAttributeGroupList()Ljava/util/List;

    .line 120
    invoke-direct {p0}, Lch/ethz/vppserver/ippclient/IppResponse;->closeAttributeGroup()V

    .line 121
    iget-object v6, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_result:Ljava/util/List;

    invoke-virtual {v4, v6}, Lch/ethz/vppserver/ippclient/IppResult;->setAttributeGroupList(Ljava/util/List;)V

    goto :goto_c

    .line 92
    :cond_45
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 94
    if-nez v1, :cond_5a

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 95
    iput-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    .line 96
    invoke-direct {p0}, Lch/ethz/vppserver/ippclient/IppResponse;->getHTTPHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lch/ethz/vppserver/ippclient/IppResult;->setHttpStatusResponse(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x1

    .line 101
    :cond_5a
    if-nez v3, :cond_6c

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 102
    iput-object v5, p0, Lch/ethz/vppserver/ippclient/IppResponse;->_buf:Ljava/nio/ByteBuffer;

    .line 103
    invoke-direct {p0}, Lch/ethz/vppserver/ippclient/IppResponse;->getIPPHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lch/ethz/vppserver/ippclient/IppResult;->setIppStatusResponse(Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x1

    .line 109
    :cond_6c
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 110
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v2, v6

    .line 111
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_7a
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    goto :goto_2c
.end method
