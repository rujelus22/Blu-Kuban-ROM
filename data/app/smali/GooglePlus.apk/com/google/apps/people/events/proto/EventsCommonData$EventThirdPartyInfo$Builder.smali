.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private parkingInfo_:Ljava/lang/Object;

.field private thirdPartyEventUrl_:Ljava/lang/Object;

.field private ticketSellerUrl_:Ljava/lang/Object;

.field private videoUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 832
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->thirdPartyEventUrl_:Ljava/lang/Object;

    .line 1006
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->ticketSellerUrl_:Ljava/lang/Object;

    .line 1042
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->parkingInfo_:Ljava/lang/Object;

    .line 1078
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->videoUrl_:Ljava/lang/Object;

    .line 833
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->maybeForceBuilderInitialization()V

    .line 834
    return-void
.end method

.method static synthetic access$1000()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 1

    .prologue
    .line 827
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 1

    .prologue
    .line 839
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 837
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 3

    .prologue
    .line 864
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    .line 865
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 866
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 868
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 6

    .prologue
    .line 882
    new-instance v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 883
    .local v1, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 884
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 885
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 886
    or-int/lit8 v2, v2, 0x1

    .line 888
    :cond_10
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->thirdPartyEventUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->thirdPartyEventUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->access$1202(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 890
    or-int/lit8 v2, v2, 0x2

    .line 892
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->ticketSellerUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->ticketSellerUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->access$1302(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 894
    or-int/lit8 v2, v2, 0x4

    .line 896
    :cond_28
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->parkingInfo_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->parkingInfo_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->access$1402(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 898
    or-int/lit8 v2, v2, 0x8

    .line 900
    :cond_35
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->videoUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->videoUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->access$1502(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->access$1602(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;I)I

    .line 902
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 2

    .prologue
    .line 843
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 844
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->thirdPartyEventUrl_:Ljava/lang/Object;

    .line 845
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 846
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->ticketSellerUrl_:Ljava/lang/Object;

    .line 847
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 848
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->parkingInfo_:Ljava/lang/Object;

    .line 849
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->videoUrl_:Ljava/lang/Object;

    .line 851
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 852
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 3

    .prologue
    .line 856
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

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
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;
    .registers 2

    .prologue
    .line 860
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 906
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 919
    :cond_6
    :goto_6
    return-object p0

    .line 907
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->hasThirdPartyEventUrl()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 908
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getThirdPartyEventUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->setThirdPartyEventUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    .line 910
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->hasTicketSellerUrl()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 911
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getTicketSellerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->setTicketSellerUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    .line 913
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->hasParkingInfo()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 914
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getParkingInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->setParkingInfo(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    .line 916
    :cond_2e
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->hasVideoUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->setVideoUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 932
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_42

    .line 937
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 939
    :sswitch_d
    return-object p0

    .line 944
    :sswitch_e
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 945
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->thirdPartyEventUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 949
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 950
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->ticketSellerUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 954
    :sswitch_28
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 955
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->parkingInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 959
    :sswitch_35
    iget v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 960
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->videoUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 932
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_35
    .end sparse-switch
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
    .line 827
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 827
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

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
    .line 827
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setParkingInfo(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1057
    if-nez p1, :cond_8

    .line 1058
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1060
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 1061
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->parkingInfo_:Ljava/lang/Object;

    .line 1063
    return-object p0
.end method

.method public setThirdPartyEventUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 985
    if-nez p1, :cond_8

    .line 986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 988
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 989
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->thirdPartyEventUrl_:Ljava/lang/Object;

    .line 991
    return-object p0
.end method

.method public setTicketSellerUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1021
    if-nez p1, :cond_8

    .line 1022
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1024
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 1025
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->ticketSellerUrl_:Ljava/lang/Object;

    .line 1027
    return-object p0
.end method

.method public setVideoUrl(Ljava/lang/String;)Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1093
    if-nez p1, :cond_8

    .line 1094
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1096
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->bitField0_:I

    .line 1097
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventThirdPartyInfo$Builder;->videoUrl_:Ljava/lang/Object;

    .line 1099
    return-object p0
.end method
