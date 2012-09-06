.class public final Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private includePlusPages_:Z

.field private shownPeopleBlob_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40908
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 41018
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 40909
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->maybeForceBuilderInitialization()V

    .line 40910
    return-void
.end method

.method static synthetic access$54800()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 1

    .prologue
    .line 40903
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 1

    .prologue
    .line 40915
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40913
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 3

    .prologue
    .line 40936
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    .line 40937
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40938
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40940
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 6

    .prologue
    .line 40954
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 40955
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 40956
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 40957
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 40958
    or-int/lit8 v2, v2, 0x1

    .line 40960
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->shownPeopleBlob_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->access$55002(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40961
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 40962
    or-int/lit8 v2, v2, 0x2

    .line 40964
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->includePlusPages_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->includePlusPages_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->access$55102(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;Z)Z

    .line 40965
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->access$55202(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;I)I

    .line 40966
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 2

    .prologue
    .line 40919
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40920
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 40921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 40922
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->includePlusPages_:Z

    .line 40923
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 40924
    return-object p0
.end method

.method public clearIncludePlusPages()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 2

    .prologue
    .line 41068
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 41069
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->includePlusPages_:Z

    .line 41071
    return-object p0
.end method

.method public clearShownPeopleBlob()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 2

    .prologue
    .line 41042
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 41043
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getShownPeopleBlob()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41045
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 3

    .prologue
    .line 40928
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

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
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40903
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 2

    .prologue
    .line 40932
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getIncludePlusPages()Z
    .registers 2

    .prologue
    .line 41059
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->includePlusPages_:Z

    return v0
.end method

.method public getShownPeopleBlob()Ljava/lang/String;
    .registers 4

    .prologue
    .line 41023
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41024
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 41025
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 41026
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41029
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

.method public hasIncludePlusPages()Z
    .registers 3

    .prologue
    .line 41056
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

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

.method public hasShownPeopleBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 41020
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

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
    .line 40981
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
    .line 40903
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40903
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

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
    .line 40903
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40989
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 40990
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 40995
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40997
    :sswitch_d
    return-object p0

    .line 41002
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 41003
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    goto :goto_0

    .line 41007
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 41008
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->includePlusPages_:Z

    goto :goto_0

    .line 40990
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 40970
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40977
    :cond_6
    :goto_6
    return-object p0

    .line 40971
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->hasShownPeopleBlob()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 40972
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getShownPeopleBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    .line 40974
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->hasIncludePlusPages()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40975
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getIncludePlusPages()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->setIncludePlusPages(Z)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;

    goto :goto_6
.end method

.method public setIncludePlusPages(Z)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41062
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 41063
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->includePlusPages_:Z

    .line 41065
    return-object p0
.end method

.method public setShownPeopleBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 41033
    if-nez p1, :cond_8

    .line 41034
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41036
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->bitField0_:I

    .line 41037
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData$Builder;->shownPeopleBlob_:Ljava/lang/Object;

    .line 41039
    return-object p0
.end method
