.class public final Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 49615
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 49715
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49616
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 49617
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 1

    .prologue
    .line 49622
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 49620
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    .registers 6

    .prologue
    .line 49659
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 49660
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 49661
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 49662
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 49663
    or-int/lit8 v2, v2, 0x1

    .line 49665
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->access$70102(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49666
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->access$70202(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;I)I

    .line 49667
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 2

    .prologue
    .line 49626
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 49627
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49628
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 49629
    return-object p0
.end method

.method public clearPhone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 2

    .prologue
    .line 49751
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49753
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 49754
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 3

    .prologue
    .line 49633
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

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
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 49610
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    .registers 2

    .prologue
    .line 49637
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 49720
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method public hasPhone()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 49717
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

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
    .line 49610
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

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
    .line 49610
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49687
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 49688
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 49693
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49695
    :sswitch_d
    return-object p0

    .line 49700
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    .line 49701
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->hasPhone()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 49702
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->getPhone()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    .line 49704
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 49705
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->setPhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    goto :goto_0

    .line 49688
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 49671
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 49675
    :cond_6
    :goto_6
    return-object p0

    .line 49672
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49673
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getPhone()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->mergePhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    goto :goto_6
.end method

.method public mergePhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 49739
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 49741
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49747
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 49748
    return-object p0

    .line 49744
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    goto :goto_1f
.end method

.method public setPhone(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 49733
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49735
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 49736
    return-object p0
.end method

.method public setPhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 49723
    if-nez p1, :cond_8

    .line 49724
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49726
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 49728
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 49729
    return-object p0
.end method
