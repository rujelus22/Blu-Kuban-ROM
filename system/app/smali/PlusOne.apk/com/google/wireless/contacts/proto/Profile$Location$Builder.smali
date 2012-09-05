.class public final Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Profile.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Profile$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Profile$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Profile$Location;",
        "Lcom/google/wireless/contacts/proto/Profile$Location$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Profile$LocationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

.field private point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 733
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 776
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    .line 812
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 596
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->maybeForceBuilderInitialization()V

    .line 597
    return-void
.end method

.method static synthetic access$700()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 1

    .prologue
    .line 590
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 1

    .prologue
    .line 602
    new-instance v0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 600
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 3

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    .line 626
    .local v0, result:Lcom/google/wireless/contacts/proto/Profile$Location;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 627
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 629
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 6

    .prologue
    .line 643
    new-instance v1, Lcom/google/wireless/contacts/proto/Profile$Location;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Profile$Location;-><init>(Lcom/google/wireless/contacts/proto/Profile$Location$Builder;Lcom/google/wireless/contacts/proto/Profile$1;)V

    .line 644
    .local v1, result:Lcom/google/wireless/contacts/proto/Profile$Location;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 645
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 646
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 647
    or-int/lit8 v2, v2, 0x1

    .line 649
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Location;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Location;->access$902(Lcom/google/wireless/contacts/proto/Profile$Location;Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 650
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 651
    or-int/lit8 v2, v2, 0x2

    .line 653
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Location;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Location;->access$1002(Lcom/google/wireless/contacts/proto/Profile$Location;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 655
    or-int/lit8 v2, v2, 0x4

    .line 657
    :cond_28
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    #setter for: Lcom/google/wireless/contacts/proto/Profile$Location;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Profile$Location;->access$1102(Lcom/google/wireless/contacts/proto/Profile$Location;Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 658
    #setter for: Lcom/google/wireless/contacts/proto/Profile$Location;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Profile$Location;->access$1202(Lcom/google/wireless/contacts/proto/Profile$Location;I)I

    .line 659
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->clear()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 2

    .prologue
    .line 606
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 607
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 608
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    .line 610
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 611
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 612
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 613
    return-object p0
.end method

.method public clearMetadata()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 2

    .prologue
    .line 769
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 771
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 772
    return-object p0
.end method

.method public clearPoint()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 2

    .prologue
    .line 848
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 850
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 851
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 2

    .prologue
    .line 800
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 801
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$Location;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    .line 803
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 3

    .prologue
    .line 617
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->create()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

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
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->clone()Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Profile$Location;
    .registers 2

    .prologue
    .line 621
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;
    .registers 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    return-object v0
.end method

.method public getPoint()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;
    .registers 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 4

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    .line 782
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 783
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    .line 787
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public hasMetadata()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 735
    iget v1, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPoint()Z
    .registers 3

    .prologue
    .line 814
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasValue()Z
    .registers 3

    .prologue
    .line 778
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 692
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_54

    .line 697
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    :sswitch_d
    return-object p0

    .line 704
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder()Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    .line 705
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->hasMetadata()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 706
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    .line 708
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 709
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    goto :goto_0

    .line 713
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 714
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 718
    :sswitch_37
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->newBuilder()Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    .line 719
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->hasPoint()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 720
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->getPoint()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    .line 722
    :cond_48
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 723
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->setPoint(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    goto :goto_0

    .line 692
    nop

    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
        0x1a -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Profile$Location;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 663
    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$Location;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$Location;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 673
    :cond_6
    :goto_6
    return-object p0

    .line 664
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location;->hasMetadata()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 665
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location;->getMetadata()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    .line 667
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 668
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    .line 670
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location;->hasPoint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 671
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$Location;->getPoint()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->mergePoint(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;

    goto :goto_6
.end method

.method public mergeMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 757
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Common$Metadata;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 759
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata;->newBuilder(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 765
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 766
    return-object p0

    .line 762
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    goto :goto_1f
.end method

.method public mergePoint(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 836
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 838
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint;->newBuilder(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 844
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 845
    return-object p0

    .line 841
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    goto :goto_1f
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 751
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Common$Metadata$Builder;->build()Lcom/google/wireless/contacts/proto/Common$Metadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 753
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 754
    return-object p0
.end method

.method public setMetadata(Lcom/google/wireless/contacts/proto/Common$Metadata;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 741
    if-nez p1, :cond_8

    .line 742
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 744
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->metadata_:Lcom/google/wireless/contacts/proto/Common$Metadata;

    .line 746
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 747
    return-object p0
.end method

.method public setPoint(Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 830
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Profile$LocationPoint$Builder;->build()Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 832
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 833
    return-object p0
.end method

.method public setPoint(Lcom/google/wireless/contacts/proto/Profile$LocationPoint;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 820
    if-nez p1, :cond_8

    .line 821
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 823
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->point_:Lcom/google/wireless/contacts/proto/Profile$LocationPoint;

    .line 825
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 826
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Profile$Location$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 791
    if-nez p1, :cond_8

    .line 792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 794
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->bitField0_:I

    .line 795
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Profile$Location$Builder;->value_:Ljava/lang/Object;

    .line 797
    return-object p0
.end method
