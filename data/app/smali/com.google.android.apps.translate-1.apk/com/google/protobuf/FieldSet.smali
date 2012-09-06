.class final Lcom/google/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/FieldSet$1;,
        Lcom/google/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
        "<TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;


# instance fields
.field private final fields:Lcom/google/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SmallSortedMap",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isImmutable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 99
    new-instance v0, Lcom/google/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 73
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 75
    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "dummy"

    .prologue
    .line 81
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/google/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    .line 83
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->makeImmutable()V

    .line 84
    return-void
.end method

.method private static computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .registers 5
    .parameter "type"
    .parameter "number"
    .parameter "value"

    .prologue
    .line 712
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    .line 713
    .local v0, tagSize:I
    sget-object v1, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_a

    .line 714
    mul-int/lit8 v0, v0, 0x2

    .line 716
    :cond_a
    invoke-static {p0, p2}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private static computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .registers 4
    .parameter "type"
    .parameter "value"

    .prologue
    .line 731
    sget-object v0, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ce

    .line 757
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 734
    :pswitch_13
    check-cast p1, Ljava/lang/Double;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    .line 753
    :goto_1d
    return v0

    .line 735
    .restart local p1
    :pswitch_1e
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    goto :goto_1d

    .line 736
    .restart local p1
    :pswitch_29
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    goto :goto_1d

    .line 737
    .restart local p1
    :pswitch_34
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    goto :goto_1d

    .line 738
    .restart local p1
    :pswitch_3f
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    goto :goto_1d

    .line 739
    .restart local p1
    :pswitch_4a
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    goto :goto_1d

    .line 740
    .restart local p1
    :pswitch_55
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    goto :goto_1d

    .line 741
    .restart local p1
    :pswitch_60
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    goto :goto_1d

    .line 742
    .restart local p1
    :pswitch_6b
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    goto :goto_1d

    .line 743
    .restart local p1
    :pswitch_72
    check-cast p1, Lcom/google/protobuf/MessageLite;

    .end local p1
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    goto :goto_1d

    .line 744
    .restart local p1
    :pswitch_79
    check-cast p1, Lcom/google/protobuf/MessageLite;

    .end local p1
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/google/protobuf/MessageLite;)I

    move-result v0

    goto :goto_1d

    .line 745
    .restart local p1
    :pswitch_80
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v0

    goto :goto_1d

    .line 746
    .restart local p1
    :pswitch_87
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    goto :goto_1d

    .line 747
    .restart local p1
    :pswitch_92
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    goto :goto_1d

    .line 748
    .restart local p1
    :pswitch_9d
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_1d

    .line 749
    .restart local p1
    :pswitch_a9
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    goto/16 :goto_1d

    .line 750
    .restart local p1
    :pswitch_b5
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    goto/16 :goto_1d

    .line 753
    .restart local p1
    :pswitch_c1
    check-cast p1, Lcom/google/protobuf/Internal$EnumLite;

    .end local p1
    invoke-interface {p1}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    goto/16 :goto_1d

    .line 731
    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1e
        :pswitch_29
        :pswitch_34
        :pswitch_3f
        :pswitch_4a
        :pswitch_55
        :pswitch_60
        :pswitch_6b
        :pswitch_80
        :pswitch_87
        :pswitch_92
        :pswitch_9d
        :pswitch_a9
        :pswitch_b5
        :pswitch_72
        :pswitch_79
        :pswitch_c1
    .end packed-switch
.end method

.method public static computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .registers 10
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 766
    .local p0, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v5

    .line 767
    .local v5, type:Lcom/google/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v3

    .line 768
    .local v3, number:I
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 769
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, dataSize:I
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 772
    .local v1, element:Ljava/lang/Object;
    invoke-static {v5, v1}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1b

    .line 774
    .end local v1           #element:Ljava/lang/Object;
    :cond_2b
    invoke-static {v3}, Lcom/google/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v7

    add-int v4, v6, v7

    .line 785
    .end local v0           #dataSize:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_36
    :goto_36
    return v4

    .line 778
    .restart local p1
    :cond_37
    const/4 v4, 0x0

    .line 779
    .local v4, size:I
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 780
    .restart local v1       #element:Ljava/lang/Object;
    invoke-static {v5, v3, v1}, Lcom/google/protobuf/FieldSet;->computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_3e

    .line 785
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #size:I
    .restart local p1
    :cond_4e
    invoke-static {v5, v3, p1}, Lcom/google/protobuf/FieldSet;->computeElementSize(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v4

    goto :goto_36
.end method

.method public static emptySet()Lcom/google/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/google/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/google/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/google/protobuf/FieldSet;

    return-object v0
.end method

.method private getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 689
    .local v0, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_2f

    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 691
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    .line 694
    :goto_2e
    return v1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v1

    goto :goto_2e
.end method

.method static getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I
    .registers 3
    .parameter "type"
    .parameter "isPacked"

    .prologue
    .line 411
    if-eqz p1, :cond_4

    .line 412
    const/4 v0, 0x2

    .line 414
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    goto :goto_3
.end method

.method private isInitialized(Ljava/util/Map$Entry;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 385
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 386
    .local v0, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v5, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v5, :cond_41

    .line 387
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 389
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .line 390
    .local v1, element:Lcom/google/protobuf/MessageLite;
    invoke-interface {v1}, Lcom/google/protobuf/MessageLite;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_1f

    move v3, v4

    .line 400
    .end local v1           #element:Lcom/google/protobuf/MessageLite;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_32
    return v3

    .line 395
    :cond_33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-interface {v3}, Lcom/google/protobuf/MessageLite;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_41

    move v3, v4

    .line 396
    goto :goto_32

    .line 400
    :cond_41
    const/4 v3, 0x1

    goto :goto_32
.end method

.method private mergeFromField(Ljava/util/Map$Entry;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 435
    .local v0, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 437
    .local v1, otherValue:Ljava/lang/Object;
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 438
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 439
    .local v2, value:Ljava/lang/Object;
    if-nez v2, :cond_25

    .line 443
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    new-instance v4, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    .end local v1           #otherValue:Ljava/lang/Object;
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v0, v4}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .end local v2           #value:Ljava/lang/Object;
    :goto_24
    return-void

    .line 446
    .restart local v1       #otherValue:Ljava/lang/Object;
    .restart local v2       #value:Ljava/lang/Object;
    :cond_25
    check-cast v2, Ljava/util/List;

    .end local v2           #value:Ljava/lang/Object;
    check-cast v1, Ljava/util/List;

    .end local v1           #otherValue:Ljava/lang/Object;
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_24

    .line 448
    .restart local v1       #otherValue:Ljava/lang/Object;
    :cond_2d
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v3, v4, :cond_59

    .line 449
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 450
    .restart local v2       #value:Ljava/lang/Object;
    if-nez v2, :cond_43

    .line 451
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v1}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 454
    :cond_43
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    check-cast v2, Lcom/google/protobuf/MessageLite;

    .end local v2           #value:Ljava/lang/Object;
    invoke-interface {v2}, Lcom/google/protobuf/MessageLite;->toBuilder()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v4

    check-cast v1, Lcom/google/protobuf/MessageLite;

    .end local v1           #otherValue:Ljava/lang/Object;
    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 462
    .restart local v1       #otherValue:Ljava/lang/Object;
    :cond_59
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v1}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24
.end method

.method public static newFieldSet()Lcom/google/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TT;>;>()",
            "Lcom/google/protobuf/FieldSet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/google/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/google/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static readPrimitiveField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/WireFormat$FieldType;)Ljava/lang/Object;
    .registers 4
    .parameter "input"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    sget-object v0, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_aa

    .line 513
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 484
    :pswitch_13
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 498
    :goto_1b
    return-object v0

    .line 485
    :pswitch_1c
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1b

    .line 486
    :pswitch_25
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 487
    :pswitch_2e
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 488
    :pswitch_37
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 489
    :pswitch_40
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 490
    :pswitch_49
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 491
    :pswitch_52
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b

    .line 492
    :pswitch_5b
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 493
    :pswitch_60
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    goto :goto_1b

    .line 494
    :pswitch_65
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 495
    :pswitch_6e
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 496
    :pswitch_77
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 497
    :pswitch_80
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1b

    .line 498
    :pswitch_89
    invoke-virtual {p0}, Lcom/google/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1b

    .line 501
    :pswitch_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :pswitch_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :pswitch_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1c
        :pswitch_25
        :pswitch_2e
        :pswitch_37
        :pswitch_40
        :pswitch_49
        :pswitch_52
        :pswitch_5b
        :pswitch_60
        :pswitch_65
        :pswitch_6e
        :pswitch_77
        :pswitch_80
        :pswitch_89
        :pswitch_92
        :pswitch_9a
        :pswitch_a2
    .end packed-switch
.end method

.method private static verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 5
    .parameter "type"
    .parameter "value"

    .prologue
    .line 322
    if-nez p1, :cond_8

    .line 323
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 326
    :cond_8
    const/4 v0, 0x0

    .line 327
    .local v0, isValid:Z
    sget-object v1, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3e

    .line 345
    :goto_18
    if-nez v0, :cond_3d

    .line 353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong object type used with protocol message reflection."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :pswitch_22
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_18

    .line 329
    :pswitch_25
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_18

    .line 330
    :pswitch_28
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_18

    .line 331
    :pswitch_2b
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_18

    .line 332
    :pswitch_2e
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_18

    .line 333
    :pswitch_31
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_18

    .line 334
    :pswitch_34
    instance-of v0, p1, Lcom/google/protobuf/ByteString;

    goto :goto_18

    .line 337
    :pswitch_37
    instance-of v0, p1, Lcom/google/protobuf/Internal$EnumLite;

    .line 338
    goto :goto_18

    .line 341
    :pswitch_3a
    instance-of v0, p1, Lcom/google/protobuf/MessageLite;

    goto :goto_18

    .line 356
    :cond_3d
    return-void

    .line 327
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_34
        :pswitch_37
        :pswitch_3a
    .end packed-switch
.end method

.method private static writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .registers 5
    .parameter "output"
    .parameter "type"
    .parameter "number"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_a

    .line 576
    check-cast p3, Lcom/google/protobuf/MessageLite;

    .end local p3
    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->writeGroup(ILcom/google/protobuf/MessageLite;)V

    .line 581
    :goto_9
    return-void

    .line 578
    .restart local p3
    :cond_a
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 579
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/FieldSet;->writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method private static writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 5
    .parameter "output"
    .parameter "type"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    sget-object v0, Lcom/google/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b4

    .line 620
    .end local p2
    :goto_b
    return-void

    .line 598
    .restart local p2
    :pswitch_c
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    goto :goto_b

    .line 599
    .restart local p2
    :pswitch_16
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    goto :goto_b

    .line 600
    .restart local p2
    :pswitch_20
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    goto :goto_b

    .line 601
    .restart local p2
    :pswitch_2a
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    goto :goto_b

    .line 602
    .restart local p2
    :pswitch_34
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    goto :goto_b

    .line 603
    .restart local p2
    :pswitch_3e
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    goto :goto_b

    .line 604
    .restart local p2
    :pswitch_48
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    goto :goto_b

    .line 605
    .restart local p2
    :pswitch_52
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    goto :goto_b

    .line 606
    .restart local p2
    :pswitch_5c
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    goto :goto_b

    .line 607
    .restart local p2
    :pswitch_62
    check-cast p2, Lcom/google/protobuf/MessageLite;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/google/protobuf/MessageLite;)V

    goto :goto_b

    .line 608
    .restart local p2
    :pswitch_68
    check-cast p2, Lcom/google/protobuf/MessageLite;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/google/protobuf/MessageLite;)V

    goto :goto_b

    .line 609
    .restart local p2
    :pswitch_6e
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2
    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/protobuf/ByteString;)V

    goto :goto_b

    .line 610
    .restart local p2
    :pswitch_74
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    goto :goto_b

    .line 611
    .restart local p2
    :pswitch_7e
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    goto :goto_b

    .line 612
    .restart local p2
    :pswitch_88
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    goto/16 :goto_b

    .line 613
    .restart local p2
    :pswitch_93
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    goto/16 :goto_b

    .line 614
    .restart local p2
    :pswitch_9e
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    goto/16 :goto_b

    .line 617
    .restart local p2
    :pswitch_a9
    check-cast p2, Lcom/google/protobuf/Internal$EnumLite;

    .end local p2
    invoke-interface {p2}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_b

    .line 597
    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_16
        :pswitch_20
        :pswitch_2a
        :pswitch_34
        :pswitch_3e
        :pswitch_48
        :pswitch_52
        :pswitch_5c
        :pswitch_6e
        :pswitch_74
        :pswitch_7e
        :pswitch_88
        :pswitch_93
        :pswitch_9e
        :pswitch_62
        :pswitch_68
        :pswitch_a9
    .end packed-switch
.end method

.method public static writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V
    .registers 10
    .parameter
    .parameter "value"
    .parameter "output"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    .local p0, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"Lcom/google/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v4

    .line 628
    .local v4, type:Lcom/google/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v3

    .line 629
    .local v3, number:I
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v6

    if-eqz v6, :cond_57

    move-object v5, p1

    .line 630
    check-cast v5, Ljava/util/List;

    .line 631
    .local v5, valueList:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {p0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 632
    const/4 v6, 0x2

    invoke-virtual {p2, v3, v6}, Lcom/google/protobuf/CodedOutputStream;->writeTag(II)V

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, dataSize:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 636
    .local v1, element:Ljava/lang/Object;
    invoke-static {v4, v1}, Lcom/google/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_20

    .line 638
    .end local v1           #element:Ljava/lang/Object;
    :cond_30
    invoke-virtual {p2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 640
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 641
    .restart local v1       #element:Ljava/lang/Object;
    invoke-static {p2, v4, v1}, Lcom/google/protobuf/FieldSet;->writeElementNoTag(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_37

    .line 644
    .end local v0           #dataSize:I
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_45
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 645
    .restart local v1       #element:Ljava/lang/Object;
    invoke-static {p2, v4, v3, v1}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_49

    .line 649
    .end local v1           #element:Ljava/lang/Object;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #valueList:Ljava/util/List;,"Ljava/util/List<*>;"
    :cond_57
    invoke-static {p2, v4, v3, p1}, Lcom/google/protobuf/FieldSet;->writeElement(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 651
    :cond_5a
    return-void
.end method

.method private writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .parameter "output"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 548
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 549
    .local v0, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_2e

    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-interface {v0}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 551
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p2, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/google/protobuf/MessageLite;)V

    .line 556
    :goto_2d
    return-void

    .line 554
    :cond_2e
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_2d
.end method


# virtual methods
.method public addRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_e

    .line 295
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 299
    :cond_e
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 301
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, existingValue:Ljava/lang/Object;
    if-nez v0, :cond_2b

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v1, list:Ljava/util/List;
    iget-object v2, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :goto_27
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    return-void

    .end local v1           #list:Ljava/util/List;
    :cond_2b
    move-object v1, v0

    .line 307
    check-cast v1, Ljava/util/List;

    .restart local v1       #list:Ljava/util/List;
    goto :goto_27
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 149
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->clear()V

    .line 150
    return-void
.end method

.method public clearField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    return-void
.end method

.method public clone()Lcom/google/protobuf/FieldSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/FieldSet",
            "<TFieldDescriptorType;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 132
    .local v0, clone:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    iget-object v5, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v5}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v5

    if-ge v3, v5, :cond_23

    .line 133
    iget-object v5, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v5, v3}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 134
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 135
    .local v1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 138
    .end local v1           #descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_23
    iget-object v5, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v5}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 139
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    .line 140
    .restart local v1       #descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/google/protobuf/FieldSet;->setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_2d

    .line 142
    .end local v1           #descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_47
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    invoke-virtual {p0}, Lcom/google/protobuf/FieldSet;->clone()Lcom/google/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method public getAllFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_a
.end method

.method public getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMessageSetSerializedSize()I
    .registers 6

    .prologue
    .line 675
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .line 676
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-ge v1, v4, :cond_18

    .line 677
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 680
    :cond_18
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 681
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_22

    .line 683
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_34
    return v3
.end method

.method public getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_e

    .line 252
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_1c

    .line 259
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 261
    :cond_1c
    check-cast v0, Ljava/util/List;

    .end local v0           #value:Ljava/lang/Object;
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)I"
        }
    .end annotation

    .prologue
    .line 232
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_e

    .line 233
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_18

    .line 239
    const/4 v1, 0x0

    .line 241
    .end local v0           #value:Ljava/lang/Object;
    :goto_17
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_18
    check-cast v0, Ljava/util/List;

    .end local v0           #value:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_17
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 658
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .line 659
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-ge v1, v4, :cond_22

    .line 660
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 662
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 665
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_22
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 666
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/FieldSet;->computeFieldSize(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2c

    .line 668
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_48
    return v3
.end method

.method public hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_e
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isImmutable()Z
    .registers 2

    .prologue
    .line 118
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 6

    .prologue
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v3, 0x0

    .line 368
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v4

    if-ge v1, v4, :cond_1a

    .line 369
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 379
    :goto_16
    return v3

    .line 368
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    :cond_1a
    iget-object v4, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v4}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 375
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_16

    .line 379
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_37
    const/4 v3, 0x1

    goto :goto_16
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public makeImmutable()V
    .registers 2

    .prologue
    .line 104
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    iget-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_5

    .line 109
    :goto_4
    return-void

    .line 107
    :cond_5
    iget-object v0, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/google/protobuf/SmallSortedMap;->makeImmutable()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/FieldSet;->isImmutable:Z

    goto :goto_4
.end method

.method public mergeFrom(Lcom/google/protobuf/FieldSet;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/FieldSet",
            "<TFieldDescriptorType;>;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, other:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v1, v3, :cond_15

    .line 423
    iget-object v3, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 426
    :cond_15
    iget-object v3, p1, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 427
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0}, Lcom/google/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    goto :goto_1f

    .line 429
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_2f
    return-void
.end method

.method public setField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 199
    instance-of v3, p2, Ljava/util/List;

    if-nez v3, :cond_12

    .line 200
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Wrong object type used with protocol message reflection."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 206
    :cond_12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, newList:Ljava/util/List;
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 209
    .local v0, element:Ljava/lang/Object;
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_20

    .line 211
    .end local v0           #element:Ljava/lang/Object;
    :cond_32
    move-object p2, v2

    .line 216
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #newList:Ljava/util/List;
    :goto_33
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, p1, p2}, Lcom/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void

    .line 213
    .restart local p2
    :cond_39
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_33
.end method

.method public setRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    .local p1, descriptor:Lcom/google/protobuf/FieldSet$FieldDescriptorLite;,"TFieldDescriptorType;"
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_e

    .line 274
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    :cond_e
    iget-object v1, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    .local v0, list:Ljava/lang/Object;
    if-nez v0, :cond_1c

    .line 280
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 283
    :cond_1c
    invoke-interface {p1}, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/google/protobuf/FieldSet;->verifyType(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 284
    check-cast v0, Ljava/util/List;

    .end local v0           #list:Ljava/lang/Object;
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public writeMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v1, v3, :cond_15

    .line 537
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 540
    :cond_15
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 541
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-direct {p0, v0, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1f

    .line 543
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_2f
    return-void
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    .local p0, this:Lcom/google/protobuf/FieldSet;,"Lcom/google/protobuf/FieldSet<TFieldDescriptorType;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v3

    if-ge v1, v3, :cond_1f

    .line 521
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3, v1}, Lcom/google/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 523
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 526
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_1f
    iget-object v3, p0, Lcom/google/protobuf/FieldSet;->fields:Lcom/google/protobuf/SmallSortedMap;

    invoke-virtual {v3}, Lcom/google/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 527
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/google/protobuf/FieldSet;->writeField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_29

    .line 529
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    :cond_43
    return-void
.end method
