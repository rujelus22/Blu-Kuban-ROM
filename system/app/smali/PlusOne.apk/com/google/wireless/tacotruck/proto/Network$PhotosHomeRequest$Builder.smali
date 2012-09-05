.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private maxCoverCountPerSection_:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38882
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38883
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maybeForceBuilderInitialization()V

    .line 38884
    return-void
.end method

.method static synthetic access$54000()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 1

    .prologue
    .line 38877
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 1

    .prologue
    .line 38889
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38887
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 3

    .prologue
    .line 38908
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    .line 38909
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 38910
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 38912
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 6

    .prologue
    .line 38926
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 38927
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 38928
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 38929
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 38930
    or-int/lit8 v2, v2, 0x1

    .line 38932
    :cond_10
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->maxCoverCountPerSection_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->access$54202(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;I)I

    .line 38933
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->access$54302(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;I)I

    .line 38934
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 2

    .prologue
    .line 38893
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38894
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    .line 38895
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 38896
    return-object p0
.end method

.method public clearMaxCoverCountPerSection()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 2

    .prologue
    .line 38992
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 38993
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    .line 38995
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 3

    .prologue
    .line 38900
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

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
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38877
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;
    .registers 2

    .prologue
    .line 38904
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCoverCountPerSection()I
    .registers 2

    .prologue
    .line 38983
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    return v0
.end method

.method public hasMaxCoverCountPerSection()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38980
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

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
    .line 38877
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

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
    .line 38877
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38954
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 38955
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_1c

    .line 38960
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38962
    :sswitch_d
    return-object p0

    .line 38967
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 38968
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    goto :goto_0

    .line 38955
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 38938
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 38942
    :cond_6
    :goto_6
    return-object p0

    .line 38939
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->hasMaxCoverCountPerSection()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38940
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest;->getMaxCoverCountPerSection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->setMaxCoverCountPerSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;

    goto :goto_6
.end method

.method public setMaxCoverCountPerSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38986
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->bitField0_:I

    .line 38987
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeRequest$Builder;->maxCoverCountPerSection_:I

    .line 38989
    return-object p0
.end method
