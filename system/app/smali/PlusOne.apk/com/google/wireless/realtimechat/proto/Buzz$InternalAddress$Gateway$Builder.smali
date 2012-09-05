.class public final Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Buzz.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$GatewayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$GatewayOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cookie_:Ljava/lang/Object;

.field private networkLocation_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 900
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    .line 936
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    .line 787
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->maybeForceBuilderInitialization()V

    .line 788
    return-void
.end method

.method static synthetic access$800()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 1

    .prologue
    .line 781
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 1

    .prologue
    .line 793
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 791
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 3

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    .line 815
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 816
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 818
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 6

    .prologue
    .line 832
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;-><init>(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;Lcom/google/wireless/realtimechat/proto/Buzz$1;)V

    .line 833
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 834
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 835
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 836
    or-int/lit8 v2, v2, 0x1

    .line 838
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->networkLocation_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->access$1002(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 840
    or-int/lit8 v2, v2, 0x2

    .line 842
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->cookie_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->access$1102(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    #setter for: Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->access$1202(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;I)I

    .line 844
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 2

    .prologue
    .line 797
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    .line 799
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 800
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    .line 801
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 802
    return-object p0
.end method

.method public clearCookie()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 2

    .prologue
    .line 960
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 961
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getCookie()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    .line 963
    return-object p0
.end method

.method public clearNetworkLocation()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 2

    .prologue
    .line 924
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 925
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getNetworkLocation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    .line 927
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 3

    .prologue
    .line 806
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->create()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

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
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCookie()Ljava/lang/String;
    .registers 4

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    .line 942
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 943
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    .line 947
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

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;
    .registers 2

    .prologue
    .line 810
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkLocation()Ljava/lang/String;
    .registers 4

    .prologue
    .line 905
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    .line 906
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 907
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    .line 911
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

.method public hasCookie()Z
    .registers 3

    .prologue
    .line 938
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

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

.method public hasNetworkLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 902
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

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
    .line 781
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 871
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 872
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 877
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 879
    :sswitch_d
    return-object p0

    .line 884
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 885
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    goto :goto_0

    .line 889
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 890
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    goto :goto_0

    .line 872
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0x32 -> :sswitch_e
        0x3a -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 848
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 855
    :cond_6
    :goto_6
    return-object p0

    .line 849
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->hasNetworkLocation()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 850
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getNetworkLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->setNetworkLocation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    .line 852
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->hasCookie()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 853
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway;->getCookie()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->setCookie(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;

    goto :goto_6
.end method

.method public setCookie(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 951
    if-nez p1, :cond_8

    .line 952
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 954
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 955
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->cookie_:Ljava/lang/Object;

    .line 957
    return-object p0
.end method

.method public setNetworkLocation(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 915
    if-nez p1, :cond_8

    .line 916
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 918
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->bitField0_:I

    .line 919
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress$Gateway$Builder;->networkLocation_:Ljava/lang/Object;

    .line 921
    return-object p0
.end method
