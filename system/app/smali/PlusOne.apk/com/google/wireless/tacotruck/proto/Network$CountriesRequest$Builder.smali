.class public final Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$CountriesRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$CountriesRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private returnKnownPhoneNumber_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 48793
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 48889
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->returnKnownPhoneNumber_:Z

    .line 48794
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->maybeForceBuilderInitialization()V

    .line 48795
    return-void
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 1

    .prologue
    .line 48800
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 48798
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
    .registers 6

    .prologue
    .line 48837
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 48838
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    .line 48839
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 48840
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 48841
    or-int/lit8 v2, v2, 0x1

    .line 48843
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->returnKnownPhoneNumber_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->returnKnownPhoneNumber_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->access$68902(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;Z)Z

    .line 48844
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->access$69002(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;I)I

    .line 48845
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 2

    .prologue
    .line 48804
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 48805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->returnKnownPhoneNumber_:Z

    .line 48806
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    .line 48807
    return-object p0
.end method

.method public clearReturnKnownPhoneNumber()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 2

    .prologue
    .line 48903
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    .line 48904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->returnKnownPhoneNumber_:Z

    .line 48906
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 3

    .prologue
    .line 48811
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

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
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 48788
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;
    .registers 2

    .prologue
    .line 48815
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v0

    return-object v0
.end method

.method public getReturnKnownPhoneNumber()Z
    .registers 2

    .prologue
    .line 48894
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->returnKnownPhoneNumber_:Z

    return v0
.end method

.method public hasReturnKnownPhoneNumber()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 48891
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

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
    .line 48788
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

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
    .line 48788
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48865
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 48866
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 48871
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48873
    :sswitch_d
    return-object p0

    .line 48878
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    .line 48879
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->returnKnownPhoneNumber_:Z

    goto :goto_0

    .line 48866
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 48849
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 48853
    :cond_6
    :goto_6
    return-object p0

    .line 48850
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->hasReturnKnownPhoneNumber()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48851
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest;->getReturnKnownPhoneNumber()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->setReturnKnownPhoneNumber(Z)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;

    goto :goto_6
.end method

.method public setReturnKnownPhoneNumber(Z)Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 48897
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->bitField0_:I

    .line 48898
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$CountriesRequest$Builder;->returnKnownPhoneNumber_:Z

    .line 48900
    return-object p0
.end method
