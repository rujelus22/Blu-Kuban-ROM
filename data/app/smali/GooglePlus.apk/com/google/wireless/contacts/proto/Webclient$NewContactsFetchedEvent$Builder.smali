.class public final Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;",
        "Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;",
        ">;",
        "Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEventOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

.field private isFirst_:Z

.field private noData_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1065
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 938
    invoke-direct {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->maybeForceBuilderInitialization()V

    .line 939
    return-void
.end method

.method static synthetic access$1200()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 1

    .prologue
    .line 932
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 1

    .prologue
    .line 944
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 942
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->build()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 3

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    .line 968
    .local v0, result:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 969
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 971
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 6

    .prologue
    .line 985
    new-instance v1, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;-><init>(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V

    .line 986
    .local v1, result:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 987
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 988
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 989
    or-int/lit8 v2, v2, 0x1

    .line 991
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->access$1402(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 992
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 993
    or-int/lit8 v2, v2, 0x2

    .line 995
    :cond_1c
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->isFirst_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->isFirst_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->access$1502(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;Z)Z

    .line 996
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 997
    or-int/lit8 v2, v2, 0x4

    .line 999
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->noData_:Z

    #setter for: Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->noData_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->access$1602(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;Z)Z

    .line 1000
    #setter for: Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->access$1702(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;I)I

    .line 1001
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->clear()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 948
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 949
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 950
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 951
    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->isFirst_:Z

    .line 952
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 953
    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->noData_:Z

    .line 954
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 955
    return-object p0
.end method

.method public clearFetchStage()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 2

    .prologue
    .line 1101
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 1103
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1104
    return-object p0
.end method

.method public clearIsFirst()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 2

    .prologue
    .line 1122
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->isFirst_:Z

    .line 1125
    return-object p0
.end method

.method public clearNoData()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 2

    .prologue
    .line 1143
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->noData_:Z

    .line 1146
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 3

    .prologue
    .line 959
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

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
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->clone()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 2

    .prologue
    .line 963
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getFetchStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    return-object v0
.end method

.method public getIsFirst()Z
    .registers 2

    .prologue
    .line 1113
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->isFirst_:Z

    return v0
.end method

.method public getNoData()Z
    .registers 2

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->noData_:Z

    return v0
.end method

.method public hasFetchStage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1067
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIsFirst()Z
    .registers 3

    .prologue
    .line 1110
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

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

.method public hasNoData()Z
    .registers 3

    .prologue
    .line 1131
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1019
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFetchStage(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1089
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1091
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->newBuilder(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 1097
    :goto_1f
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1098
    return-object p0

    .line 1094
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

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
    .line 932
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 932
    check-cast p1, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

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
    .line 932
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1027
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1028
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 1033
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1035
    :sswitch_d
    return-object p0

    .line 1040
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    move-result-object v0

    .line 1041
    .local v0, subBuilder:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->hasFetchStage()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1042
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->getFetchStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;

    .line 1044
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1045
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->buildPartial()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->setFetchStage(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    goto :goto_0

    .line 1049
    .end local v0           #subBuilder:Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;
    :sswitch_2a
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1050
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->isFirst_:Z

    goto :goto_0

    .line 1054
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->noData_:Z

    goto :goto_0

    .line 1028
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_2a
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1005
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1015
    :cond_6
    :goto_6
    return-object p0

    .line 1006
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->hasFetchStage()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1007
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getFetchStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFetchStage(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    .line 1009
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->hasIsFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1010
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getIsFirst()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->setIsFirst(Z)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    .line 1012
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->hasNoData()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1013
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getNoData()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->setNoData(Z)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    goto :goto_6
.end method

.method public setFetchStage(Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1083
    invoke-virtual {p1}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage$Builder;->build()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 1085
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1086
    return-object p0
.end method

.method public setFetchStage(Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1073
    if-nez p1, :cond_8

    .line 1074
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1076
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 1078
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1079
    return-object p0
.end method

.method public setIsFirst(Z)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1116
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1117
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->isFirst_:Z

    .line 1119
    return-object p0
.end method

.method public setNoData(Z)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1137
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->bitField0_:I

    .line 1138
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->noData_:Z

    .line 1140
    return-object p0
.end method
