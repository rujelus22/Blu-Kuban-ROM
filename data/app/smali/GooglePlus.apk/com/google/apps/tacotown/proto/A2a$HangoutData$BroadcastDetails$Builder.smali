.class public final Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;",
        ">;",
        "Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetailsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private broadcastTitle_:Ljava/lang/Object;

.field private broadcastUrl_:Ljava/lang/Object;

.field private youtubeLiveId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->youtubeLiveId_:Ljava/lang/Object;

    .line 961
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastTitle_:Ljava/lang/Object;

    .line 997
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastUrl_:Ljava/lang/Object;

    .line 802
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->maybeForceBuilderInitialization()V

    .line 803
    return-void
.end method

.method static synthetic access$600()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 1

    .prologue
    .line 796
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 1

    .prologue
    .line 808
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 806
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
    .registers 3

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    .line 832
    .local v0, result:Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
    invoke-virtual {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 833
    invoke-static {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 835
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->build()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
    .registers 6

    .prologue
    .line 849
    new-instance v1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;-><init>(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V

    .line 850
    .local v1, result:Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 851
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 852
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 853
    or-int/lit8 v2, v2, 0x1

    .line 855
    :cond_10
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->youtubeLiveId_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->youtubeLiveId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->access$802(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 857
    or-int/lit8 v2, v2, 0x2

    .line 859
    :cond_1c
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastTitle_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->access$902(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 861
    or-int/lit8 v2, v2, 0x4

    .line 863
    :cond_28
    iget-object v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastUrl_:Ljava/lang/Object;

    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->broadcastUrl_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->access$1002(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    #setter for: Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->access$1102(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;I)I

    .line 865
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 2

    .prologue
    .line 812
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 813
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->youtubeLiveId_:Ljava/lang/Object;

    .line 814
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 815
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastTitle_:Ljava/lang/Object;

    .line 816
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 817
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastUrl_:Ljava/lang/Object;

    .line 818
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 819
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->clear()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 3

    .prologue
    .line 823
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->buildPartial()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

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
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->clone()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;
    .registers 2

    .prologue
    .line 827
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 883
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 869
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 879
    :cond_6
    :goto_6
    return-object p0

    .line 870
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->hasYoutubeLiveId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 871
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getYoutubeLiveId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->setYoutubeLiveId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    .line 873
    :cond_14
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->hasBroadcastTitle()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 874
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getBroadcastTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->setBroadcastTitle(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    .line 876
    :cond_21
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->hasBroadcastUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 877
    invoke-virtual {p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;->getBroadcastUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->setBroadcastUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 891
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 892
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 897
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 899
    :sswitch_d
    return-object p0

    .line 904
    :sswitch_e
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 905
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->youtubeLiveId_:Ljava/lang/Object;

    goto :goto_0

    .line 909
    :sswitch_1b
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 910
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 914
    :sswitch_28
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 915
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 892
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x1a -> :sswitch_28
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
    .line 796
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 796
    check-cast p1, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

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
    .line 796
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBroadcastTitle(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 3
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 976
    if-nez p1, :cond_8

    .line 977
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 979
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 980
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastTitle_:Ljava/lang/Object;

    .line 982
    return-object p0
.end method

.method public setBroadcastUrl(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1012
    if-nez p1, :cond_8

    .line 1013
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1015
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 1016
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->broadcastUrl_:Ljava/lang/Object;

    .line 1018
    return-object p0
.end method

.method public setYoutubeLiveId(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 940
    if-nez p1, :cond_8

    .line 941
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 943
    :cond_8
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->bitField0_:I

    .line 944
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutData$BroadcastDetails$Builder;->youtubeLiveId_:Ljava/lang/Object;

    .line 946
    return-object p0
.end method
