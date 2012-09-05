.class public final Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "FilterRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/FilterRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Availability"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    }
.end annotation


# instance fields
.field private availableIfOwned_:Z

.field private cachedSize:I

.field private hasAvailableIfOwned:Z

.field private hasOfferType:Z

.field private hasRestriction:Z

.field private hasRule:Z

.field private offerType_:I

.field private perDeviceAvailabilityRestriction_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;",
            ">;"
        }
    .end annotation
.end field

.field private restriction_:I

.field private rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 534
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 703
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    .line 737
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    .line 843
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    .line 534
    return-void
.end method


# virtual methods
.method public addPerDeviceAvailabilityRestriction(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 790
    if-nez p1, :cond_8

    .line 791
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 793
    :cond_8
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 794
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    .line 796
    :cond_17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    return-object p0
.end method

.method public getAvailableIfOwned()Z
    .registers 2

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    return v0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 845
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    if-gez v0, :cond_7

    .line 847
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getSerializedSize()I

    .line 849
    :cond_7
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    return v0
.end method

.method public getOfferType()I
    .registers 2

    .prologue
    .line 739
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    return v0
.end method

.method public getPerDeviceAvailabilityRestrictionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->perDeviceAvailabilityRestriction_:Ljava/util/List;

    return-object v0
.end method

.method public getRestriction()I
    .registers 2

    .prologue
    .line 705
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    return v0
.end method

.method public getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 853
    const/4 v2, 0x0

    .line 854
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 855
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 858
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 859
    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOfferType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 862
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 863
    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 866
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getPerDeviceAvailabilityRestrictionList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    .line 867
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v3, 0x9

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_39

    .line 870
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 871
    const/16 v3, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getAvailableIfOwned()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 874
    :cond_5e
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->cachedSize:I

    .line 875
    return v2
.end method

.method public hasAvailableIfOwned()Z
    .registers 2

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    return v0
.end method

.method public hasOfferType()Z
    .registers 2

    .prologue
    .line 738
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType:Z

    return v0
.end method

.method public hasRestriction()Z
    .registers 2

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction:Z

    return v0
.end method

.method public hasRule()Z
    .registers 2

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 882
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 883
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_40

    .line 887
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 888
    :sswitch_d
    return-object p0

    .line 893
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 897
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setOfferType(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 901
    :sswitch_1e
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;-><init>()V

    .line 902
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 903
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 907
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;
    :sswitch_2a
    new-instance v1, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;-><init>()V

    .line 908
    .local v1, value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 909
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->addPerDeviceAvailabilityRestriction(Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 913
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :sswitch_38
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->setAvailableIfOwned(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    goto :goto_0

    .line 883
    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_d
        0x28 -> :sswitch_e
        0x30 -> :sswitch_16
        0x3a -> :sswitch_1e
        0x4b -> :sswitch_2a
        0x68 -> :sswitch_38
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;

    move-result-object v0

    return-object v0
.end method

.method public setAvailableIfOwned(Z)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned:Z

    .line 725
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->availableIfOwned_:Z

    .line 726
    return-object p0
.end method

.method public setOfferType(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType:Z

    .line 742
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->offerType_:I

    .line 743
    return-object p0
.end method

.method public setRestriction(I)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 707
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction:Z

    .line 708
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->restriction_:I

    .line 709
    return-object p0
.end method

.method public setRule(Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;)Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;
    .registers 3
    .parameter "value"

    .prologue
    .line 758
    if-nez p1, :cond_8

    .line 759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 761
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule:Z

    .line 762
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->rule_:Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    .line 763
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRestriction()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 827
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRestriction()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 829
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasOfferType()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 830
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getOfferType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 832
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasRule()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 833
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getRule()Lcom/google/android/finsky/remoting/protos/FilterRules$Rule;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 835
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getPerDeviceAvailabilityRestrictionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;

    .line 836
    .local v0, element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_32

    .line 838
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/FilterRules$Availability$PerDeviceAvailabilityRestriction;
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->hasAvailableIfOwned()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 839
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/FilterRules$Availability;->getAvailableIfOwned()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 841
    :cond_53
    return-void
.end method
