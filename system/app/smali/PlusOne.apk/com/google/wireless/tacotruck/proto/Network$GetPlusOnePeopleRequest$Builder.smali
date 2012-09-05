.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private plusoneId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 25672
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 25768
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 25673
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->maybeForceBuilderInitialization()V

    .line 25674
    return-void
.end method

.method static synthetic access$35500()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 1

    .prologue
    .line 25667
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 1

    .prologue
    .line 25679
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 25677
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
    .registers 3

    .prologue
    .line 25698
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    .line 25699
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 25700
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 25702
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
    .registers 6

    .prologue
    .line 25716
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 25717
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    .line 25718
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 25719
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 25720
    or-int/lit8 v2, v2, 0x1

    .line 25722
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->plusoneId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->access$35702(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25723
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->access$35802(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;I)I

    .line 25724
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 2

    .prologue
    .line 25683
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 25684
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 25685
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    .line 25686
    return-object p0
.end method

.method public clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 2

    .prologue
    .line 25792
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    .line 25793
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 25795
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 3

    .prologue
    .line 25690
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

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
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 25667
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;
    .registers 2

    .prologue
    .line 25694
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 25773
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 25774
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 25775
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 25776
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 25779
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

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 25770
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

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
    .line 25667
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

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
    .line 25667
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25744
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 25745
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 25750
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25752
    :sswitch_d
    return-object p0

    .line 25757
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    .line 25758
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    goto :goto_0

    .line 25745
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 25728
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 25732
    :cond_6
    :goto_6
    return-object p0

    .line 25729
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->hasPlusoneId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25730
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;

    goto :goto_6
.end method

.method public setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 25783
    if-nez p1, :cond_8

    .line 25784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 25786
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->bitField0_:I

    .line 25787
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleRequest$Builder;->plusoneId_:Ljava/lang/Object;

    .line 25789
    return-object p0
.end method
