.class public final Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;",
        ">;",
        "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private contact_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;",
            ">;"
        }
    .end annotation
.end field

.field private highConfidence_:Z

.field private priority_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 6931
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 7048
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    .line 6932
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->maybeForceBuilderInitialization()V

    .line 6933
    return-void
.end method

.method static synthetic access$7800()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .registers 1

    .prologue
    .line 6926
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .registers 1

    .prologue
    .line 6938
    new-instance v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    invoke-direct {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureContactIsMutable()V
    .registers 3

    .prologue
    .line 7051
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 7052
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    .line 7053
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    .line 7055
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 6936
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .registers 3

    .prologue
    .line 6961
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    .line 6962
    .local v0, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    invoke-virtual {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 6963
    invoke-static {v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 6965
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .registers 6

    .prologue
    .line 6969
    new-instance v1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/wireless/voicesearch/VoiceSearch$1;)V

    .line 6970
    .local v1, result:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    .line 6971
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6972
    .local v2, to_bitField0_:I
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 6973
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    .line 6974
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    .line 6976
    :cond_1e
    iget-object v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->access$8002(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;Ljava/util/List;)Ljava/util/List;

    .line 6977
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 6978
    or-int/lit8 v2, v2, 0x1

    .line 6980
    :cond_2a
    iget v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->priority_:I

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->priority_:I
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->access$8102(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;I)I

    .line 6981
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 6982
    or-int/lit8 v2, v2, 0x2

    .line 6984
    :cond_36
    iget-boolean v3, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->highConfidence_:Z

    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->highConfidence_:Z
    invoke-static {v1, v3}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->access$8202(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;Z)Z

    .line 6985
    #setter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->access$8302(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;I)I

    .line 6986
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 6926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 6926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .registers 3

    .prologue
    .line 6953
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->create()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->buildPartial()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

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
    .line 6926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->clone()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
    .registers 3
    .parameter "index"

    .prologue
    .line 7064
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    return-object v0
.end method

.method public getContactCount()I
    .registers 2

    .prologue
    .line 7061
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 6926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6926
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    .registers 2

    .prologue
    .line 6957
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    return-object v0
.end method

.method public hasHighConfidence()Z
    .registers 3

    .prologue
    .line 7160
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPriority()Z
    .registers 3

    .prologue
    .line 7139
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 7011
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->hasPriority()Z

    move-result v2

    if-nez v2, :cond_8

    .line 7025
    :cond_7
    :goto_7
    return v1

    .line 7015
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->hasHighConfidence()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7019
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    invoke-virtual {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->getContactCount()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 7020
    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7019
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 7025
    :cond_22
    const/4 v1, 0x1

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
    .line 6926
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 6926
    check-cast p1, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

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
    .line 6926
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7032
    const/4 v2, 0x0

    .line 7034
    .local v2, parsedMessage:Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;
    :try_start_1
    sget-object v3, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 7039
    if-eqz v2, :cond_10

    .line 7040
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    .line 7043
    :cond_10
    return-object p0

    .line 7035
    :catch_11
    move-exception v1

    .line 7036
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-object v2, v0

    .line 7037
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 7039
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 7040
    invoke-virtual {p0, v2}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 6990
    invoke-static {}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getDefaultInstance()Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 7007
    :cond_6
    :goto_6
    return-object p0

    .line 6991
    :cond_7
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->access$8000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 6992
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 6993
    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->access$8000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    .line 6994
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    .line 7001
    :cond_25
    :goto_25
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->hasPriority()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 7002
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getPriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->setPriority(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    .line 7004
    :cond_32
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->hasHighConfidence()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7005
    invoke-virtual {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->getHighConfidence()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->setHighConfidence(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;

    goto :goto_6

    .line 6996
    :cond_40
    invoke-direct {p0}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->ensureContactIsMutable()V

    .line 6997
    iget-object v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->contact_:Ljava/util/List;

    #getter for: Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->contact_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;->access$8000(Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_25
.end method

.method public setHighConfidence(Z)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7166
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    .line 7167
    iput-boolean p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->highConfidence_:Z

    .line 7169
    return-object p0
.end method

.method public setPriority(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 7145
    iget v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->bitField0_:I

    .line 7146
    iput p1, p0, Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsData$Builder;->priority_:I

    .line 7148
    return-object p0
.end method
