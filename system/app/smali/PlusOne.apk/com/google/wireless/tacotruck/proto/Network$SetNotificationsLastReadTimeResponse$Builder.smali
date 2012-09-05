.class public final Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private lastReadTime_:D


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33752
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 33753
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->maybeForceBuilderInitialization()V

    .line 33754
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 1

    .prologue
    .line 33759
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 33757
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    .registers 6

    .prologue
    .line 33796
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 33797
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 33798
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 33799
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 33800
    or-int/lit8 v2, v2, 0x1

    .line 33802
    :cond_10
    iget-wide v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->lastReadTime_:D
    invoke-static {v1, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->access$47102(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;D)D

    .line 33803
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->access$47202(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;I)I

    .line 33804
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 3

    .prologue
    .line 33763
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 33764
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    .line 33765
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 33766
    return-object p0
.end method

.method public clearLastReadTime()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 3

    .prologue
    .line 33862
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 33863
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    .line 33865
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 3

    .prologue
    .line 33770
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

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
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 33747
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;
    .registers 2

    .prologue
    .line 33774
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getLastReadTime()D
    .registers 3

    .prologue
    .line 33853
    iget-wide v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    return-wide v0
.end method

.method public hasLastReadTime()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 33850
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

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
    .line 33747
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

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
    .line 33747
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33824
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 33825
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 33830
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33832
    :sswitch_d
    return-object p0

    .line 33837
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 33838
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    goto :goto_0

    .line 33825
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x9 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 33808
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 33812
    :cond_6
    :goto_6
    return-object p0

    .line 33809
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->hasLastReadTime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33810
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse;->getLastReadTime()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;

    goto :goto_6
.end method

.method public setLastReadTime(D)Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 33856
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->bitField0_:I

    .line 33857
    iput-wide p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetNotificationsLastReadTimeResponse$Builder;->lastReadTime_:D

    .line 33859
    return-object p0
.end method
