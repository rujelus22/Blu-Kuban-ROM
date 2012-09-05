.class public final Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResultOrBuilder;"
    }
.end annotation


# instance fields
.field private addressBookKey_:Ljava/lang/Object;

.field private bitField0_:I

.field private contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9643
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9757
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 9793
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9644
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->maybeForceBuilderInitialization()V

    .line 9645
    return-void
.end method

.method static synthetic access$12700()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 1

    .prologue
    .line 9638
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 1

    .prologue
    .line 9650
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9648
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    .registers 3

    .prologue
    .line 9671
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    .line 9672
    .local v0, result:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9673
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9675
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    .registers 6

    .prologue
    .line 9689
    new-instance v1, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V

    .line 9690
    .local v1, result:Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9691
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9692
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9693
    or-int/lit8 v2, v2, 0x1

    .line 9695
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->addressBookKey_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->access$12902(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9696
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9697
    or-int/lit8 v2, v2, 0x2

    .line 9699
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->access$13002(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9700
    #setter for: Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->access$13102(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;I)I

    .line 9701
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 2

    .prologue
    .line 9654
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9655
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 9656
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9657
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9658
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9659
    return-object p0
.end method

.method public clearAddressBookKey()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 2

    .prologue
    .line 9781
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9782
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getAddressBookKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 9784
    return-object p0
.end method

.method public clearContact()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 2

    .prologue
    .line 9829
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9831
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9832
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 3

    .prologue
    .line 9663
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

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
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->clone()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAddressBookKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9762
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 9763
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9764
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9765
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 9768
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

.method public getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 9798
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9638
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;
    .registers 2

    .prologue
    .line 9667
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    return-object v0
.end method

.method public hasAddressBookKey()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9759
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasContact()Z
    .registers 3

    .prologue
    .line 9795
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

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

.method public mergeContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 9817
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 9819
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9825
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9826
    return-object p0

    .line 9822
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    goto :goto_1f
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
    .line 9638
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

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
    .line 9638
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9724
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 9725
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_38

    .line 9730
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9732
    :sswitch_d
    return-object p0

    .line 9737
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9738
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    goto :goto_0

    .line 9742
    :sswitch_1b
    invoke-static {}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->newBuilder()Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    move-result-object v0

    .line 9743
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->hasContact()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 9744
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;

    .line 9746
    :cond_2c
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9747
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->setContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    goto :goto_0

    .line 9725
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 9705
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9712
    :cond_6
    :goto_6
    return-object p0

    .line 9706
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->hasAddressBookKey()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9707
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getAddressBookKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->setAddressBookKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    .line 9709
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->hasContact()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9710
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->mergeContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;

    goto :goto_6
.end method

.method public setAddressBookKey(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9772
    if-nez p1, :cond_8

    .line 9773
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9775
    :cond_8
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9776
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->addressBookKey_:Ljava/lang/Object;

    .line 9778
    return-object p0
.end method

.method public setContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 9811
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact$Builder;->build()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9813
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9814
    return-object p0
.end method

.method public setContact(Lcom/google/wireless/contacts/proto/Contact$MobileContact;)Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9801
    if-nez p1, :cond_8

    .line 9802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9804
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->contact_:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 9806
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileAddressBookResult$Builder;->bitField0_:I

    .line 9807
    return-object p0
.end method
