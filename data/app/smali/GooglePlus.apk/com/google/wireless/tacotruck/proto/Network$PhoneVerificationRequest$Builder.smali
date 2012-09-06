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
    .line 50765
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 50865
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50766
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->maybeForceBuilderInitialization()V

    .line 50767
    return-void
.end method

.method static synthetic access$71400()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 1

    .prologue
    .line 50760
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 1

    .prologue
    .line 50772
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 50770
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    .registers 3

    .prologue
    .line 50791
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    .line 50792
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 50793
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 50795
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    .registers 6

    .prologue
    .line 50809
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 50810
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 50811
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 50812
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 50813
    or-int/lit8 v2, v2, 0x1

    .line 50815
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->access$71602(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50816
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->access$71702(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;I)I

    .line 50817
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 2

    .prologue
    .line 50776
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 50777
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50778
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 50779
    return-object p0
.end method

.method public clearPhone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 2

    .prologue
    .line 50901
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 50904
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 3

    .prologue
    .line 50783
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
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 50760
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;
    .registers 2

    .prologue
    .line 50787
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Lcom/google/wireless/tacotruck/proto/Data$Phone;
    .registers 2

    .prologue
    .line 50870
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    return-object v0
.end method

.method public hasPhone()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 50867
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 50829
    const/4 v0, 0x1

    return v0
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
    .line 50760
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 50760
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

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
    .line 50760
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
    .line 50837
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 50838
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_2a

    .line 50843
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50845
    :sswitch_d
    return-object p0

    .line 50850
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    .line 50851
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->hasPhone()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 50852
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->getPhone()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    .line 50854
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 50855
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->setPhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    goto :goto_0

    .line 50838
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
    .line 50821
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 50825
    :cond_6
    :goto_6
    return-object p0

    .line 50822
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->hasPhone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50823
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest;->getPhone()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->mergePhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;

    goto :goto_6
.end method

.method public mergePhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 50889
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 50891
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone;->newBuilder(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50897
    :goto_1f
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 50898
    return-object p0

    .line 50894
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    goto :goto_1f
.end method

.method public setPhone(Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 50883
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Phone$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50885
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 50886
    return-object p0
.end method

.method public setPhone(Lcom/google/wireless/tacotruck/proto/Data$Phone;)Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 50873
    if-nez p1, :cond_8

    .line 50874
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50876
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->phone_:Lcom/google/wireless/tacotruck/proto/Data$Phone;

    .line 50878
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhoneVerificationRequest$Builder;->bitField0_:I

    .line 50879
    return-object p0
.end method
